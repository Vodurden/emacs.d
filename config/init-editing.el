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

;;;; Comapny Mode config
(require-package 'company)
(require 'company)

(setq company-idle-delay 0.2)
(setq company-minimum-prefix-length 1)
(setq completion-styles-alist '(initials basic partial-completion))

;; Make tabs work for completion and indention
;; See: http://www.emacswiki.org/CompanyMode#toc9
(defun complete-or-indent ()
  (interactive)
  (if (company-manual-begin)
      (company-complete-common)
    (indent-according-to-mode)))

(global-key-binding (kbd "<TAB>") 'complete-or-indent)

;; Integrate company mode with helm
(after 'helm
  (require-package 'helm-company)
  (require 'helm-company)
  (define-key company-mode-map (kbd "C-s") 'helm-company)
  (define-key company-active-map (kbd "C-s") 'helm-company))

;;;; Evil config
(require-package 'evil-leader) ; Leader needs to be before evil
(require 'evil-leader)
(global-evil-leader-mode)

(evil-leader/set-leader "<SPC>")

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

(provide 'init-editing)
