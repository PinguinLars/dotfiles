if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_user_paths /home/lars/.local/share/JetBrains/Toolbox/scripts $fish_user_paths
    # Set up fzf key bindings
    fzf --fish | source
end

function fish_user_key_bindings
    # Execute this once per mode that emacs bindings should be used in

    # Then execute the vi-bindings so they take precedence when there's a conflict.
    # Without --no-erase fish_vi_key_bindings will default to
    # resetting all bindings.
    # The argument specifies the initial mode (insert, "default" or visual).
    fish_vi_key_bindings --no-erase insert
    # Emulates vim's cursor shape behavior
end

function fish_vi_cursor
    # Set the normal and visual mode cursors to a block
    set fish_cursor_default block
    # Set the insert mode cursor to a line
    set fish_cursor_insert line
    # Set the replace mode cursors to an underscore
    set fish_cursor_replace_one underscore
    set fish_cursor_replace underscore
    # Set the external cursor to a line. The external cursor appears when a command is started.
    # The cursor shape takes the value of fish_cursor_default when fish_cursor_external is not specified.
    set fish_cursor_external line
    # The following variable can be used to configure cursor shape in
    # visual mode, but due to fish_cursor_default, is redundant here
    set fish_cursor_visual block
end

function fish_greeting
    echo Welcome to fish, the friendly interactive shell
    echo The time is (set_color yellow)(date +%T)(set_color normal) and this machine is called $hostname
    echo (set_color brgreen)Vim(set_color normal) mode is active
end
