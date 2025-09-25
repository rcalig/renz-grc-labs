# Week 4 – Lessons Learned

## ✅ What I Did
- Created a new folder: `policy-as-code-examples/`.  
- Added three IAM policies in JSON format:  
  1. **iam-policy-mfa.json** → Enforces MFA for role assumption.  
  2. **iam-policy-deny-public-s3.json** → Prevents making S3 buckets public.  
  3. **iam-policy-restrict-admin.json** → Restricts unrestricted admin access.  
- Connected these policies to GitLab CI/CD concepts (where they would be validated, tested, and deployed).  

---

## 💡 Key Learnings
1. **Policy as Code Basics**  
   - Traditional policies are written in Word/PDF; Policy as Code is machine-readable (JSON/YAML).  
   - JSON structure is easy to understand: version → statement → effect → action → resource → condition.  

2. **IAM Policies as Compliance Controls**  
   - MFA enforcement → aligns with ISO 27001 A.5.15 (Access Control).  
   - Denying public S3 → aligns with ISO 27001 A.8.3 (Access Control Management).  
   - Restricting admin privileges → aligns with ISO 27001 A.8.9 (Configuration Management).  

3. **CI/CD Stage Relevance**  
   - **Build** → Infrastructure created with policies attached.  
   - **Test** → Policies validated for syntax (e.g., using `jq`).  
   - **Security** → Policies scanned for risky configurations (e.g., OPA/Conftest).  
   - **Deploy** → Only approved MRs can deploy policies to production.  

4. **Evidence in GitLab**  
   - Logs from pipeline runs show policies were validated.  
   - Merge Request approvals provide a clear audit trail.  
   - Security stage reports prove no misconfigurations reached production.  

---

## 📸 Evidence Collected
- Screenshot: GitHub repo with `policy-as-code-examples/` folder.  
- Screenshot: Each JSON policy file opened in GitHub.  
- Screenshot (optional): GitLab pipeline showing where a policy validation job could run.  

---

## 🤔 Reflections
- Writing JSON was easier than expected — it’s structured like building blocks.  
- I now see how **Policy as Code is both technical and compliance evidence**.  
- The real power comes when these policies are checked in pipelines: I don’t have to “ask for evidence,” it’s generated automatically.  
- This is a big step in shifting from GRC as “checklist enforcer” → GRC as “automation designer.”  

---

## 🎯 Next Week’s Focus
- Week 5 will focus on **OPA (Open Policy Agent) and Rego basics**.  
- Create a simple Rego rule to deny non-compliant resources.  
- Document how Rego policies could be run inside GitLab CI/CD as part of the Security stage.  
