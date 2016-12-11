class adrianconfig::config::atom (
    ){

    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    file {"${my_homedir}/.atom":
      ensure => 'link',
      target => "${my_homedir}/Dropbox/Config/Atom",
    }

}
