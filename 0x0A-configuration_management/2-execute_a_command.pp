#!/usr/bin/pup
# This file kill the process "killmenow"
exec { 'pkill':
  command  => 'pkill killmenow',
  provider => 'shell',
  user     => 'root',
  path     => '/usr/local/bin:/usr/bin/:/usr/sbin/:/bin/'
}
