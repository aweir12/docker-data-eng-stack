#/bin/bash

sed -i "$ a c.NotebookApp.ip = \'*\'" /home/jovyan/.jupyter/jupyter_notebook_config.py
python /usr/local/bin/before-notebook.d/password.py

echo "Done Setting Password!"

while read p; do
  echo "Installing $p"
  pip install "$p"
done < /usr/local/bin/before-notebook.d/packages.txt