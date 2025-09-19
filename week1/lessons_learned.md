# Week 1 – Lessons Learned

## ✅ What I Did
- Created my GitHub portfolio repository: **renz-grc-labs**.  
- Added a **README.md** with my roadmap and goals.  
- Created my first GRC artifact: **Information Security Policy** under `policies/`.  
- Set up a **GitHub Project Board** to track weekly tasks.  
- Signed up for GitLab and ran my **first hello-world CI/CD pipeline** using the Pipeline Editor.  
- Collected screenshots of the pipeline run and artifacts as evidence.  

---

## 💡 Key Learnings
1. **GitHub Basics**  
   - I now understand how to create repos, add folders, commit files, and structure content.  
   - Markdown is simple but powerful — I can format policies and roadmaps cleanly.  

2. **GitHub as a Portfolio**  
   - A public repo acts as a living portfolio, not just code storage.  
   - Even simple artifacts (policy docs, roadmap) already demonstrate value.  

3. **GitLab CI/CD Exposure**  
   - Pipelines are built around **stages** (build → test → deploy). These stages are natural **control gates** for GRC.  
   - Evidence (logs, artifacts, scan results) is already generated inside GitLab — no need to request manual reports later.  
   - Merge Requests and approvals connect directly to governance concepts (segregation of duties, peer review, etc.).  

4. **Bridging GRC and Engineering**  
   - I don’t need to *write* complex YAML files, but I do need to understand where controls and evidence fit into the CI/CD flow.  
   - This positions GRC as an enabler, not a blocker.  

---

## 📸 Evidence Collected
- Screenshot: GitHub repo with README and `policies/` folder.  
- Screenshot: GitHub Project Board with “Backlog / In Progress / Done.”  
- Screenshot: GitLab pipeline run showing job success and log output.  

---

## 🤔 Reflections
- At first, GitHub felt intimidating, but adding files via the web UI is straightforward.  
- GitLab pipelines initially looked “too technical,” but seeing the simple hello-world job gave me confidence that I can map controls without coding.  
- I can already see how this journey will build credibility: engineers will know I understand *where* things happen, even if I’m not the one configuring them.  

---

## 🎯 Next Week’s Focus
- Begin mapping ISO 27001:2022 controls against NIST CSF v2.0.  
- Identify which GitLab CI/CD stages can naturally generate evidence for these controls.  
- Add a `controls-mapping/` folder in GitHub for my first JSON/YAML mapping file.
