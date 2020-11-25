#!/bin/bash

pip install neovim --user
pip install neovim-remote --user

pip install ranger-fm --user

pip install grip

pip install ipython --user
cd ~/.ipython/profile_default
touch ipython_config.py
echo "c.TerminalInteractiveShell.editing_mode = 'vi'" >> ipython_config.py
cd ~/.ipython/profile_default/startup
cat <<EOT >> keybindings.py
from IPython import get_ipython
from prompt_toolkit.enums import DEFAULT_BUFFER
from prompt_toolkit.filters import HasFocus, ViInsertMode
from prompt_toolkit.key_binding.vi_state import InputMode

ip = get_ipython()

def switch_to_navigation_mode(event):
  vi_state = event.cli.vi_state
  vi_state.input_mode = InputMode.NAVIGATION

if getattr(ip, 'pt_app', None):
  registry = ip.pt_app.key_bindings
  registry.add_binding(u'j',u'k',
                       filter=(HasFocus(DEFAULT_BUFFER)
                                & ViInsertMode()))(switch_to_navigation_mode) 
EOT
