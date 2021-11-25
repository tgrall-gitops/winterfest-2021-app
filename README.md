# Wintefest 2021 - GitOps Demo - Web App


This project contains the application code a `node.js` with a SVG image.

Once the product team is ready to deploy the application, the team:

- Create a Release with a tag (format v[x.y.z])
- This starts a GitHub Actions workflow that will:
   - Build and Publish an image in [GitHub Container Registry](https://github.com/tgrall-gitops/winterfest-2021-app/blob/main/.github/workflows/new-release.yml#L25-L36)
   - [Launch a workflow](https://github.com/tgrall-gitops/winterfest-2021-app/blob/main/.github/workflows/new-release.yml#L47-L54) in the [Environment Repository](https://github.com/tgrall-gitops/winterfest-2021-env) to [Create a Pull Request](https://github.com/tgrall-gitops/winterfest-2021-env/blob/main/.github/workflows/new-app-release.yml).


Demo flow:

1. Modify the code and change the SVG file
2. Merge all the changes in `main`
3. Create a new Release
 

The Kubernetes used in this demonstration is an Azure Kubernetes Services (AKS) Cluster and the [GitHub Actions are using OpenID Connect to authenticate with Azure](https://github.com/tgrall-gitops/winterfest-2021-env/blob/main/.github/workflows/deploy-to-kube.yml#L31-L36). [Documentation](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/about-security-hardening-with-openid-connect)
