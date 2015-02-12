;; WORKAROUND: cl-* functions are depricated but csharp-mode still expects them. Remove when csharp mode is updated
(require 'cl)

; csharp-mode
(require-package 'csharp-mode)

; omnisharp-emacs
;
; IMPORTANT: Make sure omnisharp server is installed on the executing machine.
;            Without it omnisharp-emacs will not work.
;
(require-package 'omnisharp)
(add-hook 'csharp-mode-hook 'omnisharp-mode)

; Key Bindings
(add-hook 'csharp-mode-hook
          (lambda ()
            (evil-leader/set-key
              "ns" 'omnisharp-helm-find-symbols ; Navigate symbols
              "cc" 'projectile-compile-project))) ; Compile

(provide 'init-csharp)
