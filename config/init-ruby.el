;;;; Enhanced Ruby Mode
(require-package 'enh-ruby-mode)
(require 'enh-ruby-mode)

;; No more crazy indenting!
(setq
 enh-ruby-deep-indent-paren nil
 enh-ruby-hanging-paren-deep-indent-level 2
 enh-ruby-hanging-brace-deep-indent-level 2)

(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

;;;; Robe Mode - IDE Style navigation and info
;; Requires:
;;  - ruby 1.9.*
;;  - ruby dev kit
;;  - bundler (gem)
;;  - pry (gem)
;;
;; Make sure to run bundle install on your project!
(require-package 'robe)
(add-hook 'ruby-mode 'robe-mode)
(add-hook 'enh-ruby-mode-hook 'robe-mode)

(provide 'init-ruby)
