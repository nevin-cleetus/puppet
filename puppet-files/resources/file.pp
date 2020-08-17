file { '/opt/gitrepo':
  ensure => directory,
  owner  => root,
  group  => root,
  mode   => '755',
}

file { '/opt/gitrepo/Hello.java':
  ensure  => present,
  owner   => root,
  group   => root,
  mode    => '755',
  content => 'class Hello { public static void main(String args) { System.out.println("Hello") }}';
}


