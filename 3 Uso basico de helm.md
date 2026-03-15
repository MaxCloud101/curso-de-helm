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

- Para buscar en un repositorio

```sh
helm search repo mysql
helm search repo database
```
- Para ver las versiones en un repositorio

```sh
helm search repo database --versions
```

- Para buscar en charts públicos en internet, specíficamente en Artifact Hub usamos

```sh
helm search hub
```

## Instalar un chart


