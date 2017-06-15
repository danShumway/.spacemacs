;;Start things off with cua-mode for better selections
;;This won't override vim bindings, which I'm fine with. I'll do that below.
(cua-mode t)

;;jump command: SPC-SPC
(spacemacs/set-leader-keys "SPC" 'evil-avy-goto-word-or-subword-1)

;;better undo/redo: u/U
(define-key evil-motion-state-map (kbd "u") 'undo)
(define-key evil-motion-state-map (kbd "U") 'undo-tree-redo)

;;save: ctrl-s - likely unnecessary, I don't really use it at this point
(global-unset-key (kbd "C-s"))
(global-set-key (kbd "C-s") 'save-buffer)

;;open org base: SPC-o-o - TODO: defun a function so that documentation shows up in editor
(spacemacs/set-leader-keys "oo" (lambda () (interactive)
                                  (find-file "~/Dropbox/Org/TODO.org")))


;;--------------none of the below is really working-------------------------
;;--------------it's also not immediately clear why it needs to-------------

;;(global-set-key (kbd "C-S-s") 'write-file);; save-as: ctrl-S

(local-unset-key (kbd "C-p"))
(global-unset-key (kbd "C-p"))
(global-set-key (kbd "C-p") 'helm-projectile-find-file)
