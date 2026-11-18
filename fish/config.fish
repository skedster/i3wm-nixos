if status is-interactive
    set -g fish_greeting

    if test -f ~/.cache/wal/colors.fish
        source ~/.cache/wal/colors.fish
    end

    fastfetch
    starship init fish | source
end
