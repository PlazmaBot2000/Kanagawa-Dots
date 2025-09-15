set fish_greeting
if status is-interactive
	starship init fish | source
end
neofetch --ascii /home/plazma/.config/neofetch/arch_logo
set -gx EDITOR nvim


alias hyprconfig="nvim .config/hypr/hyprland.conf"


alias o="nvim"
alias winmount="sudo mount -t ntfs-3g /dev/nvme0n1p3 /mnt/windows/"
alias smc="sudo mc"
alias g++="g++ -std=c++23"
alias coding="cd /home/plazma/coding"
alias pabc="mono /bin/PascalABCNETLinux/pabcnetc.exe"
