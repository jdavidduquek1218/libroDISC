#!/bin/bash

# Script de despliegue automático para El Manual Real del DISC

echo "================================"
echo "Herramienta de Despliegue Web"
echo "El Manual Real del DISC"
echo "================================"
echo ""

# Detectar si está en la carpeta correcta
if [ ! -d "public" ]; then
    echo "❌ Error: La carpeta 'public' no existe."
    echo "Asegúrate de estar en el directorio raíz del proyecto."
    exit 1
fi

echo "Selecciona el servicio donde deseas desplegar:"
echo ""
echo "1) Netlify Drop (Recomendado - Sin instalación)"
echo "2) Surge.sh (Requiere npm)"
echo "3) Vercel (Requiere npm)"
echo "4) Descargar ZIP para despliegue manual"
echo ""
read -p "Ingresa el número de tu opción (1-4): " option

case $option in
    1)
        echo ""
        echo "📦 Abre en tu navegador: https://app.netlify.com/drop"
        echo "📂 Arrastra la carpeta 'public' a la página"
        echo "✅ Tu sitio estará en línea en segundos"
        echo ""
        open "https://app.netlify.com/drop" 2>/dev/null || xdg-open "https://app.netlify.com/drop" 2>/dev/null || echo "Abre manualmente el enlace en tu navegador"
        ;;
    2)
        echo ""
        echo "📦 Instalando Surge..."
        npm install -g surge
        echo "🚀 Desplegando..."
        surge public/
        echo "✅ ¡Desplegado en Surge!"
        ;;
    3)
        echo ""
        echo "📦 Instalando Vercel CLI..."
        npm install -g vercel
        echo "🚀 Desplegando..."
        vercel --prod
        echo "✅ ¡Desplegado en Vercel!"
        ;;
    4)
        if [ -f "el-manual-disc-web.zip" ]; then
            echo ""
            echo "✅ El archivo ZIP ya está listo:"
            echo "   📦 el-manual-disc-web.zip"
            echo ""
            echo "Opciones:"
            echo "  1. Descargar y subir a Netlify Drop (https://app.netlify.com/drop)"
            echo "  2. Descargar y usar en otro servicio"
        else
            echo ""
            echo "📦 Creando ZIP..."
            zip -r el-manual-disc-web.zip public/ netlify.toml
            echo "✅ ZIP creado: el-manual-disc-web.zip"
        fi
        ;;
    *)
        echo "❌ Opción inválida"
        exit 1
        ;;
esac

echo ""
echo "Para más información, ve a DEPLOYMENT.md"
