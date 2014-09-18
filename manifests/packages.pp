class redis::packages {

   
  case $::osfamily {
          'RedHat': {
                $require = Yumrepo['epel']
                $packs   = "redis"
                package {
                  $packs:
                    require => $require,
                    ensure  => "installed";
                } 
                
          }
          'Debian': {
                $packs   = "redis-server"
                package {
                  $packs:                 
                    ensure => "installed";
                }
          }
  }
  
}