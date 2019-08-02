function fish_prompt
	printf "\e[5 q"
	set_color 757575
	echo -n (prompt_pwd)
	set_color e2ba6e
	echo " » "
end
