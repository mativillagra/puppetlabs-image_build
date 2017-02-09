Service {
  provider => dummy
}

class { 'nginx': }

nginx::resource::vhost { 'default':
  www_root => '/var/www/html',
}

file { [ '/var/www',
         '/var/www/html', ]: 
       ensure  => directory,
}

file { '/var/www/html/index.html':
  ensure  => present,
  content => 'Hello Matias!!',
}

exec { 'Disable Nginx daemon mode':
  path    => '/bin',
  command => 'echo "daemon off;" >> /etc/nginx/nginx.conf',
  unless  => 'grep "daemon off" /etc/nginx/nginx.conf',
}
