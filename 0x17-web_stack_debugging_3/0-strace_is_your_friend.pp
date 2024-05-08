# Puppet manifest to fix Apache returning a 500 error

# Define an exec resource to restart Apache service
exec { 'restart_apache':
  command     => '/usr/sbin/service apache2 restart',
  path        => '/usr/sbin:/usr/bin:/sbin:/bin',
  refreshonly => true,
}

# Fix the issue causing 500 Internal Server Error
file { '/var/www/html/wp-content':
  ensure  => 'directory',
  owner   => 'www-data',
  group   => 'www-data',
  recurse => true,
  mode    => '0755',
}

file { '/var/www/html/wp-content/uploads':
  ensure  => 'directory',
  owner   => 'www-data',
  group   => 'www-data',
  recurse => true,
  mode    => '0755',
}

# Notify the exec resource to restart Apache when the fix is applied
notify { 'Restart Apache after fixing the issue':
  require => [File['/var/www/html/wp-content'], File['/var/www/html/wp-content/uploads']],
  subscribe => Exec['restart_apache'],
}
