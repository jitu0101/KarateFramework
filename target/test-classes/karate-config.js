function fn() {
var env = karate.env; // get system property 'karate.env' karate.log('karate.env system property was:', env);
if (!env) {
env = 'dev';
}

var config = {
env: env,
myVarName: 'hello karate',
baseUrl: 'https://gorest.co.in',
tokenID: 'b66f057d9b936a10608ef7554bde7b2f8c627c5ddee399ec4e7e14a2e71129b1'
}

if (env == 'dev') {
// customize
// e.g. config.foo = 'bar';
} else if (env == 'e2e') {
// customize
}
return config;
}