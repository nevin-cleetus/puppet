class role::cms {
     include profile::ntp
     include profile::base
     include profile::apache
     include profile::php
     include profile::mysql
     include profile::wordpress
}
