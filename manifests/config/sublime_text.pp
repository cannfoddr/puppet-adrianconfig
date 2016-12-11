class adrianconfig::config::sublime_text (
    ){

    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    file {'/usr/local/bin/subl':
        ensure => 'link',
        target => '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl',
    }

}
