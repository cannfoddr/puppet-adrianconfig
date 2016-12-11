class adrianconfig::mas {

    include mas

    package { 'Tweetbot for Twitter':
        ensure   => 'installed',
        provider => 'mas',
    }
}
