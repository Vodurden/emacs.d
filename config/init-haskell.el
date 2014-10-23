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
(add-hook 'haskell-mode-hook (lambda() (ghc-init)))
(add-hook 'haskell-mode-hook (lambda() (add-to-list 'ac-sources 'ac-source-ghc-mod)))

;;; Additional configuration
;; Make :w in evil save properly
(add-hook 'haskell-mode-hook (lambda() (evil-ex-define-cmd "w[rite]" 'ghc-save-buffer)))

;; Start in insert mode for haskell terminal
(evil-set-initial-state 'inferior-haskell-mode 'emacs)
(evil-set-initial-state 'interactive-haskell-mode 'emacs)

(provide 'init-haskell)
