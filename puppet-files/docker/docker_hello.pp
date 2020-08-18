docker::run { 'hello-world':
  image => 'hello-world',
}
include docker
