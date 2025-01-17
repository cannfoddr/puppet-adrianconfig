class adrianconfig::config::cocoapython (
    ){

    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    # CocoaPython Template for Xcode
    # repository { 'Xcode6CocoaPythonTemplates':
    #     source => 'gregneagle/Xcode6CocoaPythonTemplates',
    #     path   => "${my_sourcedir}/Others/Xcode6CocoaPythonTemplates",
    # }

    file { "/Users/${my_username}/Library/Developer":
        ensure => directory
    }

    file { "/Users/${my_username}/Library/Developer/Xcode":
        ensure => directory
    }

    file { "/Users/${my_username}/Library/Developer/Xcode/Templates":
        ensure  => link,
        target  => "${my_sourcedir}/Others/Xcode6CocoaPythonTemplates",
        # require => Repository['Xcode6CocoaPythonTemplates']
    }

}
