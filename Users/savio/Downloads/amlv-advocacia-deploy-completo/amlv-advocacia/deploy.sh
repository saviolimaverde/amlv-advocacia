#!/bin/bash

# 🚀 SCRIPT DE DEPLOY AUTOMATIZADO - AMLV ADVOCACIA
# Execute este script para fazer o deploy completo

echo "🚀 Iniciando deploy do site AMLV Advocacia..."

# Verificar se o repositório remoto foi configurado
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "❌ ERRO: Repositório remoto não configurado!"
    echo "📋 Execute primeiro:"
    echo "   git remote add origin https://github.com/SEU_USUARIO/amlv-advocacia.git"
    echo "   (Substitua SEU_USUARIO pelo seu usuário do GitHub)"
    exit 1
fi

echo "📦 Adicionando arquivos ao Git..."
git add .

echo "💾 Fazendo commit..."
git commit -m "Deploy: Site AMLV Advocacia - $(date '+%Y-%m-%d %H:%M:%S')"

echo "🌐 Enviando para GitHub..."
git push -u origin main

echo "✅ Deploy concluído!"
echo "🔗 Próximos passos:"
echo "   1. Acesse https://render.com"
echo "   2. Conecte seu repositório GitHub"
echo "   3. Configure como Static Site"
echo "   4. Build Command: npm run build"
echo "   5. Publish Directory: dist"
echo ""
echo "🎉 Seu site estará online em poucos minutos!"

