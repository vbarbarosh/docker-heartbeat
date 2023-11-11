const Promise = require('bluebird');
const cli = require('@vbarbarosh/node-helpers/src/cli');

cli(main);

async function main()
{
    for (let i = 0; true; ++i) {
        console.log(new Date().toJSON(), i);
        await Promise.delay(1000);
    }
}
