#Instalação do apache
class web {

  package { 'apache2':
    ensure => installed,
  }

  -> file { '/etc/apache2/sites-enabled/web.conf':
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/web/web.conf',
  }

  ~> service { 'apache2':
    ensure => running,
  }
}
