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
