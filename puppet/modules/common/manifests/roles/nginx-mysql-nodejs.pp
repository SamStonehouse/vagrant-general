class common::roles::nginx-mysql-nodejs {
  include nginx
  include mysql
  include nodejs
  
  create_resources(mysql::db, hiera_hash(databases))
}
