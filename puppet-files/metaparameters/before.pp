 package { 'nginx':
    before => Service["nginx"],
    ensure => present,
  }
  service { "nginx":
      ensure => running,
      enable => true,
  }

