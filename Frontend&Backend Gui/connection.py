import mysql.connector as mdb

# cnx = mysql.connector.connect(user='localhost', password='bise2017',
#                             host='3306', auth_plugin='mysql_native_password')
def connect(db):
    cnx = mdb.connect(host='localhost', user='root', password='bise2017', db=db,auth_plugin='caching_sha2_password')
    return  cnx
    #(host='localhost', user='root', password='bise2017', db='project')
# cnx = mdb.connect('localhost','root','bise2017','project')

# import MySQLdb as mdb


# conn = mdb.connect('ip_address', 'user_name', 'pass_word', 'database_name')
