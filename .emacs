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
;;  (load-theme 'tango-dark))
    (load-theme 'challenger-deep t))
(load-theme 'challenger-deep t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(c-basic-offset 4)
 ;;'(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages (quote (challenger-deep-theme org-edna)))
 '(python-indent-guess-indent-offset nil))


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



; switch statement to please style checker
(c-set-offset 'case-label '+)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; PACKAGES
;; Add Org Emacs
(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/contrib/lisp" t)
;; The following lines are always needed.  Choose your own keys.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)




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

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)





(setq mac-command-modifier 'meta
      mac-option-modifier 'none)
