(setq inhibit-startup-echo-area-message "USERNAME")
(setq inhibit-startup-screen t)
(setq initial-scratch-message "")
(setq make-backup-files nil)
(setq-default frame-title-format "%f")
(add-to-list 'default-frame-alist '(height . 24))
(add-to-list 'default-frame-alist '(width . 80))
(menu-bar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)

(setq evil-disable-insert-state-bindings t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(go-mode dracula-theme evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'evil)
(evil-mode 1)
(load-theme 'dracula t)
