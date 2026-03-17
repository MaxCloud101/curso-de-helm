# Uso avanzado

## Validar recursos antes de desplegarlo

```sh
helm install web bitnami/nginx --dry-run
```

## Generar un yaml desplegable para Kubernetes

```sh
helm template web bitnami/nginx --dry-run
```

