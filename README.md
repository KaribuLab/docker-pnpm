# Imagen Docker PNPM con Node.js 22

Este repositorio contiene una imagen Docker minimalista que incluye Node.js 22 y PNPM, construida sobre Alpine Linux.

## Características

- Basada en Node.js 22.14.0 con Alpine 3.21
- Incluye PNPM preinstalado globalmente
- Configurada para ejecutarse como usuario no root (node)
- Tamaño optimizado para entornos de producción

## Uso

### Obtener la imagen

```bash
# Última versión estable
docker pull username/pnpm:node-22-alpine-latest

# Versión específica
docker pull username/pnpm:node-22-alpine-v1.0.0
```

### Ejemplo con Docker Compose

```yaml
version: '3.8'

services:
  app:
    image: username/pnpm:node-22-alpine-latest
    volumes:
      - ./:/app
    working_dir: /app
    command: pnpm start
```

## Desarrollo

### Construcción local

```bash
docker build -t pnpm:local .
```

### Estructura del proyecto

- `Dockerfile`: Definición de la imagen Docker
- `.github/workflows`: Flujos de trabajo CI/CD para la construcción y publicación automática
- `.dockerignore`: Archivos excluidos de la construcción Docker

## CI/CD

Este repositorio utiliza GitHub Actions para:

1. Verificar si es necesario crear un nuevo tag basado en semver
2. Construir y publicar la imagen con la etiqueta `latest` para cambios en main
3. Construir y publicar versiones etiquetadas cuando se crea un nuevo tag

## Licencia

[MIT License](LICENSE) 