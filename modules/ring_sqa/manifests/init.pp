class ring_sqa {

    package { 'ring-sqa':
        ensure      => 'latest',
        provider    => 'gem',
        require     => [Alternatives['ruby'], Alternatives['gem']],
    }

    alternatives { 'ruby':
        path    => '/usr/bin/ruby1.9.1',
        require => Package['ruby1.9.3'],
    }

    alternatives { 'gem':
        path    => '/usr/bin/gem1.9.1',
        require => Package['ruby1.9.3'],
    }
}