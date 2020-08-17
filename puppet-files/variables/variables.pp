class myvar {
 
     $message = 'Magic of Puppet variables'
     $my_name = 'Mark'
     notice("Hello, ${my_name}! Nice to meet you.")  

     file {"/tmp/magic.txt":
        ensure     => present,
        content    => "$message",      
     }
}

include myvar
