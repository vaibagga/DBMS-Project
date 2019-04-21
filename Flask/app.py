from flask import Flask, render_template, request, redirect
import os
import yaml
from flaskext.mysql import MySQL
import numpy as np
import pandas as pd

app = Flask(__name__)


@app.route('/')
def index():
	return render_template('index.html')
@app.route('/login.html', methods = ['GET', 'POST'])
def login():
	userDetails = request.form
	email = userDetails['email']
	password = userDetails['password']
	customers = pd.read_csv('customers.csv')
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

		customerId = np.random.randint(0, 100000);
		with open('Database/customers.csv', 'a') as fd:
			fd.write("\n" + str(customerId) + ","  + FirstName + "," + LastName + ","  + MiddleName + "," + str(PhoneNo) + "," + AddressLine1 + "," + "," + AddressLine2 + "," + AddressLine3 + "," + str(ZipCode) +  email)
		with open('Database/customerlogin.csv','a') as fd:
			fd.write("\n"+email + "," + str(customerId) + "," + password)
		return "SUCCESS"
	return render_template('register.html')


@app.route('/dashboard.html', methods = ['GET', 'POST'])
def dashboard():
	return render_template('dashboard.html')



if __name__ == "__main__":
	app.run(debug = True)


