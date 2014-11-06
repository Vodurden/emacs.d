;; Magit
(require-package 'magit)
(require 'magit)

; Use j/k for up/down in magit
(evil-add-hjkl-bindings magit-commit-mode-map 'emacs)
(evil-add-hjkl-bindings magit-log-mode-map 'emacs)
(evil-add-hjkl-bindings magit-process-mode-map 'emacs)
(evil-add-hjkl-bindings magit-status-mode-map 'emacs)

; Fullscreen magit status
(defadvice magit-status (around magit-fullscreen activate)
  (window-configuration-to-register :magit-fullscreen)
  ad-do-it
  (delete-other-windows))

(provide 'init-version-control)
