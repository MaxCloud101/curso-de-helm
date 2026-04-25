# Crear helm charts

## Crear un Chart custom

```yaml
helm create my_chart
```

Directory Tree

```sh
.
|-- Chart.yaml
|-- charts
|-- templates
|   |-- NOTES.txt
|   |-- _helpers.tpl
|   |-- deployment.yaml
|   |-- hpa.yaml
|   |-- httproute.yaml
|   |-- ingress.yaml
|   |-- service.yaml
|   |-- serviceaccount.yaml
|   `-- tests
|       `-- test-connection.yaml
`-- values.yaml
```

## Instalar un Chart custom

```yaml
helm install my_deployment my_chart/
```

## Parametros para Chart.yaml

```yaml
apiVersion: v2
name: my_chart
description: A Helm chart for Kubernetes
# A chart can be either an 'application' or a 'library' chart.
type: application
# Versions are expected to follow Semantic Versioning (https://semver.org/)
version: 0.1.0
# This is the version number of the application being deployed. 
appVersion: "1.16.0"
```

## Helm templates

## Archivo Helper en un template Helm


## Archivo values.yaml del Chart

## Empaquetar un chart

```yaml
helm package my_chart/ -d /root/
```

## Validar un chart

```yaml
helm lint my_chart/
```
