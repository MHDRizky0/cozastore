from django import forms
from django.contrib.auth.models import User

class FormLogin(forms.Form):
  username = forms.CharField(widget=forms.TextInput(attrs={'placeholder':'Username'}))
  password = forms.CharField(widget=forms.PasswordInput())