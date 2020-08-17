  package { 'nginx':
    before => Service["nginx"],
    ensure => present,
  }

  file { 'nginx.conf':
    ensure => file,
    path   => '/etc/nginx/nginx.conf', 
    mode   => '0644',
    notify => Service["nginx"],
  }
  service { "nginx":
      ensure => running,
      enable => true,
  } 
