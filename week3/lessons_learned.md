# Week 3 – Lessons Learned

## ✅ What I Did
- Created a new branch (`feature/update-policy`) to simulate working on a change separate from `main`.  
- Updated the **Information Security Policy** file with a new requirement (annual security awareness training).  
- Opened a **Pull Request (GitHub)** / **Merge Request (GitLab)** to merge changes back into `main`.  
- Configured **protected branch rules** so that `main` cannot be updated directly.  
- Set up **approval requirements** (at least 1 reviewer) before changes can be merged.  

---

## 💡 Key Learnings
1. **Branching & Isolation**  
   - Branching allows safe experimentation without risking production systems.  
   - From a GRC lens, this reduces risk by ensuring unapproved work doesn’t impact critical systems.  

2. **Pull/Merge Requests = Change Requests**  
   - A PR/MR is essentially a digital “change request” that documents *who made a change, why, and what was changed*.  
   - These requests automatically generate an audit trail (who opened, who reviewed, who approved).  

3. **Approvals = Segregation of Duties**  
   - Approval rules prevent developers from approving their own work.  
   - This enforces **segregation of duties**, which is a core GRC principle.  

4. **Protected Branches = Formal Change Control**  
   - Protected branches ensure no one can bypass controls by pushing directly to production.  
   - This maps closely to ISO 27001:2022 **A.8.32 Change Management** and NIST CSF **PR.IP-11 Change Control**.  

---

## 📸 Evidence Collected
- Screenshot: Branch dropdown showing `feature/update-policy`.  
- Screenshot: Pull Request (PR) or Merge Request (MR) waiting for approval.  
- Screenshot: GitHub/GitLab settings showing protected branch rules.  
- Screenshot: Approval rules requiring at least 1 reviewer.  

---

## 🤔 Reflections
- I used to think branching and approvals were just “developer hygiene.” Now I see they are **compliance controls in disguise**.  
- The nice part is that developers already follow this process. As GRC, I don’t need to “add” new controls — I just align compliance requirements with workflows already in place.  
- This is where GRC becomes an enabler: embedding governance into the workflow instead of slowing it down.  

---

## 🎯 Next Week’s Focus
- Begin experimenting with **Policy as Code** by writing simple IAM JSON examples.  
- Start documenting how these policies could fit into **GitLab CI/CD stages**.  
- Create a `policy-as-code-examples/` folder in my repo for Week 4 labs.  
