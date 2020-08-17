$files = ['file1','file2','file3']

$files.each | $file | {
  file { "/tmp/${file}.txt":
    ensure  => present,
    content => "I am ${file}",
  }
}

