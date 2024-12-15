#!/usr/bin/env bash

# Ensure pandoc is installed
if ! command -v pandoc &> /dev/null
then
    echo "[-] pandoc not found. Install it first."
    exit 1
fi

SPECS="../specs/zkCred_protocol.spec.md ../specs/zkCred_proof_system.spec.md"
PROPOSAL="proposal.md"
OUTPUT="zkCred_documentation.pdf"

echo "[+] Converting specs and proposal into PDF..."
pandoc $SPECS $PROPOSAL -o $OUTPUT

if [ $? -eq 0 ]; then
    echo "[+] Successfully created $OUTPUT"
else
    echo "[-] Failed to create PDF."
    exit 1
fi