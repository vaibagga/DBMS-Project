from flask_wtf import FlaskForm
from wtfrom import StringField, PasswordField
from wtforms.valudators iport DataRequired, Length

class LoginForm(FlaskForm):
	firstName = SringField('First Name', validators = [DataRequired()])
	lastName = StringField('Last Name', validators = [DataRequired()])
	email = StringField('Email',
						validators = [DataRequired(), Email()])

	password = PasswordField('Password', validators = [DataRequired(), ])
	confirmPassword = PasswordField('Password', validators = [DataRequired(), EqualTo('password')])
	submit = SubmitField('Submit')
