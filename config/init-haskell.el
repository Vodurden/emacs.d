;;; haskell-mode
(require-package 'haskell-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

(custom-set-variables
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log))

;;; ghc-mod
(require-package 'ghc)
(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

;;; company-ghc
(after 'company
  (require-package 'company-ghc)
  (add-hook 'haskell-mode-hook 'company-mode) ; Use company mode when in a haskell file
  (add-to-list 'company-backends 'company-ghc) ; Add ghc completions to company mode
  (custom-set-variables '(company-ghc-show-info t)))

;;; Additional configuration
(after 'evil
  ;; Make :w in evil save properly
  (add-hook 'haskell-mode-hook (lambda() (evil-ex-define-cmd "w[rite]" 'ghc-save-buffer))))

  ;; Start in insert mode for haskell terminal
  ;(evil-set-initial-state 'inferior-haskell-mode 'emacs)
  ;(evil-set-initial-state 'interactive-haskell-mode 'emacs))

(provide 'init-haskell)
