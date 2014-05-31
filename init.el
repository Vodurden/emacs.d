(add-to-list 'load-path "~/.emacs.d/config")

;; Bootstrapping
(require 'init-elpa)    ;; Provides require-package
(require 'init-util)

;; General Config
(require 'init-themes)
(require 'init-editing)

;; Language Specific Config
(require 'init-haskell)
