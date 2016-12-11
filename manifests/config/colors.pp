class adrianconfig::config::colors (
    ){

    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    file {"/Users/${my_username}/Library/Colors":
        owner   => $my_username,
        ensure  => 'directory'
    }

    file {"/Users/${my_username}/Library/Colors/Airbnb Colors.clr":
        ensure => 'present',
        source => "/Users/${my_username}/Dropbox/Config/Colors/Airbnb Colors.clr",
        owner  => "${my_username}",
    }


}
