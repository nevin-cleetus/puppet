node default
{
  include role::baserole
}

node 'centos7' {
   include role::lampserver
}


node /example\.vm$/
{

}

