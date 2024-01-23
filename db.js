const Pool = require('pg').Pool;

const pool = new Pool({
    user: 'postgres',
    password: 'MclarenF1$',
    host: 'localhost',
    port: 5432,
    database: 'cf',//it will be the name of the database
    //max: 10, // Maximum number of connections in the pool
    //idleTimeoutMillis: 30000, // Time a connection can be idle before being closed
});

module.exports = pool;
