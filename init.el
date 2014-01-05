(add-to-list 'load-path "~/.emacs.d/lisp")

;; Bootstrapping
(require 'init-elpa)    ;; Provides require-package

;; Config
(require 'init-themes)
(require 'init-evil)
