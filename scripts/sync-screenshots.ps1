param(
  # Step number like 4 or 04. This will create screenshots\step-04\
  [Parameter(Mandatory=$true)]
  [ValidatePattern('^\d{1,2}$')]
  [string]$Step,

  # Optional commit message. If omitted, a default message is created.
  [string]$Message,

  # Source folder where screenshots land (default: your OneDrive evidence folder)
  [string]$Source = "C:\Users\gquer\OneDrive\Pictures\Screenshots\Active Directory Lab Evidence 3.1.26",

  # Root screenshots folder inside the repo
  [string]$ScreenshotsRoot = "screenshots",

  # If true, do not move files; copy instead (useful if you want to keep originals in OneDrive)
  [switch]$Copy
)

$ErrorActionPreference = "Stop"

function Fail($msg) {
  Write-Host "ERROR: $msg" -ForegroundColor Red
  exit 1
}

# Ensure Git is available
try { git --version | Out-Null } catch { Fail "Git not available in PATH. Install Git for Windows first." }

# Detect repo root based on where THIS script lives
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

try {
  $repoRoot = (git -C $scriptDir rev-parse --show-toplevel).Trim()
} catch {
  Fail "Could not detect a Git repo root from script location: $scriptDir. Ensure this script is inside a Git repository."
}

if (!(Test-Path $Source)) { Fail "Source folder not found: $Source" }

# Format step folder as step-04, step-10, etc.
$stepNum = [int]$Step
if ($stepNum -lt 1 -or $stepNum -gt 99) { Fail "Step must be between 1 and 99." }

$stepFolderName = ("step-{0:D2}" -f $stepNum)

# Destination folder: <repoRoot>\screenshots\step-XX\
$destRelative = Join-Path $ScreenshotsRoot $stepFolderName
$destFull = Join-Path $repoRoot $destRelative

if (!(Test-Path $destFull)) {
  New-Item -ItemType Directory -Path $destFull | Out-Null
}

# Gather image files
$patterns = @("*.png", "*.jpg", "*.jpeg")
$files = @()
foreach ($p in $patterns) {
  $files += Get-ChildItem -Path $Source -Filter $p -File -ErrorAction SilentlyContinue
}

Write-Host "Repo detected: $repoRoot" -ForegroundColor Cyan
Write-Host "Step folder: $destRelative" -ForegroundColor Cyan
Write-Host "Found $($files.Count) screenshot(s) in source: $Source" -ForegroundColor Cyan

# Move/copy screenshots into step folder
if ($files.Count -gt 0) {
  foreach ($f in $files) {
    if ($Copy) {
      Copy-Item -Path $f.FullName -Destination $destFull -Force
    } else {
      Move-Item -Path $f.FullName -Destination $destFull -Force
    }
  }
  if ($Copy) {
    Write-Host "Copied screenshots to: $destFull" -ForegroundColor Green
  } else {
    Write-Host "Moved screenshots to: $destFull" -ForegroundColor Green
  }
} else {
  Write-Host "No new screenshots to move/copy. Continuing with git steps..." -ForegroundColor Yellow
}

# Default commit message if not supplied
if ([string]::IsNullOrWhiteSpace($Message)) {
  $Message = "Add screenshots for Step $($stepNum)"
}

# Git steps
Set-Location $repoRoot

# Stage only the step folder we wrote into
git add $destRelative

# Exit if nothing changed
$porcelain = git status --porcelain
if (-not $porcelain) {
  Write-Host "Nothing to commit. Repo is clean." -ForegroundColor Yellow
  exit 0
}

git commit -m $Message
git push

Write-Host "Done. Synced screenshots to $destRelative + committed + pushed." -ForegroundColor Green