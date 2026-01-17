# DOTFILES_2026_V1

![Dell Precision 5520](./assets/dell.png)

## Hardware 💻

- Laptop: Dell Precision 5520
- CPU: Intel i7-7820HQ @ 3.90 GHz
- GPU: Intel HD Graphics 630 (integrada)
- GPU: Nvidia Quadro M1200 (dedicada)
- RAM: 16 GiB DDR4
- Disk: SSD 512 GiB

## Sistema Operativo 🐧

- Distro principal: Artix Linux (init OpenRC)
- Kernel: linux-lts + headers correspondientes
- Gestor de paquetes: pacman + yay
- Compositor: DWL/Wayland

## Cómo usar este repositorio

1. Clona el repo dentro de tu `$HOME`.
2. Revisa y adapta las rutas en post-install.sh antes de ejecutarlo.
3. Lanza el script con permisos de ejecución:

```bash
chmod +x post-install.sh
./post-install.sh
```

### Listados de paquetes

- packagesDWL.txt: selección de paquetes base para el entorno Wayland.
- packagesSLS.txt: herramientas CLI, utilidades de sistema y extras opcionales.

Actualiza los listados antes de correr el script para evitar instalar software innecesario.

## Estado del proyecto 🏗️

> [!IMPORTANT]
> Repositorio en desarrollo activo. Algunas funciones aún están incompletas o sujetas a cambios.
