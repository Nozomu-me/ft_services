<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress_db' );

/** MySQL database username */
define( 'DB_USER', 'amal' );

/** MySQL database password */
define( 'DB_PASSWORD', 'amal' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */

define('AUTH_KEY',         '*R?l<sd,!O+W4 Ewyexm}t9g.!a>U80-]?;^.%UO3T~0bL@BgD||E+#B@+sV?{9j');
define('SECURE_AUTH_KEY',  '{6T`|%*}l&m/|%>QB7;p{.PAV_zXkq/r0B9N;+Bnw1?Z(C+Z :XVN:1?,JnYNvBr');
define('LOGGED_IN_KEY',    ';wta;VP5~b1-xU=wKx&;+CSdf;V-(CYJvjhVXHFhC8%t|O9]?fOn[w=Cz|LP]-2q');
define('NONCE_KEY',        'u|.@{B`-bUhj=~bxxTE*_p^4qS+a-CFg/T=s,39(&FIZp~ &FbZY%@T1Q~+=EX2!');
define('AUTH_SALT',        '+]ho2O16;d+KY&~,>-A||eQN;8++1 (JhP2Jp0XHj]Jha~1fE=TO*d:=]KLUIH>m');
define('SECURE_AUTH_SALT', 'fm)cQ}_t-1w0si%~S^k!+MN)h/j&e--s{)}m@|0^I`+|wLx+#.-b8LaO<h7vcc#3');
define('LOGGED_IN_SALT',   'J!25`@/yTR`EMYM!6VXP.SDE(C|[{oS]R5(Ak(WL|7l+G?|O4+T>>`eBV`8E^BFU');
define('NONCE_SALT',       '`@<5^6]+/3B}lH:THP`Yiv}5P[MY1Pr%^o-J3E~+M0WX?-@&2S|_y3m+<2OeSGWM');
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
