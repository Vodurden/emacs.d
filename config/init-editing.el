;;;; Auto-Complete config
(require-package 'auto-complete)
(require-package 'fuzzy)
(require 'auto-complete)
(require 'auto-complete-config)

(setq ac-auto-show-menu t)
(setq ac-auto-start t)
(setq ac-quick-help-delay 0.3)
(setq ac-quick-help-height 30)
(setq ac-show-menu-immediately-on-auto-complete t)
(setq ac-use-fuzzy t)

(ac-config-default)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20140208.653/dict")

;;;; Evil config
(require-package 'evil)
(evil-mode t)

(setq evil-search-module 'evil-search)
(setq evil-magic 'very-magic)

(defcustom dotemacs-evil-emacs-state-modes
  '(special-mode
    eshell-mode)
  "List of modes where Evil should start up in Emacs state."
  :type '(repeat (symbol))
  :group 'dotemacs)

(dolist (mode dotemacs-evil-emacs-state-modes)
    (evil-set-initial-state mode 'emacs))

;;;; Helm 
(setq helm-command-prefix-key "C-c h")
(setq helm-quick-update t)
(setq helm-bookmark-show-location t)
(setq helm-buffers-fuzzy-matching t)

(require 'helm-config)
(helm-mode t)

;;;; Projectile
(require-package 'projectile)

(provide 'init-editing)
