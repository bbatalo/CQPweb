server {
	listen 80;
	listen [::]:80;

	root /var/www/cqpweb.corpuslinguist.com/;
	index index.php index.html index.html index.nginx-debian.html;

	server_name cqpweb.corpuslinguist.com www.cqpweb.corpuslinguist.com;

	location / {
		try_files $uri $uri/ =404;
	}

	location ~ \.php$ {
		include snippets/fastcgi-php.conf;
		fastcgi_pass unix:/var/run/php/php8.0-fpm.sock;

		client_max_body_size 80M;
	}

	location ~ /\.ht {
                deny all;
        }

}