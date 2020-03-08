(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-splash-screen t)

(setq-default cursor-type 'bar)

(setq  initial-frame-alist (quote ((fullscreen . maximized))))

(set-default-font "Source Code Pro 16")

(set-fontset-font"fontset-default"
		 'gb18030'("微软雅黑"."unicode-bmp"))

(global-hl-line-mode t)

(provide 'init-ui)
