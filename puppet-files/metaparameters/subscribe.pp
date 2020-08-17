  package { 'nginx':
    before => Service["nginx"],
    ensure => present,
  }

  file { 'nginx.conf':
    ensure => file,
    path   => '/etc/nginx/nginx.conf', 
    mode   => '0644',
  }
  service { "nginx":
      ensure => running,
      enable => true,
      subscribe => File['nginx.conf'],  
  } 
