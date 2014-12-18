;; Magit
(require-package 'magit)
(require 'magit)

; Use j/k for up/down in magit
(after 'evil
  (evil-add-hjkl-bindings magit-commit-mode-map 'emacs)
  (evil-add-hjkl-bindings magit-log-mode-map 'emacs)
  (evil-add-hjkl-bindings magit-process-mode-map 'emacs)
  (evil-add-hjkl-bindings magit-status-mode-map 'emacs))

; Fullscreen magit status
(defadvice magit-status (around magit-fullscreen activate)
  (window-configuration-to-register :magit-fullscreen)
  ad-do-it
  (delete-other-windows))

; Better quit. See: https://github.com/syl20bnr/spacemacs/blob/b17e259cfe6c381a8ec57a754118e2a092721a7e/spacemacs/packages.el
(defun magit-quit-session ()
  "Restores the previous window configuration and kills the magit buffer"
  (interactive)
  (kill-buffer)
  (jump-to-register :magit-fullscreen))
(define-key magit-status-mode-map (kbd "q") 'magit-quit-session)

(provide 'init-version-control)
