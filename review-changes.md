Changes after the review:

1. Added two flags to the bottom-up algorithm in Theorem 7: one that indicates if the subgraph is an interval graph, and another that indicates if it is a complete graph.
2. Added Appendix D, which shows that the bound of Lemma 12 is tight, even when comparing vertex cover number and interval-modular cardinality.
3. Changed to open intervals everywhere.
4. Cleaned up the proof of Lemma 17.
5. Clarified the text, and fixed Lemma 31 so that it implies what we want on Lemma 32. Also added a figure of the construction.

Smaller changes:
- On Lemma 32, we changed the names of the cycles of H to H_1 and H_2.

We detected some additional errors and fixed them:
- On Figure 1, a comparison between interval-modular cardinality and simultaneous interval number was missing.
- On Theorem 4, we talked about a complete subgraph being a parallel node instead of a series node.
- On Theorem 7, the bound O(n^2) understated the time complexity of the naive algorithm.
- On Lemma 17, there was an edge case when the intervals of A had no labels.  
- On Theorem 37, the choice of p for Thinness and Simultaneous Interval Number could in principle be greater than the parameter p.

Finally, we corrected all the mistakes and applied the wise suggestions that the reviewer proposed.
