class common {
  # I don't want firewall on dev vagrant machines
  service { "iptables":
    ensure => stopped
  }
}
