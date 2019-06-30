function upload
	set time (date +%s)
	scp -pr $argv[1] dante@issaias.net:/var/www/issaias.net/files/$time-$argv[1] >/dev/null 2>&1
	echo 'https://files.issaias.net/'$time'-'$argv[1]
end
