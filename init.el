(add-to-list 'load-path "~/.emacs.d/config")

;; Bootstrapping
(require 'init-constants)
(require 'init-elpa)    ;; Provides require-package
(require 'init-util)

;; Language-Agnostic Config
(require 'init-version-control)
(require 'init-diagnostics)
(require 'init-themes)

;; Language Specific Config
(require 'init-haskell)
(require 'init-csharp)
(require 'init-javascript)
(require 'init-elisp)
(require 'init-ruby)
(require 'init-org-mode)

;; General Config
(require 'init-navigation)
(require 'init-editing)
(require 'init-global-keybinds)
