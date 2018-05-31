# fist download and install Anaconda!
# https://www.anaconda.com/download/#linux

# cd ~/Downloads
# bash anaconda...

conda create -n myenv
conda install click colorama PyYAML
conda install jupyter
pip3 install jupyter --user


echo "c.ConsoleWidget.include_other_output = True" >> ~/.jupyter/jupyter_qtconsole_config.py
