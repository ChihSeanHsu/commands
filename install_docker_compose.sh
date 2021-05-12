sh_c='sudo -E sh -c'
$sh_c "curl -L 'https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)' -o /usr/local/bin/docker-compose"
$sh_c "chmod +x /usr/local/bin/docker-compose"
