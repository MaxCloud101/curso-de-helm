# Uso avanzado

## Generar un yaml desplegable para Kubernetes

```sh
helm template web bitnami/nginx
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
