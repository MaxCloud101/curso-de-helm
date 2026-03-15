# Uso basico de helm

## Trabajando con repositorio

- Para listar los repositorios agregados localmente

```sh
helm repo list
```

- Para agregar un repositorio

```sh
helm repo add [REPO-NAME] [REPO-URL]
```

Ejemplo

```sh
helm repo add bitnami https://charts.bitnami.com/bitnami
```

- Para eliminar un repositoio

```sh
helm repo remove [REPO-NAME]
```

Ejemplo

```sh
helm repo remove bitnami
```

## Buscar en repositorios

- Para buscar en un chart

```sh
helm search repo [KEYWORD] [flags]
```

Ejemplo:

```sh
helm search repo nginx
```

- Para ver las versiones de los charts

```sh
helm search repo nginx --versions
```

- Para buscar una version especifica

```sh
helm search repo nginx --version 15.0.0
```

- Buscar por rango de versiones.

```sh
helm search repo nginx --version "^15.0.0"
```

- Para buscar en charts públicos en internet, specíficamente en Artifact Hub usamos

```sh
helm search hub
```

## Instalar un chart

- Para instalar un chart y desplegar una aplicacion

```sh
helm install [RELEASE_NAME] [CHART] [flags]
```

Ejemplo

```sh
helm install web bitnami/nginx
```

- Para instalar un chart usando un archivo

values.yaml

```sh
replicaCount: 3
```

```sh
helm install web bitnami/nginx -f values.yaml
```

- Para definir valores directamente desde la línea de comandos.

```sh
helm install web bitnami/nginx --set replicaCount=3
```

- Para instalar un chart en un namespace

```sh
helm install web bitnami/nginx --namespace production
```

- Para instalar un chart en un namespace y crear el namespace si no existe

```sh
helm install web bitnami/nginx --namespace production --create-namespace
```

- Para simular una instalacion sin instalarla

```sh
helm install web bitnami/nginx --dry-run
```
- Para mostrar informacion detallada de la instalacion

```sh
helm install web bitnami/nginx --debug
```

- Esperar hasta que los recursos estén listos.

```sh
helm install web bitnami/nginx --wait
```

- Agregar un tiempo máximo de espera.

```sh
helm install web bitnami/nginx --timeout 5m
```

## Ejemplo

```sh
helm install nginx-web bitnami/nginx \
  --namespace web \
  --create-namespace \
  --set replicaCount=3 \
  --wait
```

Esto hace:

- Instala nginx
- Crea namespace web
- Usa 3 replicas
- Espera a que los pods estén listos
