; leader x is easier then M-x
(evil-leader/set-key "x" 'helm-M-x)

; leader h is easier then C-h
(evil-leader/set-key "h" 'help)

; Unbind keys we've rebound so we get used to the new combination
(-each (-map 'kbd '("M-x" "C-h")) 'global-unset-key)

; File and text based navigation should be the same in all languages
;
; NOTE: We're using projectile-grep instead of helm-projectile-grep because
;       helm-projectile-grep seems to be broken for this install of windows.
;       TODO: Investigate and fix
(evil-leader/set-key
  "np" 'helm-projectile-switch-project ; Navigate Projects
  "nf" 'helm-find-files                ; Navigate Files
  "nn" 'helm-projectile-find-file      ; Navigate Project Files
  "nb" 'helm-buffers-list              ; Navigate Buffers
  "nt" 'projectile-grep)               ; Navigate Text


; Magit should be the same in all languages
(evil-leader/set-key
  "gs" 'magit-status)

; Ace jump with <SPC><SPC>
(evil-leader/set-key
  "<SPC>w" 'evil-ace-jump-word-mode
  "<SPC>c" 'evil-ace-jump-char-mode
  "<SPC>l" 'evil-ace-jump-line-mode)

(provide 'init-global-keybinds)
