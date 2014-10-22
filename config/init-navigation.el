;;;; Etags
;; Automatic tag updating
;(require-package 'ctags-update)
;(autoload 'turn-on-ctags-auto-update-mode "ctags-update" "turn on `ctags-auto-update-mode'." t)
;(require-package 'etags-table)

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
(global-set-key (kbd "M-x") 'helm-M-x)

(defun helm-my-buffers ()
  (interactive)
  (helm-other-buffer '(helm-c-source-buffers-list
               helm-c-source-elscreen
               helm-c-source-projectile-files-list
               helm-c-source-ctags
               helm-c-source-recentf
               helm-c-source-locate)
             "*helm-my-buffers*"))

;;;; Projectile
(require-package 'projectile)
(projectile-global-mode)

;; Force native indexing so .gitignore is respected
(setq projectile-indexing-method 'native)

(require-package 'helm-projectile)

(provide 'init-navigation)
