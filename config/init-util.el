;; after macro taken from: https://raw.githubusercontent.com/bling/dotemacs/master/config/init-util.el
(if (fboundp 'with-eval-after-load)
    (defmacro after (feature &rest body)
      "After FEATURE is loaded, evaluate BODY."
      (declare (indent defun))
      `(with-eval-after-load ,feature ,@body))
  (defmacro after (feature &rest body)
    "After FEATURE is loaded, evaluate BODY."
    (declare (indent defun))
    `(eval-after-load ,feature
       '(progn ,@body))))

; Dash - modern functional programming
(require-package 'dash)
(require-package 'dash-functional)
(after 'dash 'dash-enable-font-lock) ; Syntax highlighting for dash

(provide 'init-util)
