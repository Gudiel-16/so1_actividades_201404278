# Actividad 4

* Abrir consola en directorio del archivo .sh.
* Dar permisos:

```bash
chmod +x actividad4.sh
```

* Ejecutar, para verificar que funciona:

```bash
./actividad4.sh
```

* Crear systemd unit de tipo servicio:

```bash
sudo nano /etc/systemd/system/actividad.service
```

* Agregar lo siguiente en el archivo y guardamos.
    * **[Unit]**: Proporciona información que se mostrará cuando se liste el servicio.
    * **ExecStart**:  Es la ruta completa donde esta el script a ejecutar.
    * **Restart=always**: Indica que el servicio se reiniciará automáticamente si se detiene o falla.
    * **[Install]**: Indica cuando se debe habilitar el servicio.
    * **WantedBy**: El servicio se habilita cuando se inicia el nivel de ejecución multiusuario 'multi-user.target'.
    * **multi-user.target**: Se inicia durante el arranque del sistema

```
[Unit]
Description=Mi Script Hola Mundo

[Service]
ExecStart=/home/chris/USAC/SOPES1/CLASE/ACTIVIDADES/so1_actividades_201404278/actividad4/actividad4.sh
Restart=always

[Install]
WantedBy=multi-user.target
```

* Acualizar el systemd para que come en cuenta el nuevo servicio:

```bash
sudo systemctl daemon-reload
```

* Habilitar servicio para que inicie automaticamente al arrancar:

```bash
sudo systemctl enable actividad.service
```

* Iniciar el servicio:

```bash
sudo systemctl start actividad.service
```

* Verificar el estado del servicio:

```
sudo systemctl status actividad.service
```

* Detener el servicio:

```bash
sudo systemctl stop actividad.service
```

* Desactivar el servicio:

```bash
sudo systemctl disable actividad.service
```

* Eliminar archivo:

```bash
sudo rm /etc/systemd/system/actividad.service
```

* Acualizar el systemd nuevamente:

```bash
sudo systemctl daemon-reload
```