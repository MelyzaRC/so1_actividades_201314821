### Actividad 8
# Primeros pasos con K8s

## Instalación de *minikube* en *Ubuntu*


><img src="https://infinitelambda.com/wp-content/uploads/2021/01/minikube.png" alt="drawing" width="200">
>
> Minikube es una herramienta que facilita ejecutar un clúster local de Kubernetes en una máquina personal. Está diseñado para desarrolladores que quieren probar y desplegar aplicaciones en Kubernetes sin necesidad de utilizar infraestructura en la nube. Proporciona una instalación rápida y fácil para entornos de desarrollo y pruebas.

- Instalar dependencias necesarias

```
sudo apt update
sudo apt install -y curl apt-transport-https virtualbox virtualbox-ext-pack
```

- Descargar archivo de instalación
  
```
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
```

- Instalar

```
sudo install minikube-linux-amd64 /usr/local/bin/minikube
```

- Iniciar *minikube*

```
minikube start
```

<img src="images/1.png" alt="drawing" width="700">


> **Nota:** Se debe tener instalado *kubectl* para poder interactuar con la herramienta *minikube*.

