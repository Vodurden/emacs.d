;;;; Helm
(require-package 'helm)
(setq helm-command-prefix-key "C-c h")
(setq helm-quick-update t)
(setq helm-bookmark-show-location t)
(setq helm-buffers-fuzzy-matching t)

(require 'helm-config)
(require 'helm-misc)
(require 'helm-locate)
(helm-mode t)

(after 'projectile
  (require-package 'helm-projectile)
  (require 'helm-projectile))


;;;; Projectile
(require-package 'projectile)
(projectile-global-mode)

;; Force native indexing so .gitignore is respected
(setq projectile-indexing-method 'native)

;; Always ignore node_modules
(add-to-list 'projectile-globally-ignored-directories "node_modules/")
(add-to-list 'projectile-globally-ignored-directories ".bower-cache")

(require-package 'helm-projectile)

(provide 'init-navigation)
