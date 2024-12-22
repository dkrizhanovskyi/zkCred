# zkCred

## Overview
zkCred is a Starknet-driven, privacy-preserving credit scoring framework using zero-knowledge STARK proofs. It lets users prove creditworthiness without revealing raw data.

## Contents
- `specs/`:
  - `zkCred_protocol.spec.md`: Protocol-level definition, math outline.
  - `zkCred_proof_system.spec.md`: Detailed ZK construction and polynomial constraints.
- `docs/`:
  - `proposal.md`: High-level pitch and strategy.
  - `convert_to_pdf.sh`: Bash script to compile `.md` docs into one PDF.

## Setup
- Requires `pandoc` for PDF generation.

## Generate Documentation PDF
```bash
cd docs
./convert_to_pdf.sh
```
Produces `zkCred_documentation.pdf`.

## License
[MIT](LICENSE)