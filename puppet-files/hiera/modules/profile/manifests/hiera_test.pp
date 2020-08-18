class profile::hiera_test (
  Boolean             $ssl,
  Boolean             $backups_enabled,
  Optional[String[1]] $site_alias = undef,
) {

  $test_ssl    = hiera('profile::hiera_test::ssl',Boolean)
  $backup_enabled  = lookup('profile::hiera_test::backups_enabled',Boolean)



  file { '/tmp/hiera_test.txt':
    ensure  => file,
    content => @("END"),
               Data from profile::hiera_test
               -----
               profile::hiera_test::ssl: ${ssl}
               -----
               ${test_ssl}
               profile::hiera_test::backups_enabled: ${backups_enabled}
               ${backup_enabled}
               profile::hiera_test::site_alias: ${site_alias}
               |END
    owner   => root,
    mode    => '0644',
  }
}
