/* eslint valid-jsdoc: "off" */

'use strict';

/**
 * @param {Egg.EggAppInfo} appInfo app info
 */
module.exports = appInfo => {
  /**
   * built-in config
   * @type {Egg.EggAppConfig}
   **/
  const config = exports = {};

  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + '_1556096415798_3469';

  // add your middleware config here
  config.middleware = [];
  config.sequelize = {
    dialect: 'mysql', // support: mysql, mariadb, postgres, mssql
    dialectOptions: {
      charset: 'utf8mb4',
    },
    database: 'userAccount',
    host: 'localhost',
    port: '3306',
    username: 'root',
    password: 'hHn?13117867545',
    timezone: '+08:00',
  };
  config.security = {
    csrf: {
      enable: false,
    },
    domainWhiteList: [ 'http://192.168.28.80:8081' ],
  };
  config.cors = {
    credentials: true,
  };
  return {
    ...config,
  };
};
