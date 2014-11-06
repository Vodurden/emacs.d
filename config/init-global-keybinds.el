; Unbind keys we've rebound so we get used to the new combination
(-each (-map 'kbd '("M-x")) 'global-unset-key)

; leader x is easier then M-x
(evil-leader/set-key "x" 'helm-M-x)

; File navigation should be the same in all languages
(evil-leader/set-key
  "np" 'helm-projectile-switch-project ; Navigate Projects
  "nf" 'helm-find-files                ; Navigate Files
  "nn" 'helm-projectile-find-file      ; Navigate Project Files
  "nb" 'helm-buffers-list)             ; Navigate Buffers

; Magit should be the same in all languages
(evil-leader/set-key
  "gs" 'magit-status)

(provide 'init-global-keybinds)
