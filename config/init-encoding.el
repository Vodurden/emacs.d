;; We want this to come before we try to do anything fancy
;; as downloading without setting this up first seems to
;; trigger some issues.

;; UTF-8 locales for everything!
(set-language-environment 'utf-8)
(set-terminal-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(provide 'init-encoding)
