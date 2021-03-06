class sc::wiki::file {

  file { '/var/log/unicorn':
    ensure => directory,
    owner  => 'root',
    group  => 'web',
  }

  $sock_path   = '/var/run/unicorn_wiki.sock'
  $listen = 8080
  $server_name = 'wiki.hifumi.info'

  file { '/etc/nginx/conf.d/wiki.conf':
    content => template('sc/etc/nginx/conf.d/wiki.conf.erb'),
  }

  file { '/etc/logrotate.d/unicorn':
    source  => 'puppet:///modules/sc/etc/logrotate.d/unicorn',
    require => Package['logrotate'],
  }

}
