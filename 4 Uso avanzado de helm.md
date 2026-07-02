# Uso avanzado

## Multiple namespaces

- Desplegar el chart en diferentes namespaces

```sh
helm install web bitnami/nginx --create-namespace -n prod 
```

```sh
helm install web bitnami/nginx --create-namespace -n dev
```

- Ver todas las instalaciones

```sh
helm ls -A
```

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


## Atomic

```sh
helm install web bitnami/nginx --atomic
```
