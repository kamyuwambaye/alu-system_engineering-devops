# puppet code to configure OS so as to enable the user 'holberton' to login & open a file without error messages

exec { 'replace_hard_soft_limit_for_holberton_user':
  path    => '/usr/bin:/usr/sbin:/bin',
  command => 'echo "holberton hard nofile 4096" >> /etc/security/limits.conf; echo "holberton soft nofile 1024" >> /etc/security/limits.conf',
}
