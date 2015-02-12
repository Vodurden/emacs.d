;;;; Javascript Support
;; Assumes the following is installed:
;;   - Node
;;   - jshint
(require-package 'js2-mode)
(require 'js2-mode)

; Super-highlighting
(setq js2-highlight-level 3)

; Use js2-mode as our primary javascript mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(add-hook 'js2-init-hook
          (lambda ()
            (add-to-list 'js2-additional-externs "module")
            (add-to-list 'js2-additional-externs "$")
            (add-to-list 'js2-additional-externs "ND")
            (add-to-list 'js2-additional-externs "wCAF")
            (add-to-list 'js2-additional-externs "nCAF")))

; Flycheck!
(add-hook 'js-mode-hook
          (lambda () (flycheck-mode t)))

(provide 'init-javascript)
