function fish_prompt
	set_color red
	echo -n "["
	set_color yellow --bold
	echo -n (whoami)
	set_color green
	echo -n "@"
	set_color blue --bold
	echo -n (prompt_hostname)
	echo -n " "
	set_color magenta --bold
	echo -n (basename (pwd))
	set_color red
	echo -n "]"
	set_color white
	echo -n "\$ "
end
