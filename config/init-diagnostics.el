;; WORKAROUND: Flycheck isn't declaring it's let-alist dependency correctly
;;             So we include it for it!
(require-package 'let-alist)

(require-package 'flycheck)
(require 'flycheck)

(provide 'init-diagnostics)
