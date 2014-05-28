(add-to-list 'load-path "~/.emacs.d/config")

;; Bootstrapping
(require 'init-elpa)    ;; Provides require-package

;; Config
(require 'init-themes)
(require 'init-evil)
(require 'init-quack)
