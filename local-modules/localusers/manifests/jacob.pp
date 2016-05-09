class localusers::jacob {
    user { 'jacob':
        ensure      => present,
        shell       => '/bin/bash',
        home        => '/home/jacob',  
        groups      => ['sudo'],
        managehome  => true,                    
        password    => '$6$qxvjC9Mf$T3ym6U1TRCNv7GNTIPogAlugR3h42gMvUFy5/minhF7M5zy4DZvjeXwJRRBBwbwCUD1N2aUf10eRkxYam8LL41',
    }
}

