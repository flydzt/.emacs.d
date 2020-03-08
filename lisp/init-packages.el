(require 'cl)

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))



;;add whatever packages you want here
(defvar fengluyan/packages '(
				 company
				 counsel
				 evil
				 exec-path-from-shell
				 hungry-delete
				 js2-mode
				 magit
				 monokai-theme
				 nodejs-repl
				 popwin
				 smartparens
				 swiper
				 go-mode
				 projectile
				 )  "Default packages")

(setq package-selected-packages fengluyan/packages)

(defun fengluyan/packages-installed-p ()
  (loop for pkg in fengluyan/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (fengluyan/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg fengluyan/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; let emacs could find the execuable
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


(global-hungry-delete-mode)

;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)


;; config js2-mode for js files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(global-company-mode t)


(load-theme 'misterioso t)

(require 'popwin)    ;;when require, wh(setq company-minimum-prefix-length 1)en not require
(popwin-mode t)

(provide 'init-packages)
