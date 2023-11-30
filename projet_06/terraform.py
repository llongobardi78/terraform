import subprocess
import sys

nom_du_repo = sys.argv[1]

subprocess.run(['terraform', 'apply', '-var', f'nom_du_repo={nom_du_repo}'])
