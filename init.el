(add-to-list 'load-path "~/.emacs.d/config")

;; Bootstrapping
(require 'init-constants)
(require 'init-elpa)    ;; Provides require-package
(require 'init-util)

;; Language Specific Config
(require 'init-haskell)
(require 'init-csharp)
(require 'init-elisp)
(require 'init-org-mode)

;; General Config
(require 'init-themes)
(require 'init-navigation)
(require 'init-version-control)
(require 'init-diagnostics)
(require 'init-editing)
(require 'init-global-keybinds)
