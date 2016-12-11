class adrianconfig::crashplan (
){
    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    # file {'/Library/LaunchDaemons/com.crashplan.engine.plist':
    #     ensure => 'present',
    #     mode   => '644',
    #     owner  => 0,
    #     group  => 0,
    #     source => 'puppet:///modules/adrianconfig/crashplan/com.crashplan.engine.plist'
    # }
}
