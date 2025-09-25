# Week 6 – Lessons Learned

## ✅ What I Did
- Created a Kubernetes deployment manifest (`k8s/deployment.yaml`) with intentional misconfigurations:
  - Used `nginx:latest` (floating tag).
  - Enabled `privileged: true`.
- Wrote an OPA Rego policy (`opa-policies/deny-k8s.rego`) to detect these bad practices.
- Ran the policy directly with `opa eval` to evaluate the YAML file.
- Confirmed that the policy **denied** the unsafe manifest, then re-tested after fixing the manifest (pinned version, disabled privilege) to see it **pass**.
- Dealt with repeated syntax issues using Conftest (parser mismatches), then reset and simplified by using **OPA CLI only** for stability.

---

## 💡 Key Learnings
1. **OPA CLI vs Conftest Differences**
   - The standalone OPA CLI worked reliably with v1.8.0 syntax.
   - Conftest introduced parser conflicts depending on bundled OPA versions, which wasted time.
   - In real projects, always check tool versions when policies won’t load.

2. **Rego Policy Basics**
   - Policies are written under `package`.
   - Rules like `deny[msg] { … }` return arrays of failure messages.
   - Functions like `endswith()` and `sprintf()` help create readable outputs for auditors.

3. **Practical Compliance Check**
   - Automating a rule like “no `:latest` tag” or “no privileged containers” provides tangible control enforcement.
   - Instead of asking engineers for screenshots or evidence, I can point to automated checks.

4. **Troubleshooting Matters**
   - Documenting the Conftest issue was itself valuable — it shows I can adapt when tools don’t behave as expected.

---

## 📸 Evidence Collected
- Terminal screenshot of `opa eval` denying the insecure manifest.
- Terminal screenshot of successful re-test after fixing the YAML.
- Commit history in GitHub showing new `opa-policies/` and `k8s/` folders.

---

## 🤔 Reflections
- Resetting to OPA CLI gave me confidence — I now understand how to test policies without relying on extra wrappers.
- Real-world compliance automation is not just about writing rules, but about managing tool versions and dependencies.
- This week reinforced the mindset of “don’t block, enable”: automation makes checks faster, clearer, and more credible.

---

## 🎯 Next Week’s Focus
- Week 7 will bring policies into **GitLab CI/CD pipelines** to automate checks during Merge Requests.
- Expand Kubernetes policies to cover:
  - `runAsNonRoot` must be set to true.
  - Containers must have explicit resource limits.
- Start mapping policies to **ISO 27001:2022 Annex A** and **NIST CSF v2.0** for governance reporting.
