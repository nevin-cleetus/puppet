$web_directories = [
  '/var/www/',
  '/var/www/html',
]

file { $web_directories:
  ensure => 'directory',
  mode   => '2775',
}

