class adrianconfig::config::the_luggage (
    ){

    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    # repository { 'the_luggage':
    #     path    =>  "${my_sourcedir}/Others/luggage",
    #     source  =>  'unixorn/luggage',
    # }

    exec {'Install the luggage':
        command => '/usr/bin/make bootstrap_files',
        cwd     => "${my_sourcedir}/Others/luggage",
        creates => '/usr/local/share/luggage/luggage.make',
        #require => Repository['the_luggage']
    }

    file { '/usr/local/share/luggage/luggage.local':
        ensure  => link,
        target  => "${my_sourcedir}/Mine/luggage_local/luggage.local",
        require => Exec['Install the luggage']
    }

}
