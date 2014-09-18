class redis {

  include redis::packages
  include redis::service
  
  Class['redis::packages'] -> Class['redis::service']
 
}