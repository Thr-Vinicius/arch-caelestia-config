# Arch Caelestia Config

Repositório com anotações, listas de pacotes, scripts e configurações do meu setup Arch Linux com Caelestia.

## Objetivo

Documentar meu ambiente Linux pessoal, registrando ferramentas utilizadas, organização do sistema, pacotes instalados e aprendizados durante o uso do Arch Linux.

## Estrutura

- `packages/`: listas de pacotes instalados;
- `scripts/`: scripts simples de manutenção;
- `docs/`: anotações e aprendizados;
- `dotfiles/`: arquivos de configuração selecionados;
- `imgs/`: capturas de tela do ambiente.

## Comandos Úteis

Atualizar o sistema:

```bash
sudo pacman -Syu
yay -Syu
flatpak update
```
## Desktop

<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/c5d58ba1-38a5-4ab3-9a71-06b908b0a43c" />

## Zen Browser

Utilizo o Zen Browser como navegador principal.

Mantenho backups locais das configurações usando o script:

```bash
backup-zen
```
<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/ac5f42a6-24d5-4106-b417-ce0087134294" />

## Kitty

Utilizo o Kitty como terminal principal.

As configurações personalizadas incluem:

- tema integrado ao ambiente Caelestia;
- transparência;
- ajustes visuais;
- configurações de fonte;
- personalizações de aparência.

As configurações podem ser encontradas em:

```bash
dotfiles/.config/kitty
```
<img width="1832" height="1171" alt="image" src="https://github.com/user-attachments/assets/5d6f9afd-5f2a-43c1-9532-30e9d0e86764" />
