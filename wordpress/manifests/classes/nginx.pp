class nginx {
  package { "nginx":
    ensure  => present,
    require => Package['epel-release'],
  }
  file { '/etc/nginx/conf.d/default.conf':
    ensure  => present,
    source  => 'puppet:///files/common/etc/nginx/conf.d/default.conf',
    owner   => 'root',
    group   => 'root',
    require => Package['nginx'],
  }
  service { "nginx":
    ensure => running
  }
}
