(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(setq tramp-default-method "ssh")
(setq column-number-mode t)
(show-paren-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(package-selected-packages (quote (google-c-style helm-ros racket-mode solarized-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'solarized-light)
;; (require 'helm-ros)

;; (require 'helm)
(require 'helm-config)
;; (require 'helm-ros)
(require 'auto-complete)
(ac-config-default)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'nxml-mode-hook
	  `(lambda ()
	     (setq indent-tabs-mode nil)))

(add-to-list 'auto-mode-alist '("\\.launch\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.test\\'" . xml-mode))

(set-face-attribute 'default nil
		    :family "Anonymous Pro"
		    :height 110)
