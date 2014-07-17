class repos {
  package { "percona-release":
    provider  => rpm,
    source    => "http://www.percona.com/downloads/percona-release/percona-release-0.0-1.x86_64.rpm",
    ensure    => installed,
  }
  package { "epel-release":
    provider  => rpm,
    source    => "http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm",
    ensure    => installed,
  }
}
