
# coding: utf-8

# In[ ]:


import mysql.connector
from mysql.connector import errorcode
import pandas

#Reads in your input for user name and password
myuser = input("User Name: ")
mypassw = input("Password: ")


# In[22]:


#This tries to connect to the database
try:
    cnx = mysql.connector.connect(user = myuser, password = mypassw,
                              host = '127.0.0.1',
                              database = 'datacleandb')
except mysql.connector.Error as err:
  if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
    print("Something is wrong with your user name or password")
  elif err.errno == errorcode.ER_BAD_DB_ERROR:
    print("Database does not exist")
  else:
    print(err)


# In[23]:


#|TEMP| Doing an SQL query to the database to make sure it is working
sqlcommand = 'SELECT COUNT(*) FROM mydata'
df = pandas.read_sql(sqlcommand, con = cnx)
print(df)


# In[24]:


#Closes the connection to the database
cnx.close()

