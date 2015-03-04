;; WORKAROUND: cl-* functions are depricated but csharp-mode still expects them. Remove when csharp mode is updated
(require 'cl)

;;;; csharp-mode
(require-package 'csharp-mode)

; omnisharp-emacs
;
; IMPORTANT: Make sure omnisharp server is installed on the executing machine.
;            Without it omnisharp-emacs will not work.
;
(require-package 'omnisharp)
(add-hook 'csharp-mode-hook 'omnisharp-mode)

(setq omnisharp-imenu-support t)

;; Key Bindings
(add-hook 'csharp-mode-hook
          (lambda ()
            (evil-leader/set-key
              "ns" 'omnisharp-helm-find-symbols ; Navigate symbols
              "nu" 'omnisharp-helm-find-usages ; Navigate usages
              "cc" 'omnisharp-build-in-emacs ; Compile
              "tt" 'omnisharp-unit-test-all ; Project Test
              "tf" 'omnisharp-unit-test-fixture ; File Test
              "ts" 'omnisharp-unit-test-single ; Single Test
              )))

(provide 'init-csharp)
