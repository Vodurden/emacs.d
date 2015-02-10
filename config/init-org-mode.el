(require 'org)

; Make org-mode work with files ending in .org
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

; Key Bindings
(add-hook 'org-mode-hook
          (lambda ()
            (evil-leader/set-key
              "cl" 'org-store-link
              "ca" 'org-agenda
              "cb" 'org-iswitchb)))

(add-hook 'org-mode-hook (lambda()
                           (-map
                            (lambda (state)
                              (evil-declare-key state org-mode-map
                                (kbd "M-h") 'org-metaleft
                                (kbd "M-j") 'org-metadown
                                (kbd "M-k") 'org-metaup
                                (kbd "M-l") 'org-metaright
                                (kbd "M-H") 'org-shiftmetaleft
                                (kbd "M-J") 'org-shiftmetadown
                                (kbd "M-K") 'org-shiftmetaup
                                (kbd "M-L") 'org-shiftmetaright))
                            '(normal insert))
))


(provide 'init-org-mode)
