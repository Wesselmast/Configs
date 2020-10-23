(require 'package)
(package-initialize)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; Ivy
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

;; Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(setq custom-safe-themes t)
(load-theme 'zenburn)

;; Syntax
(add-to-list 'load-path "~/.emacs.d/syntax/")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(autoload 'glsl-mode "glsl-mode" "GLSL editing mode." t)
(add-to-list 'auto-mode-alist '("\\.shader$" . glsl-mode))
(add-to-list 'interpreter-mode-alist '("shader" . glsl-mode))

(autoload 'hlsl-mode "hlsl-mode" "HLSL editing mode." t)
(add-to-list 'auto-mode-alist '("\\.hlsl$" . hlsl-mode))
(add-to-list 'interpreter-mode-alist '("hlsl" . hlsl-mode))

;; Startup
(tool-bar-mode 0)
(menu-bar-mode 0)
(set-scroll-bar-mode nil)
(add-hook 'prog-mode-hook 'linum-mode)
(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)
(setq initial-major-mode 'text-mode)
(setq make-backup-files nil)
(setq auto-save-default nil)
(delete-selection-mode 1)

(electric-indent-mode -1)

;; Keybinds
(global-set-key (kbd "C-x C-o") 'ff-find-other-file)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(csharp-mode counsel ivy)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
