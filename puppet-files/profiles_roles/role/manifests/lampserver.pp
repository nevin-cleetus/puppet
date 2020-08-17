class role::lampserver {

  include profile::base

  include profile::apache
  include profile::php
  include profile::mysql
}


