class adrianconfig::osquery (
){
    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    # file {'/var/osquery':
    #     ensure => directory,
    # }

    # file {'/var/osquery/osquery.conf.d/':
    #     ensure => directory,
    # }

    # file {'/var/osquery/osquery.conf':
    #     ensure => present,
    #     source => 'puppet:///modules/adrianconfig/osquery/osquery.conf',
    #     mode   => 0644,
    # }

    # file {'/Library/LaunchDaemons/com.facebook.osqueryd.plist':
    #     ensure => present,
    #     source => 'puppet:///modules/adrianconfig/osquery/com.facebook.osqueryd.plist',
    #     mode   => 0644,
    # }

    # file {'/etc/newsyslog.d/com.facebook.osqueryd.conf':
    #     ensure => present,
    #     source => 'puppet:///modules/adrianconfig/osquery/com.facebook.osqueryd.conf',
    #     mode   => 0644,
    # }
    
}
