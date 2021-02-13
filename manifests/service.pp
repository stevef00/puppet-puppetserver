# docs
class puppetserver::service ($manage_puppet_agent=true) {

  service { 'puppetserver':
    ensure => 'running',
    enable => true,
  }

  if $manage_puppet_agent {
    service { 'puppet':
      ensure => 'running',
      enable => true,
    }
  }

}
