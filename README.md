# ⚙️ NixOS Configuration - JurassikDev34

Este repositorio contiene la configuración modular y declarativa del sistema operativo **NixOS**, organizada bajo el directorio `/etc/nixos`. Aquí reside la infraestructura básica de mi máquina personal, cuidadosamente dividida en archivos especializados para facilitar la mantenibilidad, la legibilidad y la reproducibilidad del sistema.

## 📂 Estructura del Repositorio

Cada archivo `.nix` representa un aspecto concreto del sistema, siguiendo el principio de separación de responsabilidades:

| Archivo                       | Descripción                                                                         |
|-------------------------------|-------------------------------------------------------------------------------------|
| `configuration.nix`           | Archivo principal que importa todos los módulos de configuración.                   |
| `hardware-configuration.nix`  | Configuración generada automáticamente por `nixos-generate-config`.                 |
| `hardware.nix`                | Archivo principal del hardware que importa automaticamente sus respectivos módulos. |
| `boot.nix`                    | Configuración del gestor de arranque y kernel.                                      |
| `locale.nix`                  | Idioma del sistema, zona horaria, codificación.                                     |
| `network.nix`                 | Interfaces de red, configuración de hostname y resolv.conf.                         |
| `users.nix`                   | Declaración de usuarios y sus permisos.                                             |
| `packages.nix`                | Lista de paquetes instalados globalmente en el sistema.                             |
| `services.nix`                | Declaración de servicios del sistema (systemd).                                     |
| `gnome.nix`                   | Configuración del entorno de escritorio GNOME (eliminación de bloatware).           |


```bash
sudo rm -rf /etc/nixos/
sudo ln -s ~/.nixos-config/nixos /etc/nixos
sudo nixos-rebuild switch

ln -s ~/.nixos-config/home-manager ~/.condig/home-manager
stow .
```
