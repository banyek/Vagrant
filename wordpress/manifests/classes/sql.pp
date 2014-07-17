class sql {
  package { "Percona-Server-shared-compat":
    ensure  => present,
    require => Package['percona-release'],
  }

  package { "Percona-Server-shared-56":
    ensure => present,
  }

  package { "Percona-Server-server-56":
    ensure  => present,
    require => Package['Percona-Server-shared-compat'],
    #require => [Package['Percona-Server-shared-compat'], File['/etc/my.cnf']],
  }

  package { "Percona-Server-client-56":
    ensure  => present,
    require => Package['Percona-Server-shared-compat'],
  }

  package { "percona-toolkit":
    ensure  => present,
    require => Package['Percona-Server-server-56'],
  }

  package { "percona-xtrabackup":
    ensure  => present,
    require => [Package['Percona-Server-shared-compat'], Package['Percona-Server-client-56'], Package['Percona-Server-server-56']],
  }
}
