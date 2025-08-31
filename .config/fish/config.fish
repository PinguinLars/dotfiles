if status is-interactive
    set -x EDITOR nvim
    #    hellwal -i ~/background/weeb.png --neon-mode &> /dev/null
end

function fish_user_key_bindings
    fish_vi_key_bindings --no-erase insert
end

function fish_greeting
  shuf -n 1 ~/.randomquotes.txt 
end

function starship_transient_prompt_func
    starship module character
end
starship init fish | source
enable_transience
