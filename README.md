# concourse-demo-deploy-trigger
Deployments to preprod and prod require manual approval. This repository is used to trigger deployments to preprod and prod.

Triggering a preprod release
```bash
./release.sh preprod
git push origin master
```

Triggering a prod release
```bash
./release.sh prod
git push origin master
```