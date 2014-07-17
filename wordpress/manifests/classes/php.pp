class php {
  package { "php-fpm":
    ensure => installed
  }
  file { '/etc/php-fpm.d/www.conf':
    ensure => present,
    source => 'puppet:///files/common/etc/php-fpm.d/www.conf',
    owner  => 'root',
    group  => 'root',
  }
}
