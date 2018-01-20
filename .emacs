
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
 '(custom-enabled-themes (quote (tango-dark))))


;; move windows shortcuts
;; old (Cisco) version using S- for shift
;(global-set-key (kbd "S-<left>") 'windmove-left)
;(global-set-key (kbd "S-<right>") 'windmove-right)
;(global-set-key (kbd "S-<up>") 'windmove-up)
;(global-set-key (kbd "S-<down>") 'windmove-down)
(global-set-key (kbd "M-[ d") 'windmove-left)
(global-set-key (kbd "M-[ c") 'windmove-right)
(global-set-key (kbd "M-[ a") 'windmove-up)
(global-set-key (kbd "M-[ b") 'windmove-down)



;;CODE STYLES
;; C Styleing
;;(setq c-default-style "1TBS"
;;                c-basic-offset 4)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(python-indent-guess-indent-offset nil))

; switch statement to please style checker
(c-set-offset 'case-label '+)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; PACKAGES
;; Add Melpa package repository
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line;; Add packages repository
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/"))

;;Auto-complete - melpa
;;(ac-config-default)
