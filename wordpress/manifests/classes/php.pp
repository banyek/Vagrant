class php {
  package { "php-fpm":
    ensure => installed
  }
  package { "php-mysql":
    ensure => installed
  }
  file { '/etc/php-fpm.d/www.conf':
    ensure  => present,
    source  => 'puppet:///files/common/etc/php-fpm.d/www.conf',
    owner   => 'root',
    group   => 'root',
    require => Package['php-fpm'],
  }
  service { "php-fpm":
    ensure => running,
    require => Package['php-fpm'],
  }
}
