# 🌐 CONFIGURAÇÃO DNS NO CLOUDFLARE - PASSO A PASSO

## 🎯 **OBJETIVO:**
Configurar o domínio `amlvadvocacia.com.br` para apontar para o site hospedado no Render.

---

## 📋 **PASSO 1: ACESSAR PAINEL CLOUDFLARE**

### 🔗 **URL:** https://dash.cloudflare.com
1. Faça login na sua conta Cloudflare
2. Selecione o domínio **"amlvadvocacia.com.br"**
3. Vá na aba **"DNS"** → **"Records"**

---

## ⚙️ **PASSO 2: CONFIGURAR REGISTROS DNS**

### 🔧 **REGISTROS NECESSÁRIOS:**

#### **1. Registro Principal (@)**
```
Type: CNAME
Name: @
Target: SEU-SITE.onrender.com
TTL: Auto
Proxy status: 🟠 Proxied (recomendado)
```

#### **2. Registro WWW**
```
Type: CNAME  
Name: www
Target: SEU-SITE.onrender.com
TTL: Auto
Proxy status: 🟠 Proxied (recomendado)
```

### ⚠️ **IMPORTANTE:**
- Substitua `SEU-SITE.onrender.com` pela URL que o Render forneceu
- Exemplo: `amlv-advocacia-xyz.onrender.com`

---

## 🔄 **PASSO 3: REMOVER REGISTROS ANTIGOS**

### 🗑️ **DELETAR SE EXISTIREM:**
- Registros A apontando para IPs antigos
- Registros CNAME conflitantes
- Qualquer registro @ ou www existente

---

## ⏱️ **PASSO 4: AGUARDAR PROPAGAÇÃO**

### 📊 **TEMPO ESTIMADO:**
- **Cloudflare:** 2-5 minutos (com proxy)
- **DNS Global:** 15-30 minutos
- **Máximo:** 24 horas

### 🔍 **VERIFICAR PROPAGAÇÃO:**
- Use: https://dnschecker.org
- Digite: `amlvadvocacia.com.br`
- Verifique se aponta para o Render

---

## 🛡️ **PASSO 5: CONFIGURAÇÕES DE SEGURANÇA**

### ✅ **CONFIGURAÇÕES RECOMENDADAS:**

#### **SSL/TLS:**
- Modo: **"Full (strict)"**
- Always Use HTTPS: **Ativado**
- Automatic HTTPS Rewrites: **Ativado**

#### **Speed:**
- Auto Minify: **CSS, JS, HTML**
- Brotli: **Ativado**

#### **Caching:**
- Caching Level: **Standard**
- Browser Cache TTL: **4 hours**

---

## 🎯 **RESULTADO FINAL:**
- ✅ `https://amlvadvocacia.com.br` → Site funcionando
- ✅ `https://www.amlvadvocacia.com.br` → Redirecionamento automático
- ✅ SSL automático via Cloudflare
- ✅ CDN global para velocidade
- ✅ Proteção DDoS incluída

---

## 🆘 **PROBLEMAS COMUNS:**

### ❌ **"Site não carrega"**
- Verifique se o Render está online
- Confirme a URL do Render no DNS
- Aguarde propagação DNS

### ❌ **"Erro SSL"**
- Configure SSL como "Full (strict)"
- Aguarde alguns minutos
- Limpe cache do navegador

### ❌ **"Redirecionamento infinito"**
- Desative "Always Use HTTPS" temporariamente
- Configure SSL como "Flexible"
- Reative após funcionamento

