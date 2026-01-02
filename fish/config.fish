set fish_greeting
if status is-interactive
	starship init fish | source
end
set -gx EDITOR nvim



alias c="clear"
alias o="nvim"
alias smc="sudo mc"
alias g++="g++ -std=c++23"
alias hyprconfig="nvim .config/hypr/hyprland.conf"
alias doom="doom-ascii -iwad ~/doom-ascii/_unix/game/DOOM.WAD -erase -chars block -nograd -scaling 2"
