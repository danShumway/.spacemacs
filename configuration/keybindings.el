;;Start things off with cua-mode for better selections
;;This won't override vim bindings, which I'm fine with. I'll do that below.
(cua-mode t)


(global-unset-key (kbd "C-s"))
(global-set-key (kbd "C-s") 'save-buffer);; save: ctrl-s


;;(global-set-key (kbd "C-S-s") 'write-file);; save-as: ctrl-S

(local-unset-key (kbd "C-p"))
(global-unset-key (kbd "C-p"))
(global-set-key (kbd "C-p") 'helm-projectile-find-file)
