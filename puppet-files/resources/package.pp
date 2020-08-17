package { 'tree':
  ensure => installed,
}

package { ['wget','curl','git']:
  ensure => installed,  
}
