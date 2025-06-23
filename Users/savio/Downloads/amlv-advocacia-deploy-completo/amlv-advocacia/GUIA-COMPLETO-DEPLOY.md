# 🚀 GUIA COMPLETO DE DEPLOY - SITE AMLV ADVOCACIA

## 🎯 **OBJETIVO FINAL:**
Colocar o site `amlvadvocacia.com.br` no ar usando GitHub + Render + Cloudflare

---

## 📋 **CHECKLIST COMPLETO:**

### ✅ **PREPARAÇÃO (JÁ FEITO):**
- [x] Código fonte preparado e otimizado
- [x] Repositório Git configurado
- [x] Scripts de deploy criados
- [x] Documentação completa

### 🔄 **PRÓXIMOS PASSOS (VOCÊ FARÁ):**
- [ ] Criar conta no GitHub (se não tiver)
- [ ] Criar repositório "amlv-advocacia"
- [ ] Fazer upload do código
- [ ] Criar conta no Render
- [ ] Conectar repositório ao Render
- [ ] Configurar DNS no Cloudflare

---

## 🎬 **PASSO A PASSO DETALHADO:**

### **ETAPA 1: GITHUB (5 minutos)**

#### 📝 **1.1 - Criar Repositório:**
1. Acesse: https://github.com
2. Clique em **"New repository"**
3. Nome: **"amlv-advocacia"**
4. Visibilidade: **Public**
5. Clique **"Create repository"**

#### 📤 **1.2 - Upload do Código:**
1. Baixe o ZIP que enviei
2. Extraia na sua máquina
3. Abra terminal na pasta `amlv-advocacia`
4. Execute:
```bash
git remote add origin https://github.com/SEU_USUARIO/amlv-advocacia.git
./deploy.sh
```

### **ETAPA 2: RENDER (10 minutos)**

#### 🔗 **2.1 - Criar Conta:**
1. Acesse: https://render.com
2. Clique **"Get Started"**
3. Escolha **"GitHub"** para login
4. Autorize conexão com GitHub

#### ⚙️ **2.2 - Configurar Deploy:**
1. Clique **"New +"** → **"Static Site"**
2. Selecione repositório **"amlv-advocacia"**
3. Configure:
   - **Build Command:** `npm run build`
   - **Publish Directory:** `dist`
4. Clique **"Create Static Site"**

#### 🌐 **2.3 - Configurar Domínio:**
1. Vá em **"Settings"** → **"Custom Domains"**
2. Adicione: `amlvadvocacia.com.br`
3. Adicione: `www.amlvadvocacia.com.br`
4. Anote a URL do Render (ex: `amlv-xyz.onrender.com`)

### **ETAPA 3: CLOUDFLARE (5 minutos)**

#### 🔧 **3.1 - Configurar DNS:**
1. Acesse: https://dash.cloudflare.com
2. Selecione **"amlvadvocacia.com.br"**
3. Vá em **"DNS"** → **"Records"**
4. Adicione/Edite:

```
Type: CNAME
Name: @
Target: amlv-xyz.onrender.com (sua URL do Render)
Proxy: 🟠 Proxied
```

```
Type: CNAME
Name: www  
Target: amlv-xyz.onrender.com (sua URL do Render)
Proxy: 🟠 Proxied
```

#### 🛡️ **3.2 - Configurar SSL:**
1. Vá em **"SSL/TLS"** → **"Overview"**
2. Selecione **"Full (strict)"**
3. Ative **"Always Use HTTPS"**

---

## ⏱️ **TEMPO TOTAL ESTIMADO:**
- **GitHub:** 5 minutos
- **Render:** 10 minutos  
- **Cloudflare:** 5 minutos
- **Propagação DNS:** 15-30 minutos
- **TOTAL:** ~1 hora

---

## 🎉 **RESULTADO FINAL:**
- ✅ Site funcionando em `https://amlvadvocacia.com.br`
- ✅ SSL automático e seguro
- ✅ CDN global (velocidade)
- ✅ Deploy automático a cada atualização
- ✅ Backup no GitHub

---

## 🆘 **SUPORTE:**
Se tiver dificuldades em qualquer etapa, me avise que te ajudo especificamente!

---

## 📁 **ARQUIVOS INCLUSOS:**
- `deploy.sh` - Script automatizado de deploy
- `GUIA-RENDER.md` - Instruções detalhadas do Render
- `GUIA-CLOUDFLARE.md` - Configurações DNS completas
- `README-DEPLOY.md` - Resumo das instruções

