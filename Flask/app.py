from flask import Flask, render_template
import os

app = Flask(__name__)

app.config['SECRET_KEY'] = ''

@app.route("/")
@app.route("/home")
def index():
	return render_template("index.html")

@app.route("/login.html")
def login():
	return render_template("login.html")

@app.route("/register.html")
def register():
	return render_template("register.html")


print(os.getcwd())

if __name__ == "__main__":
	app.run(debug = True)