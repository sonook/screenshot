const { authenticate } = require('ldap-authentication')

async function auth()
{
let authenticated = await authenticate({

            ldapOpts: { url: 'ldap://192.168.64.221:389' },

            adminDn: 'cn=sonook,OU=testou,dc=company,dc=pri',
            adminPassword: 'kent@123',
            userPassword: 'password',
            userSearchBase: 'dc=company,dc=pri',
            userSearchFilter: '(objectClass=user)',

            usernameAttribute: 'sAMAccountName',

            
        })
    }
        auth()
        