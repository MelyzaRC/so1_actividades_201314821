# Actividad 3

<div id='content'/>
  
## Contenido
#### [Parte 1: Gestión de Usuarios](#id1)
#### [Parte 2: Gestión de Grupos](#id2)
#### [Parte 3: Gestión de Permisos](#id3)
#### [Reflexión](#id4)


<div id='id1'/>
  
# Parte 1: Gestión de Usuarios [ ⇧](#content)
- **Creación de Usuarios**
  
```
sudo useradd -m usuario1
```

```
sudo useradd -m usuario2
``` 
```
sudo useradd -m usuario3
``` 
<img src="images/1.png" alt="drawing" width="500">

- **Asignación de Contraseñas**

```
sudo passwd usuario1
```

```
sudo passwd usuario2
```

```
sudo passwd usuario3
```
<img src="images/3.png" alt="drawing" width="500">

- **Información de Usuarios**

```
sudo passwd usuario1
```

<img src="images/5.png" alt="drawing" width="500">

- **Eliminación de Usuarios**

```
sudo userdel usuario3
```

<img src="images/7.png" alt="drawing" width="500">

<div id='id2'/>
  
# Parte 2: Gestión de Grupos [ ⇧](#content)

- **Creación de Grupos**

```
groupadd grupo1
```

```
groupadd grupo2
```

<img src="images/8.png" alt="drawing" width="500">

<img src="images/9.png" alt="drawing" width="500">

- **Agregar Usuarios a Grupos**

```
usermod -a -G grupo1 usuario1
```

```
usermod -a -G grupo2 usuario2
```
<img src="images/10.png" alt="drawing" width="500">

<img src="images/11.png" alt="drawing" width="500">

- **Verificar Membresía**
```
groups usuario1
```
```
groups usuario2
```

<img src="images/10.png" alt="drawing" width="500">

<img src="images/12.png" alt="drawing" width="500">

- **Eliminar Grupo**

```
groupdel grupo2
```

<img src="images/13.png" alt="drawing" width="500">
<img src="images/14.png" alt="drawing" width="500">
<img src="images/15.png" alt="drawing" width="500">

<div id='id3'/> 
  
# Parte 3: Gestión de Permisos [ ⇧](#content)

- **Creación de Archivos y Directorios**
> Ingreso a usuario1
> 
> <img src="images/16.png" alt="drawing" width="500">

> **Tabla de permisos**
>
> |Representación numérica|Representación simbólica|Descripción|
> |--|--|--|
> |0|---|Sin acceso|
> |1|--x  |Ejecución|
> |2|-w-|Escritura|
> |3|-wx|Escritura y ejecución|
> |4|r--|Lectura|
> |5|r-x|Lectura y ejecución|
> |6|rw-|Lectura y escritura|
> |7|rwx|Lectura, escritura y ejecución|

Creación de archivo en el directorio principal del usuario 

```
echo "contenido" > archivo1.txt
```
<img src="images/17.png" alt="drawing" width="500">

Creación de directorio ***/directorio1*** dentro del directorio principal del usuario 

```
mkdir directorio1
```
Creación de archivo dentro de ***/directorio1***

```
cd directorio1
```

```
echo "contenido" > archivo2.txt
```

<img src="images/18.png" alt="drawing" width="500">

- **Verificar Permisos**

```
ls -l
```

```
ls -ld
```
<img src="images/19.png" alt="drawing" width="500">

- **Modificar Permisos usando `chmod` con Modo Numérico**

```
chmod 640 archivo1.txt
```

<img src="images/20.png" alt="drawing" width="500">

- **Modificar Permisos usando `chmod` con Modo Simbólico**

```
chmod u+x archivo2.txt
```

<img src="images/21.png" alt="drawing" width="500">

- **Cambiar el Grupo Propietario**

```
chown :grupo1 archivo2.txt
```

<img src="images/22.png" alt="drawing" width="500">

- **Configurar Permisos de Directorio**

```
chmod 740 directorio1
```

<img src="images/23.png" alt="drawing" width="500">

- **Comprobación de Acceso**

Accediendo al directorio principal del ***usuario1*** como ***usuario2***

```
cd /home/usuario1
```
Leyendo ***archivo2.txt*** como ***usuario2***

```
cat /home/usuario1/directorio1/archivo2.txt
```
<img src="images/24.png" alt="drawing" width="500">

- **Verificación Final**

```
ls -l
```

```
ls -ld
```
<img src="images/25.png" alt="drawing" width="500">

<div id='id4'/>
  
# Reflexión [ ⇧](#content)
- **¿Por qué es importante gestionar correctamente los usuarios y permisos en un sistema operativo?**
La importancia de una correcta gestión de usuarios radica en la seguridad que esta le brinda a nuestros archivos, permitiendo restringir las acciones que dichos usuarios pueden realizar y previniendo un uso inadecuado de la información.

- **¿Qué otros comandos o técnicas conocen para gestionar permisos en Linux?**
Algunos comandos adicionales a los presentados en esta actividad son:

|Comando|Descripción|
|--|--|
|***groupmod***|Permite modificar un grupo.|
|***gpasswd***|Permite cambiar la contraseña de un grupo.|
|***whoami***|Permite saber cual es el usuario autenticado actualmente.|
|***su***|Comando utilizado para cambiar de usuario.|
|***who*** o ***w***|Sirve para saber cuáles usuarios están conectados en la máquina en un determinado momento.|
|***write*** o ***wall***|Permite enviar mensajes de al resto de usuarios logueados|

