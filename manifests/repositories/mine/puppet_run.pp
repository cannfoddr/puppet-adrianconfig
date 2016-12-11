class adrianconfig::repositories::mine::puppet_run {
    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    # repository { 'puppet_run':
    #     path    =>  "${my_sourcedir}/Mine/puppet_run",
    #     source  =>  'adriangilbert/puppet_run',
    # }
    #
    # file {"$my_sourcedir/Mine/puppet_run":
    #     owner   => $my_username,
    #     recurse => true,
    #     require => Repository['puppet_run']
    # }

}
