;;; packge ---- Summary
;;; Commentary:
;;; Code:

;; stop startup message
(setq inhibit-startup-screen t)

;; set up package sources
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; rest of the init.el file is loaded using org scripts for organisation
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ac-ispell helm exec-path-from-shell yasnippet which-key use-package try rtags moe-theme irony ggtags flycheck counsel color-theme codesearch cmake-mode cmake-ide auto-org-md auto-complete-clang ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
