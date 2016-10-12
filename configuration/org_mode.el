(setq org-log-done 'time);; log times when you finish a note
(setq org-log-done 'note);; log message when you mark a task as done
(setq-default org-enforce-todo-dependencies t);; Don't mark a task done if it has subtasks
(setq org-startup-indented t);; Pretty indentation

;;better state highlighting
(setq org-todo-keyword-faces
      '(("REJECTED" . "blue") ("FAILED" . "yellow")))

;;Auto-wrap text
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
(add-hook 'org-mode-hook (lambda () (setq word-wrap t)))
