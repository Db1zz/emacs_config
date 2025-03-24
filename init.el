(setq custom-file "~/.emacs.d/.emacs.custom.el")

(setq inhibit-startup-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode 1)
(global-display-line-numbers-mode)

(add-to-list 'custom-theme-load-path
             "~/emacs_dependencies/gruber-darker-theme")
(load-theme 'gruber-darker t)


(global-set-key (kbd "C-z") 'redo)
(global-set-key (kbd "C-v") 'yank)
(define-key input-decode-map (kbd "C-c") (kbd "M-w"))
(add-to-list 'term-bind-key-alist '("C-v" . term-paste))
