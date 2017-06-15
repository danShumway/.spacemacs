#!/bin/bash

ln -sf $(pwd)/configuration/.spacemacs ~/.spacemacs
ln -sf $(pwd)/configuration/base.el ~/.emacs.d/private/base.el
ln -sf $(pwd)/configuration/keybindings.el ~/.emacs.d/private/keybindings.el
ln -sf $(pwd)/configuration/org_mode.el ~/.emacs.d/private/org_mode.el
