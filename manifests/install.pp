#
class onlinebackup::install inherits onlinebackup {

  package { $package_name:
    ensure => $package_ensure,
  }

}
