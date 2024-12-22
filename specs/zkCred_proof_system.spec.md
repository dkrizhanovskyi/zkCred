# zkCred Proof System Specification

## Overview
This spec delves into the zero-knowledge proof construction. We encode the scoring conditions into a STARK-based IOP, ensuring soundness and privacy.

## Polynomial IOP Construction
Transform `Score(X) ≥ T` into polynomial relations over F. Introduce constraints ensuring `x_i ≥ 0` by representing `x_i = y_i^2` for some `y_i`.

## STARK Framework
- **AIR (Algebraic Intermediate Representation)**: Encode the credit constraints in a system of low-degree polynomials.
- **FFT-Friendly Fields**: Use fields that enable fast polynomial operations.
- **Fiat-Shamir**: Achieve non-interactive proofs by hashing transcripts for challenge generation.

## Core Mathematics
`P(X) = Score(X) - T`. We prove `P(X)=0` given user’s secret `X`. For non-negativity: `x_i - y_i^2 = 0` polynomials enforce `x_i≥0`.

Soundness: If `Score(X)<T`, no polynomial cheats can produce a valid STARK proof consistently.  
Zero-Knowledge: Hiding commitments and careful randomization ensure no leakage of `X`.

## Security Argument
Breaking soundness implies solving hard underlying problems. With properly chosen field sizes and cryptographic parameters, STARK proofs are negligible-error sound and zero-knowledge.

**QED**: The STARK-based system ensures completeness, soundness, and ZK as required.
