# Week 5 – Lessons Learned

## ✅ What I Did
- Created a new folder `opa-policies/` to hold my Open Policy Agent (OPA) policies.  
- Wrote my first Rego policy `deny-public-s3.rego` to block public S3 buckets.  
- Added a test input file `test-input.json` to simulate a misconfigured bucket.  
- Ran OPA locally using `opa eval` to evaluate the policy against the input.  
- Extended learning with another Rego policy `deny-wildcard-action.rego` to detect dangerous IAM policies that use `Action: "*"`.  
- Successfully pushed all policies and test files to GitHub after resolving Git authentication issues (migrated to Personal Access Token).  

---

## 💡 Key Learnings
1. **OPA as a Compliance Engine**  
   - OPA acts like an automated auditor: it checks JSON inputs (configs, IAM policies, etc.) against written Rego rules.  
   - Policies are modular and reusable — I can start small and expand as compliance needs grow.  

2. **Rego Syntax Basics**  
   - Policies are written in `package` blocks and rules like `deny[msg]`.  
   - Rules return arrays of messages when conditions are met.  
   - Input data must match the expected structure (e.g., `input.public`).  

3. **OPA + GitLab CI/CD**  
   - In a pipeline, Rego policies can run in the **Test** or **Security** stage.  
   - Example: deny a merge if a Terraform plan contains public buckets.  
   - Pipeline logs + Merge Request approvals = strong compliance evidence.  

4. **GitHub/Git Basics**  
   - Learned to add, commit, and push local files to GitHub.  
   - Configured a Personal Access Token (PAT) because GitHub no longer accepts password auth.  
   - Understood how to handle “fetch first” errors with `git pull --rebase`.  

---

## 📸 Evidence Collected
- Screenshot of `opa-policies/` folder in GitHub with `.rego` and `.json` files.  
- Terminal screenshot of `opa eval` showing a denial message.  
- Screenshot of Git push success after PAT setup.  

---

## 🤔 Reflections
- Writing Rego felt intimidating at first, but breaking it down into conditions + messages made it simple.  
- The “aha” moment: **compliance checks don’t need to be manual** — they can be coded once and reused automatically.  
- The GitHub/Git hiccups (auth + sync) taught me practical version control skills I’ll need as a GRC engineer.  
- Week 5 showed me how governance can shift from *asking for evidence* → to *designing automated checks*.  

---

## 🎯 Next Week’s Focus
- Week 6 will focus on expanding OPA policies to cover more IAM and cloud misconfiguration scenarios.  
- Introduce **Conftest** as a tool to run Rego policies against configuration files in GitLab pipelines.  
- Document how multiple OPA policies can be bundled and executed in a single pipeline run.  
