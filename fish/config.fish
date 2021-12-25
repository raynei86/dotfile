if status is-interactive
    fish_vi_key_bindings
    zoxide init fish --cmd j | source
    set fish_greeting
    set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
    set -x PAGER "bat -n"
    set -Ux EDITOR /usr/bin/nvim
end
