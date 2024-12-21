<!-- Autor: Daniel Benjamin Perez Morales -->
<!-- GitHub: https://github.com/DanielPerezMoralesDev13 -->
<!-- Correo electrónico: danielperezdev@proton.me -->

# ***File: ~/.tmux.conf***

```bash
# ~/.config/tmux/tmux.conf

# Autor: Daniel Benjamin Perez Morales
# GitHub: https://github.com/DanielPerezMoralesDev13
# Correo electrónico: danielperezdev@proton.me

# List of plugins
set -g @plugin 'sainnhe/tmux-fzf'

set -g prefix2 C-a
# unbind C-b
# bind C-a send-prefix

# resizing using alt + arrow
bind -n M-Up resize-pane -U 5
bind -n M-Down resize-pane -D 5
bind -n M-Left resize-pane -L 5
bind -n M-Right resize-pane -R 5

# switch windows alt+number
bind-key -n M-1 select-window -t 1
bind-key -n M-2 select-window -t 2
bind-key -n M-3 select-window -t 3
bind-key -n M-4 select-window -t 4
bind-key -n M-5 select-window -t 5
bind-key -n M-6 select-window -t 6
bind-key -n M-7 select-window -t 7
bind-key -n M-8 select-window -t 8
bind-key -n M-9 select-window -t 9
# set -g @plugin 'catppuccin/tmux'
# set -g @catppuccin_flavour 'macchiato'

# floating window
# bind-key -n M-g if-shell -F '#{==:#{session_name},scratch}' {
#     detach-client
# } {
#     display-popup -E "tmux new-session -A -s scratch"
# }

# Floating window binding with tmux
bind-key -n M-g if-shell -F '#{==:#{session_name},Code }' {
    # Si estamos en la sesión 'Code ', nos desconectamos
    detach-client
} {
    # Si no estamos en la sesión 'Code ', creamos una nueva sesión y ventana flotante
    display-popup -E -w 80% -h 80% "tmux new-session -A -s 'Code ' -n 'Script 󰈺' 'fish'"
}



set -g @plugin 'Nybkox/tmux-kanagawa'
set -g @kanagawa-theme "dragon"

# available plugins: battery, cpu-usage, git, gpu-usage, ram-usage, tmux-ram-usage, network, network-bandwidth, network-ping, ssh-session, attached-clients, network-vpn, weather, time, mpc, spotify-tui, playerctl, kubernetes-context, synchronize-panes
set -g @kanagawa-plugins "cpu-usage ram-usage time"
# set -g @dracula-show-right-sep 
set -g @kanagawa-show-powerline true
set -g @kanagawa-show-timezone false

# Transparent Background
set -g @kanagawa-ignore-window-colors true

set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'christoomey/vim-tmux-navigator'
set-option -ga terminal-overrides ",xterm*:Tc"
set -g default-terminal "tmux-256color"
# set -g default-terminal "screen-256color"

set -sg escape-time 0 
set -g status-interval 0
set -g status-position top
set -g mode-keys vi
set -g mouse on

bind -r h previous-window # select previous window
bind -r l next-window     # select next window
bind -n C-M-l send-keys "clear -T $TERM && /home/linuxbrew/.linuxbrew/bin/tmux clear-history || clear -T $TERM || clear"\; send-keys Enter


# set -g @kanagawa-time-format "#[fg=yellow]#(date '+%a %d/%m/%Y %H:%M:%S %p')"
# set -g @kanagawa-time-format "#(date '+%a %d/%m/%Y %H:%M:%S %p')"
set -g @kanagawa-time-format "#(date '+%A, %F %R %p')"

# set -g @kanagawa-time-format "F "

if-shell 'uname | grep -q Darwin' 'bind-key -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "pbcopy"' 'bind-key -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "clip"'

# Recarga de configuración
unbind r
bind r source-file ~/.config/tmux/tmux.conf\; display-message "Config reloaded ~/.config/tmux/tmux.conf"

# nf-dev-codeigniter: 
# Crear la sesión en segundo plano con la primera ventana
new-session -d -s "Session " -n "Python3 "
# Ejecutar python3 en la primera ventana
send-keys 'clear -T $TERM && $(which tmux) clear-history && python3' C-m

# Crear la segunda ventana con el nombre 'Docker'
new-window -t "Session ":1 -n "Docker "
# (Descomenta esta línea si quieres ejecutar 'docker' en la segunda ventana)
# send-keys 'docker' C-m
send-keys 'clear -T $TERM && $(which tmux) clear-history' C-m

# Crear la tercera ventana con el nombre 'Server'
new-window -t "Session ":2 -n "Server "
# Ejecutar zsh en la tercera ventana
send-keys 'clear -T $TERM && $(which tmux) clear-history && zsh' C-m

# Seleccionar la primera ventana de la sesión
select-window -t "Session ":0

# Adjuntar automáticamente a la sesión
# tmux attach-session -d -t "Session "

# Inicialización del plugin manager
setenv -g TMUX_PLUGIN_MANAGER_PATH "$HOME/.tmux/plugins/"
if "test ! -d ~/.tmux/plugins/tpm" \
   "run 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm --depth=1 && ~/.tmux/plugins/tpm/bin/install_plugins'"
run -b '~/.tmux/plugins/tpm/tpm'
```
