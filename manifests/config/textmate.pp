class adrianconfig::config::textmate (
    ){

    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    # TextMate

    # repository { 'puppet-textmate-bundle':
    #     source  => 'puppet-textmate-bundle/puppet-textmate-bundle',
    #     path    => "${my_sourcedir}/Others/puppet-textmate-bundle",
    # }

    # file { "/Users/${my_username}/Library/Application Support/TextMate/Managed/Bundles/Puppet.tmbundle":
    #     ensure  => link,
    #     force   => true,
    #     target  => "${my_sourcedir}/Others/puppet-textmate-bundle",
    #     require => Repository['puppet-textmate-bundle']
    # }

    mac_admin::osx_defaults { 'TextMate File Browser Placement':
        ensure => present,
        domain => 'com.macromates.TextMate.preview',
        key    => 'fileBrowserPlacement',
        value  => 'left',
    }

}
