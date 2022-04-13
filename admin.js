const { authenticate } = require('ldap-authentication')

async function auth() {

  // auth with admin
  let options = {
    ldapOpts: {
      url: 'ldap://ldap.forumsys.com',
      // tlsOptions: { rejectUnauthorized: false }
    },
    adminDn: 'cn=sonook,ou=testou,dc=company,dc=pri',
    adminPassword: 'kent@123',
    userPassword: 'password',
    userSearchBase: 'dc=company,dc=pri',
    userSearchFilter: '(uid=gauss)',
    // starttls: false
  }
  
  let user = await authenticate(options)
  console.log(user)