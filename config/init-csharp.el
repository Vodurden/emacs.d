; csharp-mode
(require-package 'csharp-mode)

; omnisharp-emacs
;
; IMPORTANT: Make sure omnisharp server is installed on the executing machine. 
;            Without it omnisharp-emacs will not work.
;
(require-package 'omnisharp)
(add-hook 'csharp-mode-hook 'omnisharp-mode)

(provide 'init-csharp)




















