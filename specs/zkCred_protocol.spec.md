# zkCred Protocol Specification

## Overview
This spec defines the zkCred base protocol: a privacy-preserving credit scoring mechanism leveraging zero-knowledge proofs (ZKPs) on Starknet. Users prove creditworthiness derived from on-chain activity without leaking raw financial data.

## System Model
- **Actors**: Users, Lenders, Verifiers (smart contracts).
- **Data**: On-chain transaction logs, repayment patterns, staking durations.
- **Trust Model**: ZK reduces trust assumptions. Security relies on underlying cryptographic hardness and STARK soundness.

## Cryptographic Components
- **Finite Field**: Operations over a prime field F with large order q.
- **Commitments**: Pedersen-style commitments to user attributes, ensuring they remain hidden yet verifiable.
- **Zero-Knowledge Proof**: A STARK-based ZK proof that user attributes satisfy certain polynomial constraints representing creditworthiness.

## Mathematical Outline
Represent a user’s private attributes as a vector `X = (x_1, x_2, ..., x_n)` (e.g., repayment scores, staking metrics). Define:
```
Score(X) = α_1*x_1 + α_2*x_2 + ... + α_n*x_n
```
`α_i` are known coefficients. The user proves `Score(X) ≥ T` without revealing X.

Polynomial constraint: `Score(X) - T = 0` if the score meets or exceeds the threshold. Non-negativity and other conditions can be encoded as polynomial constraints over F.

## Security Properties
- **Completeness**: Honest users with valid attributes produce convincing proofs.
- **Soundness**: Cheaters can’t fake a passing proof without breaking cryptographic assumptions.
- **Zero-Knowledge**: The proof leaks no information about user’s raw data beyond meeting the threshold.

**QED**: Under standard ZK/STARK assumptions, this construction provides the desired privacy and security guarantees.

