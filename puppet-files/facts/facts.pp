class factscheck {

   if $facts['is_virtual'] {
      warning('Tried to include class ntp on virtual machine; this node might be misclassified.')
      $content = 'It is a virtual box'
   } elsif $facts['os']['family'] == 'RedHat' {
      warning('This NTP module does not yet work on our Mac laptops.')
      $content  = 'RedHat'
   } else {
      $content = $facts["os"]["family"] 
   }


   file {'/tmp/facts.txt':
       ensure  => present,
       content =>  $content      
   }

}

include factscheck
