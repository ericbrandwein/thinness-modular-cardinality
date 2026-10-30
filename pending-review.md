# Pending items from the full-paper pass

Line numbers refer to `main.tex` as of 2026-10-30. Lemma/theorem numbers are the compiled ones.

## Real gaps

1. [DONE] **Lemma 32 (⇒), application of Lemma 29** (L1452). Lemma 29 needs u′ to belong to an irreducible clique of G[H]_<, but u′ is only "some vertex of H₂ in u's class". Fix: take an irreducible clique of G[H₂]_< of size 2 (Lemma 27). Its two vertices lie in different classes, so one of them is in u's class. Call that one u′.
2. [DONE] **Theorem 37, choice of p** (L1539). The hypothesis only gives 𝗉(G) ≤ max{|V(G)|, |E(G)|}, but the proof sets p = maxᵢ|V(Gᵢ)| for Thinness and p = maxᵢ|E(Gᵢ)| for SI. Neither is guaranteed to bound 𝗉(G′). Use p = maxᵢ(|V(Gᵢ)| + |E(Gᵢ)|) in both cases.
   - The fact that a disjoint union of graphs has a d-simultaneous interval representation iff each graph does is credited to Lemma 5 (thinness of the union), which only covers thinness. The same problem appears at L1526 ("as Lemma 5 shows"). It is easy (place the representations side by side) but needs its own sentence.
3. [DONE] **Theorem 4, running-time paragraph** (L657). "complete (i.e., a *parallel* node whose children are leaves)" should say *series*.
4. **Lemma 3, missing case** (L594). The case analysis leaves out u, v, w ∈ H. It is trivial (consistent by <_H with H in a single class), but the list claims to be exhaustive.
5. **Fig. 1 caption** (L335). Nothing shows that si does not generalize the 𝗂𝗇𝗍𝖾𝗋𝗏𝖺𝗅-mc: paths have 𝗂𝗇𝗍𝖾𝗋𝗏𝖺𝗅-mc 1. Suggestion: cycles Cₙ (n ≥ 5) are prime and not interval, so their 𝗂𝗇𝗍𝖾𝗋𝗏𝖺𝗅-mc is n, while si(Cₙ) ≤ 2. The caption should also say that paths have unbounded neighborhood diversity, which is what makes si incomparable with neighborhood diversity.

## Minor gaps and imprecisions

- **Lemma 17, second direction** (L867). H's vertices get A's label set. If H has no neighbors outside H and A's label set is empty, the edges inside H are lost. Theorem 19 is unaffected (there H is independent), but the lemma as stated has the hole. Fix: in that case place H's representation in a fresh region with label 1.
- **Lemma 15** (L845). The proof only shows si(G) ≤ si(G|_H). Add one sentence for the other direction: G|_H is an induced subgraph of G.
- **Lemma 18** (L870). It is introduced as "a corollary of Lemma 15", but the proof doesn't use Lemma 15.
- **Theorem 7, prime case** (L731, L735).
  - "O(n²)" understates the naive cost, which can be O(n(n+m)); "superlinear" is safer.
  - The linear-time argument only bounds the vertices of G′ₜ. Mention that the total size of the quotient graphs is O(n+m), so the edges are covered too.
- **Theorem 8** (L748–752). t′ = t is unbounded. If t ≥ 2k, output a trivial yes-instance so the kernel size really is bounded by k.
- **Reference to the wrong lemma** (L1294). "These statements will be proved in Lemma 33 and Lemma 31": the second should be Lemma 32 (`prop:when-replacing-maintains-thinness`).
- **Fig. 5 caption** (L1261). It says thin(G) = 3, but only thin(G) ≥ 3 is proved. Either prove the upper bound or write "thin(G) ≥ 3".
- **Theorem 22** (L1245–1247).
  - The proof doesn't argue that the cuts C₁, C₂, C₃ are distinct. If two coincided, that cut would have mim 2n > n, so this is easy to add.
  - The n+1 upper bound for the given layout is stated without justification.
  - "Modular-width 7" (L1080) holds only for n ≥ 1, since H₀ has modular-width 2.
- **Lemma 32 (⇐)** (L1444). Say explicitly that Lemma 31's hypothesis holds trivially because H′ is consecutive.

## Typos and wording

- L966: B_i ≔ {v_{n+1}, …, v_n} → v_{i+1}.
- L1245: "a linear layout of lmimw(H_{n+1})" → "a linear layout of H_{n+1}".
- L1418: "betwee" → "between"; also "G ∖ H" → "G ∖ M".
- L1444: "this gives us the left statement" is unclear; e.g. "this shows thin(G) = 2".
- L1452: "u <′ u′" → "u < u′" (this proof works in Γ = (<, S)).
- L1478: "hypotesis" → "hypothesis".
- L1484: "it belongs to a different class from w₂" → "from w₃".
- L357: "A cluster is a union of cliques" → "a disjoint union of cliques".
- L346: "we moved this section to the appendix" reads like a reply to the reviewer. The organization paragraph also never mentions Appendix D.
- L339 / L620: the footnote citing the arXiv full version appears twice.
- L1533: `\textsf{NP}` / `\textsf{coNP}` instead of the `\NP` / `\coNP` macros.
