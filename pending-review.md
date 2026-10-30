# Pending items from the full-paper pass

Line numbers refer to `main.tex` as of 2026-10-30. Lemma/theorem numbers are the compiled ones.

## Real gaps

1. [DONE] **Lemma 32 (⇒), application of Lemma 29** (L1452). Lemma 29 needs u′ to belong to an irreducible clique of G[H]_<, but u′ is only "some vertex of H₂ in u's class". Fix: take an irreducible clique of G[H₂]_< of size 2 (Lemma 27). Its two vertices lie in different classes, so one of them is in u's class. Call that one u′.
2. [DONE] **Theorem 37, choice of p** (L1539). The hypothesis only gives 𝗉(G) ≤ max{|V(G)|, |E(G)|}, but the proof sets p = maxᵢ|V(Gᵢ)| for Thinness and p = maxᵢ|E(Gᵢ)| for SI. Neither is guaranteed to bound 𝗉(G′). Use p = maxᵢ(|V(Gᵢ)| + |E(Gᵢ)|) in both cases.
   - The fact that a disjoint union of graphs has a d-simultaneous interval representation iff each graph does is credited to Lemma 5 (thinness of the union), which only covers thinness. The same problem appears at L1526 ("as Lemma 5 shows"). It is easy (place the representations side by side) but needs its own sentence.
3. [DONE] **Theorem 4, running-time paragraph** (L657). "complete (i.e., a *parallel* node whose children are leaves)" should say *series*.
4. [IGNORED] **Lemma 3, missing case** (L594). The case analysis leaves out u, v, w ∈ H. It is trivial (consistent by <_H with H in a single class), but the list claims to be exhaustive.
5. [DONE] **Fig. 1 caption** (L335). Nothing shows that si does not generalize the 𝗂𝗇𝗍𝖾𝗋𝗏𝖺𝗅-mc: paths have 𝗂𝗇𝗍𝖾𝗋𝗏𝖺𝗅-mc 1. Suggestion: cycles Cₙ (n ≥ 5) are prime and not interval, so their 𝗂𝗇𝗍𝖾𝗋𝗏𝖺𝗅-mc is n, while si(Cₙ) ≤ 2. The caption should also say that paths have unbounded neighborhood diversity, which is what makes si incomparable with neighborhood diversity.

## Minor gaps and imprecisions

- [DONE] **Lemma 17, second direction** (L867). H's vertices get A's label set. If H has no neighbors outside H and A's label set is empty, the edges inside H are lost. Theorem 19 is unaffected (there H is independent), but the lemma as stated has the hole. Fix: in that case place H's representation in a fresh region with label 1.
- [IGNORED] **Lemma 15** (L845). The proof only shows si(G) ≤ si(G|_H). Add one sentence for the other direction: G|_H is an induced subgraph of G.
- [IGNORED] **Lemma 18** (L870). It is introduced as "a corollary of Lemma 15", but the proof doesn't use Lemma 15.
- **Theorem 7, prime case** (L731, L735).
  - [DONE] "O(n²)" understates the naive cost, which can be O(n(n+m)); "superlinear" is safer.
  - [IGNORED] The linear-time argument only bounds the vertices of G′ₜ. Mention that the total size of the quotient graphs is O(n+m), so the edges are covered too.
- [IGNORED] **Theorem 8** (L748–752). t′ = t is unbounded. If t ≥ 2k, output a trivial yes-instance so the kernel size really is bounded by k.
- [IGNORED] **Reference to the wrong lemma** (L1294). "These statements will be proved in Lemma 33 and Lemma 31": the second should be Lemma 32 (`prop:when-replacing-maintains-thinness`).
- [IGNORED] **Fig. 5 caption** (L1261). It says thin(G) = 3, but only thin(G) ≥ 3 is proved. Either prove the upper bound or write "thin(G) ≥ 3".
- **Theorem 22** (L1245–1247).
  - [Already justified] The proof doesn't argue that the cuts C₁, C₂, C₃ are distinct. If two coincided, that cut would have mim 2n > n, so this is easy to add.
  - [IGNORED] The n+1 upper bound for the given layout is stated without justification.
  - [DONE] "Modular-width 7" (L1080) holds only for n ≥ 1, since H₀ has modular-width 2.
- [IGNORED] **Lemma 32 (⇐)** (L1444). Say explicitly that Lemma 31's hypothesis holds trivially because H′ is consecutive.

## Typos and wording

- [DONE] L966: B_i ≔ {v_{n+1}, …, v_n} → v_{i+1}.
- [DONE] L1245: "a linear layout of lmimw(H_{n+1})" → "a linear layout of H_{n+1}".
- [DONE] L1418: "betwee" → "between"; also "G ∖ H" → "G ∖ M".
- [DONE] L1444: "this gives us the left statement" is unclear; e.g. "this shows thin(G) = 2".
- [DONE] L1452: "u <′ u′" → "u < u′" (this proof works in Γ = (<, S)).
- [DONE] L1478: "hypotesis" → "hypothesis".
- [DONE] L1484: "it belongs to a different class from w₂" → "from w₃".
- [DONE] L357: "A cluster is a union of cliques" → "a disjoint union of cliques".
- [DONE] L346: "we moved this section to the appendix" reads like a reply to the reviewer. The organization paragraph also never mentions Appendix D.
- [DONE] L339 / L620: the footnote citing the arXiv full version appears twice.
- [IGNORED] L1533: `\textsf{NP}` / `\textsf{coNP}` instead of the `\NP` / `\coNP` macros.

# Section-by-section pass

## Section 5 (Parameterizations for computing the thinness)

- [DONE] **"Linear kernel" vs. the definition of kernel size.** Section 2 defines the size of a kernel as a bound on |x′|, and G′ can have ~2k² edges, so under that definition the kernel is quadratic. Replaced with "a kernel with at most 2k vertices" in the abstract, the introduction, Theorem 8, Theorem 11 and Table 1 (cells now read "2k-vertex kernel"; caption explains k). Also Theorem 13's proof: "kernel of size O(2^k)" → "kernel with O(2^k) vertices".
- [IGNORED] **Theorem 8, k′ ≔ k** (L753). For (G′, t, k) to be a valid instance one needs 𝗂𝗇𝗍𝖾𝗋𝗏𝖺𝗅-mc(G′) ≤ k. Immediate (the images of the parts of P form an 𝗂𝗇𝗍𝖾𝗋𝗏𝖺𝗅-modular partition of G′), but not said.
- [IGNORED] **"Contract … into two nonadjacent vertices"** (L751, and Theorem 7 at L733). Section 2 defines contraction as replacing a module by a *single* vertex; Lemma 3 deletes all but two nonadjacent vertices. Say "remove all but two nonadjacent vertices of every other part".
- [IGNORED] **"Neighborhood partition of width k"** (L764, L774). "Width" is never defined; "with k parts".
- [DONE] **L742:** "twin-cover, and vertex cover" → "twin-cover number, and vertex cover number".
- [DONE] **Lemma 12** (L796–798). Some of P₁, …, P_{2ᵏ} may be empty, so the partition has *at most* 2ᵏ + k parts; say so or discard empty parts.
- [IGNORED] **L820:** "the kernel presented above is not polynomial" → "is exponential in k". Could mention that Appendix D shows this approach cannot do better.

## Section 6 (Parameterizations for computing the simultaneous interval number)

- **Lemma 17 is false for d = 0** (L863). Take G = P₃ and H = V(G) (or G = P₃ + K₁ and H the P₃). G′ = 2K₁ has a 0-representation with v, w disjoint, but G needs d ≥ 1. The new "empty label set → use label {1}" sentence also needs label 1 to exist. Fix: state the lemma for d ≥ 1. Theorem 19 is unaffected (it assumes d ≥ 2).
- **Theorem 19 applies Lemmas 16 and 17 to several modules at once** (L895). Both lemmas are stated for a single module, while a constrained instance fixes a choice for every M′ᵢ simultaneously. Add one sentence: both constructions only change the intervals of the vertices of that module (Lemma 16 shrinks them; Lemma 17 places them inside A), so the constraints on the other modules are preserved and the lemmas can be applied one module at a time.
- **Corollary 20's proof** (L909) never says what happens when d is large. Add: if d ≥ max{1, k(k−1)/2 + k}, answer yes; otherwise d < f(k), so 𝖼𝗅𝗎𝗌𝗍𝖾𝗋-mc + d is bounded by a function of k.
- **Lemma 16's proof** (L855). "Thus its interval intersects (x, y)" needs one line: that interval meets the interval whose left endpoint is x, so its right endpoint is > x; similarly its left endpoint is < y.
- **Theorem 19, isolated cliques** (L891). "si(G) is the same after removing the isolated cliques" is false if the rest is edgeless and some isolated clique has an edge. Harmless because d ≥ 2 is assumed, but either state the d ≥ 2 assumption first or say "for d ≥ 1, G admits a d-representation iff …".
- **Theorem 19, uses of "no isolated cliques"** (L893–895). Lemma 15 needs H to have neighbors outside H, and the "at least |M′ᵢ| labels" argument needs nonempty label sets. Both follow from having no isolated cliques; say so.
- [DONE] **Theorem 19, variable names** (L897). t is the thinness elsewhere in the paper; rename the number of intervals (e.g. r).
- **L836:** "I.e., Does" → "i.e., does".
- **L833:** "We prove here the bounds shown in Fig. 1" → only one relation is proved here (Lemma 18, si vs. twin-cover number).
- **L858:** "which in particular include the independent sets" → "independent sets of size at least 2".
- **L863:** "|H| ≥ 2" is redundant given that G[H] is not complete.
