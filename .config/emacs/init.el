(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq auto-save-default nil)
(setq make-backup-files nil)

(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" "83e0376b5df8d6a3fbdfffb9fb0e8cf41a11799d9471293a810deb7586c131e6" "6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" "4eb6fa2ee436e943b168a0cd8eab11afc0752aebb5d974bba2b2ddc8910fca8f" "6bdcff29f32f85a2d99f48377d6bfa362768e86189656f63adbf715ac5c1340b" "78c4238956c3000f977300c8a079a3a8a8d4d9fee2e68bad91123b58a4aa8588" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "c6da29e5267938b087cab199e0848114cefc425745fc42879a9067491c216d2d" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" default))
 '(delete-selection-mode nil)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(editorconfig term+ stupid-indent-mode fountain-mode vterm-toggle web-mode yaml-mode react-snippets ranger crdt go-mode multiple-cursors gruvbox-theme rustic typescript-mode lsp-mode pdf-tools magit magitt markdown-mode restclient vue-mode mbsync rainbow-mode))
 '(warning-suppress-log-types
   '((comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)))
 '(warning-suppress-types
   '((comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(term-color-black ((t (:background "black" :foreground "black"))))
 '(term-color-cyan ((t (:background "cyan" :foreground "cyan"))))
 '(term-color-green ((t (:background "green" :foreground "green"))))
 '(term-color-red ((t (:background "red" :foreground "red"))))
 '(term-color-yellow ((t (:background "yellow" :foreground "yellow")))))

;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "https://melpa.org/packages/")
   t))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; (load-theme 'one-light t)
(load-theme 'gruvbox-light-medium t)
(set-face-attribute 'default nil
		    :family "Cascadia Code PL, Light"
                    :height 105
                    :weight 'normal
                    :width 'normal)
(put 'upcase-region 'disabled nil)

(require 'restclient)
(require 'rainbow-mode)
(require 'multiple-cursors)
(global-auto-revert-mode)
(put 'dired-find-alternate-file 'disabled nil)

(add-to-list 'auto-mode-alist '("/tmp/mutt.*" . mail-mode))
(add-to-list 'auto-mode-alist '("/tmp/neomutt-" . mail-mode))

(setq erc-prompt "> ")
