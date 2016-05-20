class pycharm (
    $buildNumber = "2016.1.3",
) {
    include java

    common::wget { "pycharm-community-$buildNumber.tar.gz" :
        site => 'https://download.jetbrains.com/python/',
        cwd  => '/tmp/',
    }

    common::unzip { "pycharm-community-$buildNumber.tar.gz":
        source  => '/tmp/',
        dest    => '/opt/',
        require => Common::Wget["pycharm-community-$buildNumber.tar.gz"],
    }
}

