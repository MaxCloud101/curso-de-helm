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
