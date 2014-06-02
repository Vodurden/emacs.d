; haskell-mode
(require-package 'haskell-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

; ghc-mod
(require-package 'ghc)
(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda() (ghc-init)))
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook (lambda() (add-to-list 'ac-sources 'ac-source-ghc-mod)))

;; Make :w in evil save properly
(add-hook 'haskell-mode-hook (lambda() (evil-ex-define-cmd "w[rite]" 'ghc-save-buffer)))

(provide 'init-haskell)




















