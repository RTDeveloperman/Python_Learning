from ldap3 import  Server,Connection,ALL,NTLM
#conn = Connection('192.168.0.7', auto_bind=True)

def Connect_ldap(server,user,passw):
    server = Server(server, get_info=ALL)
    conn = Connection(server, user="%s"%user, password="%s"%passw, authentication=NTLM)
    conn.bind()
    print(conn.extend.standard.who_am_i())

def search_ldap(server):
     server = Server(server, get_info=ALL)
     conn = Connection(server, 'uid=admin,cn=users,cn=accounts,dc=internet,dc=com', 'Secret123')
     conn.bind()

     searchParameters = {'search_base': 'dc=internet,dc=com',
                         'search_filter': '(objectClass=Person)',
     'attributes': ['cn', 'givenName'],
     'paged_size': 5}
     while True:
         conn.search(**searchParameters)
         for entry in conn.entries:
             print(entry)
         cookie = conn.result['controls']['1.2.840.113556.1.4.319']['value']['cookie']
         if cookie:
           searchParameters['paged_cookie'] = cookie
         else:
             break

#Connect_ldap('192.168.0.7','internet.com\\rtahmasebi','*********')
search_ldap('192.168.0.7')
