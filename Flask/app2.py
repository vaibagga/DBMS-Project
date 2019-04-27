from flask import Flask, render_template, request, redirect
import os
import yaml
from flaskext.mysql import MySQL
import numpy as np

app = Flask(__name__)

app.config['MYSQL_DATABASE_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = '1234'
app.config['MYSQL_DB'] = 'CourierManagementSystem'

mysql = MySQL(app)

@app.route('/')
def index():
	return render_template('index.html')


@app.route('/login.html', methods = ['GET', 'POST'])
def login():
	if request.method == 'POST':
		userDetails = request.form
		email = userDetails['email']
		password = userDetails['password']
		customers = pd.read_csv('customers.csv')
		## autherntication 
		cur.execute("SELECT ")
		return "SUCCESS"
	return render_template('login.html')

@app.route('/register.html', methods = ['GET', 'POST'])
def register():
	if request.method == 'POST':
		# Fetch form data
		userDetails = request.form
		FirstName = userDetails['firstname']
		LastName = userDetails['lastname']
		MiddleName = userDetails['middlename']
		email = userDetails['email']
		password = userDetails['password']
		AddressLine1 = userDetails['addressline1']
		AddressLine2 = userDetails['addressline2']
		AddressLine3 = userDetails['addressline3']
		PhoneNo = userDetails['phone']
		ZipCode = userDetails['pincode']
		customerId = np.random.randint(1000000)
		cursor = mysql.get_db().cursor()
		cur.execute("INSERT INTO CustomerLogin(CustomerUserName, CustomerId, Password) VALUES (%s, %d, %s)", (email, lastName, password))
		cur.execute("INSERT INTO Customers(CustomerId, FirstName, LastName, MiddleName, PhoneNo, AddressLine1, AddressLine2, AddressLine3, ZipCode, Email) VALUES (%d, %s, %s, %s, %d, %s, %s, %s, %d, %s)", (customerId, FirstName, LastName, MiddleName, PhoneNo, AddressLine1, AddressLine2, AddressLine3, ZipCode, email))
		mysql.get_db.commit()
		cur.close()
		return 'success'
	return render_template('register.html')


@app.route('/dashboard.html', methods = ['GET', 'POST'])
def dashboard(id):
	cur.execute(" SELECT * FROM Packages WHERE CustomerID = (%s)", id)
	return render_template('dashboard.html')



if __name__ == "__main__":
	app.run(debug = True)


