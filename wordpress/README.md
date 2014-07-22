Worpress installation 

Percona Server 5.6
Nginx
PHP-FPM

Master + Slave wordpress instances 
web1 runs the master, web2 runs the slave

To finish the install, 
* clean up /var/lib/mysql directory, and extract the master_dump or db_dump files there
* untar the wordpress package from /vagrant to /usr/share/nginx directory

Users:
  * Wordpress admin user:
    admin/admin
  * MySQL replication user:
    repl/repl
  * Wordpress read only user:
    wpro / wp-pass
  * Wordpress read/write user:
    wp / wp-pass
