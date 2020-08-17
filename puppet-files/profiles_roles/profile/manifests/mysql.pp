class profile::mysql {
    class {'mysql::server':
       root_password    =>  'mypassword'
       remove_default_accounts => true,   

    }  
    include mysql::client

}
