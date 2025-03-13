import os
import yaml
import subprocess

def install():
    dot_files = os.path.dirname(__file__)

    def pwd_for(filename, target):
        return os.path.normpath(target + "/" + filename)

    def install_files(files, cmd):
        for source, destination in files.items():
            source = pwd_for(source, dot_files)
            destination = os.path.expanduser(destination)
            os.makedirs(os.path.dirname(destination), exist_ok=True)
            print(" ".join(cmd + [source, destination]))
            subprocess.run(cmd + [source, destination])

    with open(pwd_for("install.yml", dot_files), 'r') as file:
        plan = yaml.safe_load(file)

    install_files(plan[':link'], ['ln', '-sinF'])
    install_files(plan[':copy'], ['cp', '-n'])

if __name__ == "__main__":
    install()
