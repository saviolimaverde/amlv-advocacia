# 🚀 DEPLOY DO SITE AMLV ADVOCACIA

## 📋 INSTRUÇÕES PASSO A PASSO PARA COLOCAR O SITE NO AR

### 🎯 **OBJETIVO:**
Fazer o site funcionar no domínio `amlvadvocacia.com.br` usando:
- ✅ Cloudflare (DNS)
- ✅ Git (controle de versão)
- ✅ Render (hospedagem)

---

## 📦 **PASSO 1: PREPARAR O CÓDIGO**

### ✅ **Código já preparado:**
- Site React completo com build otimizado
- Pasta `dist/` contém arquivos prontos para produção
- Todas as imagens e assets incluídos

---

## 🔧 **PASSO 2: CONFIGURAR GIT**

### 📝 **Comandos para executar:**
```bash
cd amlv-advocacia
git remote remove origin
git remote add origin https://github.com/SEU_USUARIO/amlv-advocacia.git
git add .
git commit -m "Deploy inicial do site AMLV"
git push -u origin main
```

### ⚠️ **IMPORTANTE:**
- Substitua `SEU_USUARIO` pelo seu usuário do GitHub
- Crie um repositório chamado `amlv-advocacia` no GitHub primeiro

---

## 🌐 **PASSO 3: DEPLOY NO RENDER**

### 📋 **Configurações no Render:**
1. **Conectar repositório:** Selecione o repositório `amlv-advocacia`
2. **Tipo de serviço:** Static Site
3. **Build Command:** `npm run build`
4. **Publish Directory:** `dist`
5. **Node Version:** 18

### 🔧 **Configurações automáticas:**
- Build será executado automaticamente
- Site ficará disponível em URL temporária do Render

---

## 🔗 **PASSO 4: CONFIGURAR DOMÍNIO NO CLOUDFLARE**

### 📝 **DNS Records necessários:**
```
Type: CNAME
Name: @
Target: SEU_SITE.onrender.com

Type: CNAME  
Name: www
Target: SEU_SITE.onrender.com
```

### ⚙️ **Configurações no Render:**
- Adicionar domínio customizado: `amlvadvocacia.com.br`
- Adicionar domínio customizado: `www.amlvadvocacia.com.br`

---

## ✅ **RESULTADO FINAL:**
- Site funcionando em `https://amlvadvocacia.com.br`
- SSL automático via Cloudflare
- Deploy automático a cada push no Git

---

## 🆘 **PRECISA DE AJUDA?**
Se tiver dificuldades, posso te ajudar com cada passo específico!

