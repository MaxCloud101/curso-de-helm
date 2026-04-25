# Instalación

## Instalando Helm desde un script

Helm ahora cuenta con un script de instalación que descarga automáticamente la última versión de Helm y la instala localmente.

```sh
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-4
chmod 700 get_helm.sh
./get_helm.sh
```

## A través de gestoras de paquetes

La comunidad de Helm ofrece la posibilidad de instalar Helm a través de los gestores de paquetes del sistema operativo. Estos gestores no cuentan con el respaldo del proyecto Helm y no se consideran terceros de confianza.

### From Homebrew (macOS)

Members of the Helm community have contributed a Helm formula build to Homebrew. This formula is generally up to date.

```sh
brew install helm
```
### From Chocolatey (Windows)

Members of the Helm community have contributed a Helm package build to Chocolatey. This package is generally up to date.

```sh
choco install kubernetes-helm
```

Todas las opciones disponibles en:

```sh
https://helm.sh/docs/intro/install/
```
