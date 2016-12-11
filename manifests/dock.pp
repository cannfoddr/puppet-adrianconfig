class adrianconfig::dock (
){
    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    outset::login_every{'Dock.sh':
        script => 'puppet:///modules/adrianconfig/dock/dock.sh'
    }

    if $::sp_serial_number == 'C02PW1LAFVH8'{
        outset::login_every{'work-dock.sh':
            script   => 'puppet:///modules/adrianconfig/dock/work-dock.sh',
            priority => 20,
        }
    }
}
