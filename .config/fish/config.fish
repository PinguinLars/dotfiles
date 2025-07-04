if status is-interactive
  set -x EDITOR nvim
end

function fish_user_key_bindings
  fish_vi_key_bindings --no-erase insert
end

function fish_greeting

end