; csharp-mode
(require-package 'csharp-mode)

; omnisharp-emacs
;
; IMPORTANT: Make sure omnisharp server is installed on the executing machine.
;            Without it omnisharp-emacs will not work.
;
(require-package 'omnisharp)
(add-hook 'csharp-mode-hook 'omnisharp-mode)

;; Company mode integration to omnisharp
(add-hook 'csharp-mode-hook 'company-mode) ; Use company mode when in a haskell file
(add-to-list 'company-backends 'company-omnisharp)

; Keybindings
(evil-leader/set-key
  "ns" 'omnisharp-helm-find-symbols) ; Navigate symbols

(provide 'init-csharp)
