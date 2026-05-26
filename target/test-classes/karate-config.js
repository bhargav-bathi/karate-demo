function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue'
  }
  
  if (env == 'dev') {
    config.baseUrl ='https://reqres.in';

     var local = karate.read('file:config-local.json')

    config.apiKey = local.apiKey;
    karate.log('Loaded API Key:', config.apiKey);
    config.email = local.email;
    config.password = local.password;
  } else if (env == 'e2e') {
    config.baseUrl =
    'https://jsonplaceholder.typicode.com';
  }
  return config;
}