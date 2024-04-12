set fish_greeting "Hello, world!"
if status is-interactive
    starship init fish | source
end
