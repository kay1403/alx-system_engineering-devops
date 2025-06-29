# 100-puppet_ssh_config.pp
# Configure SSH client to use private key ~/.ssh/school and disable password auth

file_line { 'Declare identity file':
  path  => '/home/ubuntu/.ssh/config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^\s*IdentityFile',
}

file_line { 'Turn off passwd auth':
  path  => '/home/ubuntu/.ssh/config',
  line  => '    PasswordAuthentication no',
  match => '^\s*PasswordAuthentication',
}
