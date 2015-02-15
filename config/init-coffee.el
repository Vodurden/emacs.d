;;;; Coffeescript support
(require-package 'coffee-mode)
(require 'coffee-mode)

;; Auto-cleanup bad whitespace
(setq whitespace-action '(auto-cleanup))

;; 2 space tabs
(custom-set-variables '(coffee-tab-width 2))

(provide 'init-coffee)
