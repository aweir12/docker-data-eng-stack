from notebook.auth import passwd
import os
password_text = os.environ['JUPYTER_PW']
password = passwd(password_text)
command = 'sed -i \"$ a c.NotebookApp.password = u\'' + password + '\'\" /home/jovyan/.jupyter/jupyter_notebook_config.py'
os.system(command)
