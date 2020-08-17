  package { 'nginx':
    ensure => present,
  }
  service { "nginx":
      require => Package["nginx"],
      ensure => running,
      enable => true,
  } 


