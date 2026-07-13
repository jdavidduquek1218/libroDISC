# Despliegue en la Web - El Manual Real del DISC

Tu sitio web está listo para ser desplegado. Aquí hay varias opciones:

## Opción 1: Netlify (Recomendado - Gratis)

### Método A: Netlify Drop (Arrastra y Suelta)
1. Ve a https://app.netlify.com/drop
2. Arrastra la carpeta `public/` a la página
3. Tu sitio estará en línea en segundos

### Método B: Conectar con GitHub
1. Haz push del repositorio a GitHub
2. Ve a https://app.netlify.com
3. Conecta tu repositorio
4. Netlify desplegará automáticamente

### Método C: Usando Netlify CLI
```bash
# Instalar Netlify CLI
npm install -g netlify-cli

# Desplegar
netlify deploy --prod --dir=public
```

## Opción 2: Vercel (Alternativa)

1. Ve a https://vercel.com
2. Importa tu repositorio de GitHub o sube los archivos
3. Vercel desplegará automáticamente

## Opción 3: Render

1. Ve a https://render.com
2. Crear nuevo "Static Site"
3. Conectar el repositorio o subir archivos
4. Configurar raíz de publicación: `public/`

## Opción 4: Surge.sh (Más Simple)

```bash
# Instalar surge
npm install -g surge

# Desplegar la carpeta public
surge public/
```

---

Todos estos servicios son **100% gratuitos** y ofrecen HTTPS automático y actualizaciones en tiempo real.

Para preguntas sobre despliegue, consulta la documentación del servicio elegido.
