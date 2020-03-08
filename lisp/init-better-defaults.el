
(setq ring-bell-function 'ignore)


(global-auto-revert-mode t)

(global-linum-mode t)

(setq make-backup-files nil)

(setq auto-save-default nil)


(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(delete-selection-mode t)


(provide 'init-better-defaults)
