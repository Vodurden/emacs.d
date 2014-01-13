(require-package 'quack)

;; Select our interpreter binary - for now lets assume mit scheme
(setq scheme-program-name "mit-scheme")

;; Use our theme instead of quack
(defun scheme-mode-quack-hook ()
  (require 'quack)
  (setq quack-fontify-style 'emacs))
(add-hook 'scheme-mode-hook 'scheme-mode-quack-hook)

(provide 'init-quack)
