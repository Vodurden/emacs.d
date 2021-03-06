;;;; Emacs Configuration
;; Remove trailing whitespace before saving a file
(add-hook 'before-save-hook 'whitespace-cleanup)
(add-hook 'before-save-hook (lambda() (delete-trailing-whitespace)))

;; Save backups in a central file
(setq
 backup-by-copying t
 backup-directory-alist
   '(("." . "~/.backups"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)


;; We have backups and a compulsive save tick. We don't need autosave!
(setq auto-save-default nil)

;; UTF-8 locales for everything!
(set-language-environment 'utf-8)
(set-terminal-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Indentation
(setq-default tab-width 4 indent-tabs-mode nil) ;; Spaces instead of Tabs
(define-key global-map (kbd "RET") 'newline-and-indent) ;; Auto indent on newline

;; Show matching parenthesis
(show-paren-mode t)

;; Remeber the cursor position of files when reopening them
(setq save-place-file "~/.emacs.d/saveplace")
(setq-default save-place t)
(require 'saveplace)

;;;; Evil config
(require-package 'evil-leader) ; Leader needs to be before evil
(require 'evil-leader)
(global-evil-leader-mode)

(evil-leader/set-leader "<SPC>")

(require-package 'evil)
(require 'evil)
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

(provide 'init-editing)
