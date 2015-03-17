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

;; Always ignore things we don't typically access in projects. We can
;; still get to them through regular file browing.
(add-to-list 'projectile-globally-ignored-directories "node_modules/")
(add-to-list 'projectile-globally-ignored-directories ".bower-cache")

(require-package 'helm-projectile)

;;;; NeoTree
(require-package 'neotree)
(require 'neotree)

;; Projectile integration. Automatically switch neotree root when switching projects
(setq projectile-switch-project-action 'neotree-projectile-action)

(add-hook 'neotree-mode-hook
          (lambda()
            (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

(provide 'init-navigation)
