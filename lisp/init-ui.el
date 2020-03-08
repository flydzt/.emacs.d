(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-splash-screen t)

(setq-default cursor-type 'bar)

(setq  initial-frame-alist (quote ((fullscreen . maximized))))

(set-default-font "Source Code Pro 16")


(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
            charset
            (font-spec :family "Microsoft Yahei" :size 26)))

(global-hl-line-mode t)

(provide 'init-ui)
