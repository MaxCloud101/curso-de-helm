# Uso avanzado

## Validar recursos antes de desplegarlo

```sh
helm install web bitnami/nginx --dry-run
```

## Generar un yaml desplegable para Kubernetes

```sh
helm template web bitnami/nginx
```


## Deployment releases versions details


## Get details of deployment

```sh
helm get notes web 
```

```sh
helm get values web 
```

```sh
helm get values web --revision 1 
```
