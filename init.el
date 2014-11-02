(add-to-list 'load-path "~/.emacs.d/config")

;; Bootstrapping
(require 'init-constants)
(require 'init-elpa)    ;; Provides require-package
(require 'init-util)

;; General Config
(require 'init-themes)
(require 'init-editing)
(require 'init-navigation)

;; Language Specific Config
(require 'init-haskell)
(require 'init-csharp)
(require 'init-elisp)
