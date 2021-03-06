<?php

if (getenv('LANDO') === 'ON') {
  $databases['default']['default'] = [
    'driver' => 'mysql',
    'database' => getenv('DB_NAME'),
    'username' => getenv('DB_USER'),
    'password' => getenv('DB_PASSWORD'),
    'host' => getenv('DB_HOST'),
    'port' => getenv('DB_PORT'),
  ];

  $settings['hash_salt'] = md5(getenv('LANDO_HOST_IP'));
}
