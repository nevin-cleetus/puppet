node "ip-172-31-47-221.ap-southeast-1.compute.internal" {

        user { 'mitchell':
                ensure     => present,
                uid        => '501',
                shell      => '/bin/bash',
                home       => '/home/mitchell'
        }

        package { 'tree':
            ensure => installed,
        }
        package { ['wget','curl','git']:
           ensure => installed,
        }
        user { 'deploy':
                ensure => absent,
        }
}

