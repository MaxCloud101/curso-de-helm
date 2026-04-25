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

```sh
helm install web bitnami/nginx --version 23.0.3
```

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

## Rollback


```sh
helm history web  
```

```sh
helm rollback web 1  
```

```sh
helm uninstall web --keep-history  
```
```sh
helm rollback web 3  
```

## Timeout

```sh
helm install web bitnami/nginx --wait --timeout 20m
```

## Atomic

```sh
helm install web bitnami/nginx --atomic
```
