# 🎯 PROCESSO DE DEPLOY NO RENDER - PASSO A PASSO

## 📋 **PASSO 1: CRIAR CONTA NO RENDER**

### 🔗 **URL:** https://dashboard.render.com/register

### ✅ **OPÇÕES DE CADASTRO:**
1. **GitHub** (RECOMENDADO) - Conecta diretamente com seus repositórios
2. **GitLab** - Alternativa ao GitHub
3. **Bitbucket** - Outra opção de repositório
4. **Google** - Login com conta Google
5. **Email/Senha** - Cadastro manual

### 🎯 **RECOMENDAÇÃO:**
**Use o GitHub** para facilitar a conexão com o repositório do site.

---

## 📦 **PASSO 2: CONECTAR REPOSITÓRIO**

### 📋 **Após o cadastro:**
1. Clique em **"New +"**
2. Selecione **"Static Site"**
3. Conecte seu repositório **"amlv-advocacia"**
4. Configure as opções de build

### ⚙️ **CONFIGURAÇÕES OBRIGATÓRIAS:**
- **Build Command:** `npm run build`
- **Publish Directory:** `dist`
- **Node Version:** 18 (automático)

---

## 🌐 **PASSO 3: CONFIGURAR DOMÍNIO CUSTOMIZADO**

### 📝 **No painel do Render:**
1. Acesse **"Settings"** do seu site
2. Vá em **"Custom Domains"**
3. Adicione: `amlvadvocacia.com.br`
4. Adicione: `www.amlvadvocacia.com.br`

### 🔧 **O Render fornecerá:**
- URL temporária (ex: `amlv-advocacia.onrender.com`)
- Instruções para configurar DNS

---

## ⚡ **PRÓXIMO PASSO:**
Configurar DNS no Cloudflare apontando para o Render.

