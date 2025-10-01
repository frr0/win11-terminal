# win11-terminal
win11-terminal

1. scaricare scoop

```sh
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

2. scaricare con scoop nushell nvim lazygit btop

```sh
# Install to user scope (by default).
winget install nushell
# Machine scope installation (Run as admin).
winget install nushell --scope machine
# Add the extras bucket
scoop bucket add extras
# Install lazygit
scoop install lazygit
scoop bucket add main
scoop install neovim
scoop install bottom
scoop install zoxide bat fd ripgrep fzf delta gh tldr lsd httpie navi
```
3. ssh key

come amministratore

```sh
Start-Service ssh-agent
Set-Service -Name ssh-agent -StartupType Automatic
```
poi

```sh
ssh-keygen -t ed25519 -C "tuo_indirizzo_email@example.com"
ssh-add ~\.ssh\id_ed25519
```
copia la key con cat

Vai su https://github.com/settings/keys

Clicca su New SSH key

Dai un titolo (es. "PC Windows 11")

Incolla la chiave (Ctrl+V)

Salva

test connessione:

```sh
ssh -T git@github.com
```


4. importare i file
