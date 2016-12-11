class adrianconfig::fonts (
){
    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    file {"${my_homedir}/Library/Fonts":
        ensure => 'directory',
        recurse => true,
        source => "/Users/${my_username}/Dropbox/Config/Fonts"
    }
}
