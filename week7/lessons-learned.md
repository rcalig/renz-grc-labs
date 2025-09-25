# Week 7 – Lessons Learned

## ✅ What I Did
- Created a GitLab CI/CD pipeline (`.gitlab-ci.yml`) to automatically run OPA Conftest checks on Kubernetes manifests.
- Configured the pipeline with:
  - **Push triggers** → pipelines run on every branch push.
  - **Merge Request triggers** → pipelines run during reviews, creating audit trails.
  - **Manual trigger** → fallback option via GitLab UI.
- Overcame multiple issues:
  - Switched Conftest Docker image from `ghcr.io` to Docker Hub (`instrumenta/conftest:latest`) due to registry access errors.
  - Fixed the **entrypoint problem** by overriding the container’s default to allow shell commands in the job.
- Ran the pipeline on an insecure manifest (`nginx:latest`, `privileged: true`) → pipeline **failed** as expected.
- Fixed the YAML (`nginx:1.25.3`, `privileged: false`) → pipeline **passed** successfully.
- Verified evidence in GitLab:
  - **Pipeline logs** showing Conftest deny messages.
  - **Artifacts (`conftest-result.txt`)** stored for download.
  - **Merge Request status** confirming pipeline pass/fail history.

---

## 💡 Key Learnings
1. **Pipeline Automation = Real Control Point**  
   Policies now run inside GitLab pipelines, meaning non-compliant code can’t merge without being fixed.
   
2. **Container Entrypoints Matter**  
   Learned how Docker image defaults (`ENTRYPOINT`) can affect CI jobs — overriding them is critical when you want full shell flexibility.

3. **Registry Choices Affect Reliability**  
   Docker Hub images (`instrumenta/conftest`) were easier for GitLab SaaS runners to use compared to GitHub Container Registry (`ghcr.io`).

4. **Evidence is Built-In**  
   Instead of screenshots or manual reports, GitLab produces downloadable artifacts and MR histories automatically — perfect for auditors.

5. **Troubleshooting is Part of the Skillset**  
   Each pipeline error (auth, entrypoint, runner config) was a real-world lesson in working across CI/CD, security tooling, and DevOps environments.

---

## 📸 Evidence Collected
- Screenshot: GitLab **branch dropdown** showing `week7-pipeline`.
- Screenshot: **Pipeline failed** with Conftest deny messages.
- Screenshot: **Pipeline passed** after YAML fix.
- Screenshot: **Artifact (`conftest-result.txt`)** available in job logs.

---

## 🤔 Reflections
- Running policies in CI/CD changes security from an afterthought into an integrated step in software delivery.  
- The process reinforced that a GRC engineer doesn’t just “write policies” — they need to know where those policies live in DevOps pipelines.  
- I now understand how GitLab’s jobs, runners, and artifacts can all serve as compliance evidence — speeding up audits and making GRC less of a blocker.

---

## 🎯 Next Week’s Focus
- Extend GitLab CI/CD pipeline to scan **multiple files** (`k8s/*.yaml` instead of one).  
- Add **Terraform policy checks** for infrastructure-as-code.  
- Start connecting policies to **ISO 27001 Annex A** and **NIST CSF v2.0** controls for governance mapping.  
- Explore using GitHub Actions for cross-platform comparison.
