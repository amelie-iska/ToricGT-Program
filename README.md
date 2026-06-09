# ToricGT Research Program

This repository collects the five papers of the ToricGT program as one coherent research arc: a mathematically constrained approach to training reasoning agents with graph-token transformers, toric geometry, combinatorial commutative algebra, persistent topology, structured memory, and behavior-oracle supervision. The unifying thesis is operational rather than decorative: algebraic and geometric objects should enter training only when they become finite, auditable, compressive signals that improve held-out bits-per-byte, reasoning accuracy, retrieval quality, controllability, or deployment efficiency.

## Core idea

ToricGT treats reasoning as a structured trajectory rather than a flat sequence. A problem instance is converted into a typed graph; nodes and edges become tokens; hidden states are organized by graph, simplicial, toric, sheaf-theoretic, and certificate coordinates; and each auxiliary structure is allowed into training only if it contributes measurable utility.

The program is governed by a simple contract:

\[
\text{promote auxiliary structure}
\quad\Longleftrightarrow\quad
\Delta \text{held-out bits-per-byte} > 0
\quad\text{or}\quad
\text{predeclared reasoning/control gain with no compression regression.}
\]

This contract keeps the mathematics disciplined. Toric geometry, BGG/Koszul certificates, persistence modules, model context protocol traces, markdown memories, knowledge graphs, and oracle trajectory labels are not intended to make the deployed model carry a symbolic algebra system. They are train-time and audit-time scaffolds. The final model should retain only distilled, quantized, byte-accounted components that survive ablation.

## The five papers

| Paper | Short title | Main object | Main contribution |
|---|---|---|---|
| I | **ToricGT with Toric BGG Supervision** | Graph-token reasoning trajectories | Introduces the ToricGT architecture: graph tokenization, tropical ring attention, noncommutative-torus phase channels, Soft-MoE routing, GraphCG concept axes, GFlowNet graph-of-thought search, retrieval memory, and finite BGG/Koszul/Tate/Euler-Koszul certificates. |
| II | **ToricGT II: Dynamical, Ergodic, and Derived Persistence Geometry** | Iterative reasoning steps | Recasts reasoning as a dynamical system on standardized packets carrying filtered simplicial complexes, multigraded persistence modules, derived objects, sheaves, vector bundles, differential forms, toric chart codes, and ergodic summaries. |
| III | **ToricGT III: Sheafified MCP Memory, Graph-Structured Vector Retrieval, and Long-Context Tropical Ring Attention** | External memory and context substrates | Extends the framework to model context protocols, markdown-style memory, knowledge graphs, graph-structured vector databases, learned projected retrieval heads, toric quantization, and 1--10M-token long-context iterative reasoning windows. |
| IV | **ToricGT IV: Oracle Trajectory Classifiers** | Behavior and quality classification | Trains an oracle head or full oracle transformer to classify partial and complete reasoning trajectories by accuracy, grounding, compliance, safety, tone, personality corridor, verbosity, efficiency, retrieval hygiene, memory hygiene, and graph-of-thought compositionality. |
| V | **Toric Algebraic Training Objectives for ToricGT** | Combinatorial commutative algebra as training infrastructure | Uses Part II, “Toric Algebra,” of Miller--Sturmfels to turn semigroup rings, lattice ideals, Hilbert bases, initial ideals, multigradings, K-polynomials, Betti numbers, Scarf/hull resolutions, toric quotients, Ehrhart/Brion methods, and toric local cohomology into training objectives and audit metrics. |

## Paper I: graph-token reasoning plus finite toric certificates

Paper I establishes the model family. A ToricGT instance is a graph-token transformer

\[
\mathrm{ToricGT}=D\circ \Phi_L\circ\cdots\circ \Phi_1\circ T,
\]

where \(T\) tokenizes a typed attributed graph, \(\Phi_\ell\) are equivariant transformer-style blocks, and \(D\) decodes node, edge, graph, language, or trajectory outputs. The architecture is enhanced with optional train-time modules:

- tropical heads implementing max-plus or min-plus dynamic-programming computations;
- ring-evaluated attention schedules that preserve exact attention semantics while changing streaming order;
- toric chart probes that expose Newton polytopes, normal-fan cells, one-dimensional cones, margins, and bend diagnostics;
- finite BGG/Koszul/Tate/Euler-Koszul certificates attached through low-rank probes;
- GraphCG concept axes for inspectable behavior and reasoning coordinates;
- GFlowNet sampling for diverse graph-of-thought completions;
- retrieval memory keyed by homological, topological, toric, and trajectory signatures.

The philosophical shift is that reasoning supervision is no longer only final-answer supervision. A hidden trajectory can be trained to satisfy finite algebraic constraints such as \(\partial^2=0\), standard-filtration consistency, Gale-dual agreement, toric-ideal binomial consistency, and chain-map compatibility.

## Paper II: iterative reasoning as dynamical persistence geometry

Paper II replaces isolated certificates with a dynamical theory. A reasoning step is standardized as a padded packet containing token embeddings, graph tokens, verifier fields, retrieved evidence, generated context, behavior coordinates, and certificate fields. From the packet, one builds a filtration

\[
K_0 \subseteq K_1 \subseteq \cdots \subseteq K_m
\]

of simplicial complexes and corresponding persistence modules. The learned model update becomes a graph-to-graph dynamical map

\[
F_\theta: R_t \longmapsto R_{t+1}.
\]

This turns the sequence \((R_t)_{t\ge 0}\) into a dynamical system whose observables include barcode stability, recurrence time, entropy rate, mixing/decorrelation, Lyapunov-style stability, derived mapping-cone residuals, sheaf-gluing defects, and toric chamber occupancy.

The training aim is practical: good reasoning trajectories should preserve useful invariants while changing enough to solve the task. The dynamics should be stable under irrelevant perturbations, sensitive to genuine evidence, and compressive under the held-out bits-per-byte contract.

## Paper III: MCPs, markdown memory, knowledge graphs, and long context

Paper III externalizes the trajectory. Modern agents do not reason only inside hidden states; they use context streams, tool calls, retrieved documents, markdown memory, knowledge graphs, and protocol objects. ToricGT III models these as a typed graph memory substrate.

A memory object contains nodes for messages, markdown sections, resources, prompts, tools, knowledge-graph entities, claims, citations, embeddings, permissions, and update events. Edges encode references, provenance, adjacency, containment, authorization, temporal order, semantic similarity, and contradiction. Filtered simplicial complexes are then built over this graph to expose higher-order clusters of mutually supporting evidence.

The database layer stores graph-structured vectors:

\[
z_v = [e_v,\; c_v,\; p_v,\; q_v,\; s_v],
\]

where \(e_v\) is a dense embedding, \(c_v\) is a quantized toric/Cox code, \(p_v\) is provenance, \(q_v\) is a certificate summary, and \(s_v\) is a sheaf or local-section descriptor. A learned projection \(P_\psi\) maps full records into a smaller retrieval space:

\[
\tilde z_v=P_\psi z_v.
\]

Retrieval is a two-stage process: approximate search in projected space, followed by graph expansion and certificate-aware reranking. For 1--10M-token context windows, the context itself is treated as a finite canvas progressively filled by reasoning blocks, MCP observations, markdown memories, knowledge-graph neighborhoods, verifier traces, and output drafts until a problem-dependent length \(L_C\le 10^7\) is reached.

## Paper IV: oracle trajectory classifiers for behavior and reasoning quality

Paper IV adds a supervision layer that classifies trajectories rather than answers alone. The oracle can be a lightweight head on a frozen model, a low-rank adapter stack, or a full transformer over trajectory packets. It predicts structured properties such as:

- factual accuracy and verifier agreement;
- evidence grounding and citation discipline;
- tool-use and MCP permission hygiene;
- safety and refusal appropriateness;
- tone corridor and personality profile;
- uncertainty calibration;
- proof rigor and reasoning decomposition;
- verbosity, concision, and efficiency;
- retrieval quality and memory hygiene;
- graph-of-thought compositionality.

The oracle output is organized as a property poset, a compatibility complex, and a toric property fan. This matters because many behavior labels are not independent. For instance, “high confidence” should be compatible with “strong evidence” but incompatible with “weak provenance” unless the model is explicitly reporting speculation.

The oracle can be used in five ways: reward shaping, rejection sampling, preference optimization, retrieval filtering, and test-time trajectory steering. Again, the rule is score-safe deployment: oracle signals that improve the teacher but fail held-out bits-per-byte or behavior ablations stay teacher-side.

## Paper V: toric algebra as training infrastructure

Paper V focuses on Part II of Miller--Sturmfels, “Toric Algebra.” Its contribution is to convert combinatorial commutative algebra into trainable finite diagnostics for hidden reasoning. The main translation table is:

| Toric algebra object | ToricGT training use |
|---|---|
| Affine semigroup | Quantized dictionary of reasoning increments or retrieval codes |
| Semigroup ring | Algebra of composable trajectory features |
| Lattice ideal | Binomial consistency constraints among equivalent reasoning paths |
| Hilbert basis | Minimal reusable dictionary for local reasoning moves |
| Initial ideal | Degeneration/curriculum for difficult algebraic certificates |
| Multigrading | Factorization of reasoning into task, evidence, style, memory, and proof degrees |
| K-polynomial | Compact summary of support and cancellation structure |
| Multigraded Betti numbers | Syzygy profile of reasoning obligations |
| Scarf/hull resolutions | Minimal or robust certificate complexes |
| Toric quotient | Invariance and symmetry reduction in embedding space |
| Ehrhart/Brion methods | Sparse counting and vertex-decomposed retrieval caches |
| Local cohomology | Coverage diagnostic for missing or unsupported reasoning regions |

This paper is the algebraic toolbox for all earlier papers. If Paper I supplies the architecture, Paper II supplies trajectory dynamics, Paper III supplies memory/retrieval, and Paper IV supplies behavior labels, Paper V supplies a library of finite algebraic objectives that can be attached to any of them.

## Shared evaluation contract

All five papers use the same evaluation discipline.

1. **Score-before-update validation.** Evaluation examples are scored before any training or memory update can use their answer bytes.
2. **Held-out bits-per-byte.** Compression is measured by negative log probability normalized by byte count, including the cost of deployable artifacts.
3. **Ablation-first auxiliary promotion.** An auxiliary loss, certificate, retrieval code, oracle label, or memory module enters the deployable model only after matched ablations show utility.
4. **Artifact accounting.** Every exported table, projection, quantizer, adapter, or cache has byte cost.
5. **Teacher/student separation.** Expensive symbolic algebra, certificate generation, exact homology, and oracle labeling can remain teacher-side.
6. **Leakage control.** Splits must prevent exact problem, proof, graph, memory, certificate, and retrieval-neighborhood leakage.
7. **Behavior safety.** Behavior control is evaluated on both capability and refusal-appropriateness tasks; tone/personality control must not degrade accuracy or grounding.

The canonical compression metric is

\[
\operatorname{bits\text{-}per\text{-}byte}(x)
=
\frac{-\log_2 p_\theta(x)}{|x|_{\mathrm{bytes}}}.
\]

A structural auxiliary should be treated as useful only if it lowers this quantity on the relevant held-out stream or improves a predeclared task/control metric without increasing it.

## Implementation roadmap

A practical implementation can be staged.

### Stage 0: baseline graph-token model

Train a graph-token transformer with ordinary language-model or supervised graph losses. Verify permutation equivariance, masking correctness, and score-before-update evaluation.

### Stage 1: tropical and toric chart probes

Add low-rank probes for active affine candidates, normal-fan cells, one-dimensional cones, margins, and moment summaries. Keep them train-time only until ablated.

### Stage 2: finite certificates

Attach small BGG/Koszul/Tate/Euler-Koszul or toric-algebra certificates to selected examples. Use sparse losses such as \(\partial^2\), binomial relation consistency, standard-filtration leakage, and Gale-dual agreement.

### Stage 3: trajectory dynamics

Build filtered complexes over reasoning steps. Track persistence, chain-map residuals, derived mapping-cone defects, and ergodic occupancy of toric cells.

### Stage 4: memory and retrieval

Convert markdown memory, MCP traces, and knowledge graphs into graph-structured vector records. Train a projected retrieval head and rerank by graph expansion, sheaf gluing, and certificate compatibility.

### Stage 5: long-context reasoning

Treat the context window as a finite canvas. Use tropical ring attention and projected retrieval to fill only useful context blocks up to \(L_C\le 10^7\), with stopping-time control based on marginal utility.

### Stage 6: oracle trajectory classification

Train an oracle over partial and completed trajectories. Use it for data filtering, reward shaping, preference optimization, retrieval hygiene, memory pruning, and test-time control.

### Stage 7: toric algebra objective library

Use the Part II-derived algebraic objectives as modular probes: Hilbert-basis dictionaries, lattice-ideal losses, initial-ideal curricula, Betti-profile regularizers, Scarf genericity, quotient invariance, Brion-style sparse retrieval, and local-cohomology coverage.

## Suggested repository layout

```text
ToricGT/
  README.md
  papers/
    toricgt_i_toric_bgg_supervision.pdf
    toricgt_ii_dynamical_persistence.pdf
    toricgt_iii_mcp_memory_long_context.pdf
    toricgt_iv_oracle_trajectory_classifiers.pdf
    toricgt_v_toric_algebraic_training_objectives.pdf
  blog/
    huggingface_toricgt_program.md
  configs/
    baseline_graph_token.yaml
    tropical_toric_probes.yaml
    certificate_training.yaml
    mcp_memory_retrieval.yaml
    oracle_trajectory_classifier.yaml
  src/
    toricgt/
      tokenization/
      tropical_attention/
      toric_probes/
      certificates/
      persistence/
      retrieval/
      oracle/
      evaluation/
  data_schemas/
    graph_record.schema.json
    trajectory_packet.schema.json
    mcp_memory_record.schema.json
    oracle_label.schema.json
  experiments/
    ablations/
    long_context/
    oracle/
    toric_algebra/
```

## Minimal reproducibility checklist

- Fix all random seeds and record hardware, software versions, tokenizer version, and artifact hash.
- Store raw graph records separately from derived certificates.
- Record every certificate generator version and finite-field choice.
- Run every auxiliary as audit-only before loss-enabling it.
- Report held-out bits-per-byte with and without artifact bytes.
- Report reasoning metrics by task family, not only as a global average.
- Report behavior-control metrics by property class and by refusal/compliance split.
- Run paired ablations for each auxiliary and for every exported byte-bearing artifact.
- Preserve score-before-update evaluation for memory and retrieval systems.
- Treat long-context retrieved blocks as paid context: if they do not improve net utility, they should not be inserted.

## Program-level thesis

ToricGT is a research program for making hidden reasoning more structured, auditable, and compressive. The mathematics is useful only when it changes the training signal in a way the model can exploit. The five papers therefore form a single stack:

\[
\text{architecture}
\rightarrow
\text{dynamics}
\rightarrow
\text{memory/retrieval}
\rightarrow
\text{oracle behavior labels}
\rightarrow
\text{toric algebra objective library}.
\]

The result is not a claim that algebraic geometry alone trains better language models. The claim is narrower and testable: finite toric and commutative-algebra certificates can regularize graph-structured reasoning, retrieval, long-context use, and behavior control; each certificate should be retained only when it improves measured utility under held-out bits-per-byte and rigorous ablation.
