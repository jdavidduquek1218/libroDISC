# Despliegue en Railway

Railway es un servicio moderno que permite desplegar automáticamente desde GitHub.

## Paso 1: Preparar (YA HECHO ✓)
- ✅ package.json configurado
- ✅ server.js listo para ejecutar
- ✅ Procfile incluido

## Paso 2: Desplegar

### Opción A: Desde CLI de Railway (Recomendado)

```bash
# Instalar Railway CLI
npm install -g @railway/cli

# Desplegar
railway up
```

### Opción B: Desde la web (Sin instalación)

1. Ve a https://railway.app
2. Click en "New Project"
3. Selecciona "Deploy from GitHub"
4. Conecta tu repositorio
5. Railway detectará automáticamente que es un proyecto Node.js
6. ¡Listo! Se desplegará automáticamente

### Opción C: Con Vercel CLI

```bash
npm install -g vercel
vercel --prod
```

---

## Resultado

Obtendrás una URL como:
```
https://el-manual-disc-abc123.railway.app
```

¡Publicada y lista para compartir!
