;; add melpa package source
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; display line number
(global-linum-mode t)

;; turn off tool bar mode
(tool-bar-mode -1)

;; turn off scroll bar
(scroll-bar-mode -1)

;; trun off inhibit splash screen
(setq inhibit-splash-screen t)

;; trun off electric indent mode
;; (electric-indent-mode -1)

;; change mouse cursor style
(setq-default cursor-type 'bar)

;; trun off backup files
(setq make-backup-files nil)

;; trun off auto save
(setq auto-save-default nil)

;; trun on popwin
(popwin-mode t)

;; enable rust lsp
(require 'rust-mode)
(add-hook 'rust-mode-hook #'lsp)
(define-key rust-mode-map (kbd "C-c C-c") 'rust-run)

;; turn on company
(add-hook 'after-init-hook 'global-company-mode)

;; trun on delete section
(delete-selection-mode t)

;; trun on full screen
(setq initial-frame-alist
      (quote ((fullscreen . maximized))))

;; trun on parentless match
(show-paren-mode t)

;; auto load file
(global-auto-revert-mode t)

;; high light current line
(global-hl-line-mode t)

;; enable recent files
;;(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)

;; load monokai theme
(load-theme 'monokai t)

;; hungry delete
;;(require 'hungry-delete)
(global-hungry-delete-mode t)

;; enable smartparens
(smartparens-global-mode t)

;; set source code pro font
(set-frame-font "Source Code Pro 16")

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; enter read only mode after open file
;;(add-hook 'find-file-hook #'read-only-mode)

;; For golang auto complete
(add-hook 'go-mode-hook #'lsp)

(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/elpa/yasnippet-snippets-20220221.1234/snippets"))
(yas-global-mode 1)

;; Set up before-save hooks to format buffer and add/delete imports.
;; Make sure you don't have other gofmt/goimports hooks enabled.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

;; For html/css/js auto complete
(add-hook 'html-mode-hook #'lsp)
(add-hook 'css-mode-hook #'lsp)
(add-hook 'js-mode-hook #'lsp)

;; For python virtualenv
(require 'auto-virtualenv)
(add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)

;; for c/c++
(add-hook 'c-mode-hook #'lsp)
(setq-default c-basic-offset 4)
(add-hook 'c-mode-common-hook #'(lambda () (c-toggle-auto-newline 1)))

;; for python auto complete
(require 'lsp-python-ms)
(add-hook 'python-mode-hook #'lsp)
(setq lsp-python-ms-executable
      "~/.emacs.d/mspyls/Microsoft.Python.LanguageServer")

;; F key mapping
(global-set-key (kbd "<f7>") 'treemacs-select-window)
(global-set-key (kbd "<f8>") 'project-find-file)
(global-set-key (kbd "<f9>") 'project-find-regexp)


;; enhance emacs
;; https://oremacs.com/swiper/#introduction
;; Ivy is split into three packages: ivy, swiper and counsel;
;; by installing counsel, the other two are brought in as dependencies.
;; If you are not interested in the extra functionality provided
;; by swiper and counsel, you can install only ivy.
(ivy-mode t)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;; Add by emacs package system
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.02)
 '(company-minimum-prefix-length 1)
 '(lsp-python-ms-auto-install-server nil)
 '(lsp-python-ms-cache "System")
 '(lsp-python-ms-dir "~/.emacs.d/mspyls")
 '(package-selected-packages
   '(yasnippet-snippets magit sdcv cargo-mode rust-mode yasnippet exec-path-from-shell go-mode treemacs lsp-python-ms lsp-mode auto-virtualenv popwin smartparens counsel swiper hungry-delete monokai-theme company))
 '(python-indent-guess-indent-offset nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
