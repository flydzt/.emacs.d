
(setq ring-bell-function 'ignore)


(global-auto-revert-mode t)

(global-linum-mode t)

(custom-set-variables
 '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/" t)))
 '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))


(add-hook 'after-init-hook #'auto-save-visited-mode)


(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(delete-selection-mode t)


(provide 'init-better-defaults)
