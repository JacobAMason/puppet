class cocos2dx (
    $owner
) {
    class { "androidstudio" :
        buildNumber => "143.2790544",
    }        

    common::wget { 'cocos2d-x-3.10.zip' :
        site => 'http://www.cocos2d-x.org/filedown/',
        cwd  => '/tmp/',
    }
   
    common::unzip { 'cocos2d-x-3.10.zip' :
        source  => '/tmp/',
        dest    => "/home/$owner/cocos2d-x/",
        require => [
            Common::Wget['cocos2d-x-3.10.zip'],
            Class["localusers::$owner"],
        ],
    }

    $dependencies = [ 'libx11-dev',
                      'libxmu-dev',
                      'libglu1-mesa-dev',
                      'libgl2ps-dev',
                      'libxi-dev',
                      'g++',
                      'libzip-dev',
                      'libpng12-dev',
                      'libcurl4-gnutls-dev',
                      'libfontconfig1-dev',
                      'libsqlite3-dev',
                      'libglew-dev',
                      'libssl-dev',
                      'gcc',
                      'cmake',
                    ]

    package { $dependencies : ensure => present }

}

