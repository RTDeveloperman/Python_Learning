import mysql.connector
cnx = mysql.connector.connect(user='pyhton_user', password='******',
                              host='127.0.0.1',
                              database='python_test')
#       INsertDataBase
#cursor=cnx.cursor()
#cursor.execute("INSERT INTO people VALUES('jadi','m','40')")
#nx.commit()
#       End

query="SELECT * FROM people;"
cursor=cnx.cursor()
cursor.execute(query)
for (name,sex,age) in cursor:
    print('%s is a %s and the age is %s' % (name,sex,age))
cnx.close()
