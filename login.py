from flask_wtf import FlaskForm
from wtfrom import StringField, PasswordField
from wtforms.valudators iport DataRequired, Length

class LoginForm(FlaskForm):
	email = StringField('Email',
						validators = [DataRequired(), Email()])
	password = PasswordField('Password', validators = [DataRequired()])
	submit = SubmitField('Submit')