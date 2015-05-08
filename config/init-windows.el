;; Use MSYS2!
(when (eq 'windows-nt system-type)
  (require-package 'cygwin-mount)
  (require 'cygwin-mount)
  (cygwin-mount-activate)
)

(provide 'init-windows)
