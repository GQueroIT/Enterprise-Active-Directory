# Step 17 — Security GPO Log

## Commands Used

gpupdate /force  
net accounts  

## Observations

- Initial policy did not apply due to GPO precedence
- After adjusting link order, policies applied successfully

## Result

Security baseline policies are now active and enforced at the domain level.