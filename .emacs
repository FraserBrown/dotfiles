
(setq column-number-mode t)
(setq-default show-trailing-whitespace t)
(global-font-lock-mode 1)
;;(normal-erase-is-backspace-mode 1)
(show-paren-mode t)
;;(setq visible-bell 1)
;;(setq-default tab-width 4)
;;(setq-default indent-tab-mode t)
(setq-default indent-tabs-mode nil) ;; use spaces instead of tabs


;; THEMES
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(if (display-graphic-p)
    (load-theme 'wombat)
  (load-theme 'tango-dark))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(c-basic-offset 4)
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes
   (quote
    ("c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" default)))
 '(python-indent-guess-indent-offset nil))


;;CODE STYLES
;; C Styleing
;;(setq c-default-style "1TBS"
;;                c-basic-offset 4)

; switch statement to please style checker
(c-set-offset 'case-label '+)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; PACKAGES
(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

;; This is only needed once, near the top of the file
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  (add-to-list 'load-path "./elpa/use-package-2.3/use-package.el")
  (require 'use-package))

(use-package helm
  :ensure t
  :bind (
         ("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-x f" . helm-recentf)
         ("M-y" . helm-show-kill-ring)
         ("C-x b" . helm-buffers-list)
         )
  )

(use-package powerline
  :ensure t
  :requires powerline
  :config
  (powerline-center-theme)
  )

(use-package auto-complete
  :ensure t
  :config
  (ac-config-default))

