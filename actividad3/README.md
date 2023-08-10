# Actividad 3

## Parte 1: Gestión de Usuarios

### 1. Creacion de usuarios

* sudo adduser usuario3

```bash
Añadiendo el usuario `usuario3' ...
Añadiendo el nuevo grupo `usuario3' (1003) ...
Añadiendo el nuevo usuario `usuario3' (1003) con grupo `usuario3' ...
Creando el directorio personal `/home/usuario3' ...
Copiando los ficheros desde `/etc/skel' ...
Nueva contraseña: 
CONTRASEÑA INCORRECTA: No se ha proporcionado ninguna contraseña
Vuelva a escribir la nueva contraseña: 
No se ha proporcionado ninguna contraseña.
passwd: Error de manipulación del testigo de autenticación
passwd: no se ha cambiado la contraseña
¿Intentar de nuevo? [s/N] 
Cambiando la información de usuario para usuario3
Introduzca el nuevo valor, o presione INTRO para el predeterminado
	Nombre completo []: 
	Número de habitación []: 
	Teléfono del trabajo []: 
	Teléfono de casa []: 
	Otro []: 
¿Es correcta la información? [S/n] 
```

### 2. Asignación de Contraseñas

* sudo passwd usuario1

```bash
Nueva contraseña: 
Vuelva a escribir la nueva contraseña: 
passwd: contraseña actualizada correctamente
```

### 3. Información de Usuarios

* id usuario1

```bash
uid=1001(usuario1) gid=1001(usuario1) grupos=1001(usuario1)
```

### 4. Eliminacion de usuarios

```bash
Buscando archivos para guardar/eliminar ...
Eliminando archivos ...
Eliminando al usuario `usuario3' ...
Aviso: el grupo `usuario3' no tiene más miembros.
Hecho.
chris@chr
```

## Parte 2: Gestión de Grupos

### 1. Creación de Grupos:

* sudo addgroup grupo1

```bash
Añadiendo el grupo `grupo1' (GID 1003) ...
Hecho.
```

### 2. Agregar Usuarios a Grupos:

* sudo adduser usuario1 grupo1

```bash
Añadiendo al usuario `usuario1' al grupo `grupo1' ...
Añadiendo al usuario usuario1 al grupo grupo1
Hecho.
```

### 3. Verificar Membresía:

* groups usuario1

```bash
usuario1 : usuario1 grupo1
```

### 4. Eliminar Grupo:

* sudo delgroup grupo2

```bash
Eliminando al grupo `grupo2' ...
Hecho.
```

## Parte 3: Gestión de Permisos

### 1. Creación de Archivos y Directorios

* sudo su usuario1
* echo "Actividad 3 SO1" > ~/archivo1.txt
* mkdir ~/directorio1
* echo "Archivo2, Actividad 3 SO1" > ~/directorio1/archivo2.txt

### 2. Verificar Permisos

* ls -l ~/archivo1.txt

```bash
-rw-rw-r-- 1 usuario1 usuario1 16 ago  9 18:59 /home/usuario1/archivo1.txt
```

* ls -ld ~/directorio1

```bash
drwxrwxr-x 2 usuario1 usuario1 4096 ago  9 19:01 /home/usuario1/directorio1
```

### 3. Modificar Permisos usando `chmod` con Modo Numérico

* chmod 640 ~/archivo1.txt

### 4. Modificar Permisos usando `chmod` con Modo Simbólico

* chmod u+x ~/directorio1/archivo2.txt

### 5. Cambiar el Grupo Propietario

* chown :grupo1 ~/directorio1/archivo2.txt

### 6. Configurar Permisos de Directorio

* chmod 750 ~/directorio1

### 7. Comprobación de Acceso

* Si aun esta en usuario1, 'exit' para regresar al usuario principal.
* sudo su usuario2
* cat usuario1/archivo1.txt

```
cat: usuario1/archivo1.txt: Permiso denegado

```
* cat usuario1/directorio1/archivo2.txt

```
cat: usuario1/directorio1/archivo2.txt: Permiso denegado
```

### 8. Verificación Final

* sudo su usuario1
* ls -l ~/archivo1.txt

```
-rw-r----- 1 usuario1 usuario1 16 ago  9 18:59 /home/usuario1/archivo1.txt
```

* ls -ld ~/directorio1

```
drwxr-x--- 2 usuario1 usuario1 4096 ago  9 19:01 /home/usuario1/directorio1
```

## ¿Por qué es importante gestionar correctamente los usuarios y permisos en un sistema operativo?

Es importante para la seguridad el sistema, ya que una gestion adecuada de usuarios y permisos contribuye una gran medida a la seguridad del sistema.

Es importante tambien para la proteccion de datos, asignar permisos adecuados a archivos y directorios evita que usuarios no autorizados accedan.

Por ultimo es importante porque asi cada usuario tiene sus propios archivos y datos privados.
