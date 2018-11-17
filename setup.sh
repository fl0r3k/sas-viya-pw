#!/bin/bash

jupyter notebook --generate-config

cat > ../.jupyter/jupyter_notebook_config.py << EOF
c.NotebookApp.ip = '*'
c.NotebookApp.port = 9999
c.NotebookApp.open_browser = False
c.NotebookApp.password = 'sha1:f82a96af7381:732e193c817a7039f936f5410195b6791d9460ce'
EOF

jupyter notebook 
