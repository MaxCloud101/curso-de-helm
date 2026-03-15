# Introduccion

Helm es un gestor de paquetes para Kubernetes.
Sirve para instalar, configurar y gestionar aplicaciones dentro de Kubernetes de forma sencilla.

## ¿Para qué sirve Helm?

Helm permite:

- Empaquetar aplicaciones de Kubernetes
- Instalar aplicaciones fácilmente
- Configurar parámetros sin modificar YAMLs complejos
- Actualizar o hacer rollback de aplicaciones

## Conceptos principales de Helm

### Chart

Un Chart es el paquete de Helm que contiene todo lo necesario para desplegar una aplicación en Kubernetes.

Incluye:

- Deployments
- Services
- ConfigMaps
- Secrets
- Ingress

Ejemplo de aplicaciones que tienen charts:

Prometheus
Grafana
NGINX

### Release

Una Release es una instancia instalada de un Chart en el cluster.

Ejemplo:

helm install mi-grafana grafana/grafana

- Chart: grafana
- Release: mi-grafana

Puedes instalar el mismo chart varias veces con diferentes configuraciones.

### Values

Los Values son parámetros de configuración que personalizan la instalación.

Ejemplo:

replicaCount: 3

service:
  type: LoadBalancer

helm install -f values.yaml


## Ejemplo

helm install web nginx/nginx

## Ventajas de Helm

- Reduce YAML repetitivo
- Facilita despliegues complejos
- Permite versionar aplicaciones
- Soporta rollback
- Permite repositorios de charts

## Estructura de un Chart

```yaml
mi-chart/
  Chart.yaml
  values.yaml
  templates/
    deployment.yaml
    service.yaml
```

**Chart.yaml →** metadata del chart
**values.yaml →** configuración por defecto
**templates/ →** plantillas de Kubernetes
