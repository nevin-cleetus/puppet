file { '/var/tmp/hello':
  ensure => directory,
  owner  => root,
  group  => root,
  mode   => '755',
}



exec { 'download_curl':
  command => "wget http://apachemirror.wuchna.com/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz",  
  cwd     => '/var/tmp/hello',
  path    => '/usr/bin:/user/sbin:/bin:/usr/local/bin',
  creates => '/opt/apache-maven-3.6.3-bin.tar.gz',  
}


exec { 'extract_maven_zip_file':
  command       => "tar -xvf apache-maven-3.6.3-bin.tar.gz",  
  cwd           => '/var/tmp/hello',
  path          => '/usr/bin:/user/sbin:/bin:/usr/local/bin',
  user          => 'root',  
}

