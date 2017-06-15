;;don't wrap lines in the editor (very annoying for most code)
(set-default 'truncate-lines t)

;;turn off spell-checking by default. Most of the time you don't want this
(setq-default dotspacemacs-configuration-layers
              '((spell-checking :variables spell-checking-enable-by-default nil)))

;;avoid keyboard-escape-quit blowing everything up in neotree
(defadvice keyboard-escape-quit
    (around keyboard-escape-quit-dont-close-windows activate)
  (let ((buffer-quit-function (lambda () ())))
    ad-do-it))

(setq version-control-diff-side 'left
      git-gutter-fr+-side 'left-fringe)
(global-git-gutter+-mode t)

;;don't chunk undo based on entering and exiting insert mode
(setq evil-want-fine-undo t)
