(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	    '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives
	    '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Booststrap `use-package'  
(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" "b89ae2d35d2e18e4286c8be8aaecb41022c1a306070f64a66fd114310ade88aa" default)))
 '(package-selected-packages
   (quote
	(company-rtags flycheck-rtags powerline magit yasnippet-snippets elpy jedi flycheck htmlize ox-reveal orgalist which-key use-package try org-bullets gruvbox-theme evil counsel auto-complete ace-window)))
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 2.0)))))
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
