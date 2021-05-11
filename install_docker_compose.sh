#!/bin/sh
set -e
user="$(id -un 2>/dev/null || true)"
sh_c='sh -c'
if [ "$user" != 'root' ]; then
  if command_exists sudo; then
    sh_c='sudo -E sh -c'
  elif command_exists su; then
    sh_c='su -c'
  else
    cat >&2 <<-'EOF'
    Error: this installer needs the ability to run commands as root.
    We are unable to find either "sudo" or "su" available to make this happen.
    EOF
    exit 1
  fi
fi

$sh_c "curl -L 'https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)' -o /usr/local/bin/docker-compose"
$sh_c "chmod +x /usr/local/bin/docker-compose"
