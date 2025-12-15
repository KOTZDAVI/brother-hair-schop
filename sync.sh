#!/bin/bash
echo "========================================"
echo "Sincronizando com o repositório remoto..."
echo "========================================"

# Pull changes
echo "1. Baixando alterações (Pull)..."
git pull origin main

# Check if pull was successful
if [ $? -eq 0 ]; then
    echo "Pull realizado com sucesso."
else
    echo "Erro ao realizar pull. Verifique conflitos."
    exit 1
fi

# Push changes
echo "2. Enviando alterações (Push)..."
git push origin main

if [ $? -eq 0 ]; then
    echo "========================================"
    echo "Sincronização bilateral concluída!"
    echo "========================================"
else
    echo "Erro ao realizar push."
    exit 1
fi
