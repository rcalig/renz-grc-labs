# Week 2 – Lessons Learned

## ✅ What I Did
- [ ] Created a new folder `controls-mapping/` in my repo.  
- [ ] Added my first mapping file `iso27001-to-nistcsf.json`.  
- [ ] Populated JSON with sample mappings (ISO 27001 → NIST CSF → CI/CD stage relevance).  
- [ ] Explored GitLab **Security Dashboard** to see where scan results appear.  
- [ ] Documented how CI/CD stages (build → test → security → deploy) can act as natural control gates.  

---

## 💡 Key Learnings
1. **Framework Mapping**  
   - Learned how to align ISO 27001:2022 controls with NIST CSF categories.  
   - Realized that structured formats (JSON/YAML) make mappings reusable and scriptable.  

2. **CI/CD Stage Relevance**  
   - Controls aren’t abstract — they can map directly to **GitLab stages**.  
   - Example: ISO 27001 A.12.6 → NIST CSF PR.IP-12 → GitLab Security stage (SAST/DAST scans).  

3. **Evidence in GitLab**  
   - Vulnerability scan results already live in GitLab’s **Security Dashboard**.  
   - This means evidence collection can be automated — no need to ask dev teams for manual reports.  

---

## 📸 Evidence Collected
- Screenshot of GitHub repo with `controls-mapping/iso27001-to-nistcsf.json`.  
- Snippet of JSON mapping (3–5 sample controls).  
- Screenshot of GitLab Security Dashboard page.  

---

## 🤔 Reflections
- At first, I thought framework mapping was just paperwork. But now I see it’s the bridge between **compliance requirements** and **pipeline evidence**.  
- I also learned that **GitLab already does a lot of the heavy lifting** (scans, logs, approvals). My role as GRC is to recognise and use that evidence.  
- JSON felt a bit technical, but it’s much easier than expected — just structured key/value pairs.  

---

## 🎯 Next Week’s Focus
- Deep dive into **Git workflows** and how approvals/protected branches map to controls.  
- Add new folder `week3/` with notes on Merge Request approvals as governance.  
- Practice linking control requirements to **review and approval checkpoints** in GitHub/GitLab.  
