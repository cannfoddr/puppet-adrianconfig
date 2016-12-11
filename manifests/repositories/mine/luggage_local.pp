class adrianconfig::repositories::mine::luggage_local{
    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    # repository { 'luggage_local':
    #     path    =>  "${my_sourcedir}/Mine/luggage_local",
    #     source  =>  'adriangilbert/luggage_local',
    #     require => Repository['the_luggage']
    # }

}
