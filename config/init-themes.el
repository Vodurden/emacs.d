;;; General Theming
;; Solarized
(require-package 'solarized-theme)
(load-theme 'solarized-dark t)

;;; Clean up the UI
;; Appropriated from: http://bzg.fr/emacs-strip-tease.html

;; Prevent the cursor from bliking
(blink-cursor-mode 0)

;; Don't use messages I don't read
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)

;; No more banshee-emacs
(setq visible-bell t)

;; No Scroll Bar!
(scroll-bar-mode 0)

;; We don't need a tool bar or menu bar!
(tool-bar-mode 0)
(menu-bar-mode 0)

(provide 'init-themes)
