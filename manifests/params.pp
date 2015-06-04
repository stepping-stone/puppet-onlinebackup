class onlinebackup::params {

  $online_backup_name = 'OnlineBackup'

  $config_file_name        = "${online_backup_name}.conf"
  $config_file_template    = 'onlinebackup/onlinebackup.conf.erb'
  $destination_prefix_path = '~/incoming'
  $delete_exluded          = false
  $exclude_file_name       = "${online_backup_name}Exclude.conf"
  $include_file_name       = "${online_backup_name}Include.conf"
  $local_dir_path          = '/'
  $lock_file_name          = "${online_backup_name}.lock"
  $locktimeout             = 23
  $log_file_name           = "${online_backup_name}.log"
  $numeric_owners          = true
  $package_ensure          = 'present'
  $partition_file_name     = 'Partitions.txt'
  $perm_script_name        = 'SetPermissions.sh'
  $remote_dir_name         = $::hostname
  $remote_host             = 'online-backup.example.com'
  $remote_perms            = false
  $remote_user             = undef
  $rsync_bin               = '/usr/bin/rsync'
  $scan_disks              = '/dev/sda'
  $schedule_hour           = '03'
  $schedule_manage         = true
  $schedule_minute         = '00'
  $sfdisk_bin              = '/sbin/sfdisk'
  $snapshot_dir_path       = '/.snapshots'
  $ssh_bin                 = '/usr/bin/ssh'
  $ssh_prive_key_manage    = true
  $ssh_priv_key_file_name  = "${online_backup_name}.id_${$ssh_priv_key_file_type}"
  $ssh_priv_key_file_path  = '/root/.ssh'
  $ssh_priv_key_file_type  = 'rsa'
  $verbose                 = true

  $default_config_dir_path   = "/etc/${online_backup_name}"
  $default_lib_dir_path      = "/var/lib/${online_backup_name}"
  $default_lock_dir_path     = "/var/lock/${online_backup_name}"
  $default_log_dir_path      = '/var/log'

  case $::osfamily {
    'Gentoo': {
      $config_dir_path  = $default_config_dir_path
      $lib_dir_path     = $default_lib_dir_path
      $lock_dir_path    = $default_lock_dir_path
      $log_dir_path     = $default_log_dir_path
      $package_name     = ['net-misc/onlinebackup']
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }
}

