;;; lehtifile.el -*- lexical-binding: t -*-

(defvar lehtifile:font-lock-keywords
  (let ((COMMANDS
         '("install" "list")))
    `(("\\(install\\)[ \t]+\\([A-Za-z0-9-_\\:.]+\\)"
       (2 font-lock-constant-face t))
      (,(concat "\\_<" (regexp-opt COMMANDS) "\\_>") . font-lock-builtin-face))))

(define-derived-mode lehtifile-mode nil "lehtifile"
  ;; font lock
  (setq-local font-lock-defaults
              `(lehtifile:font-lock-keywords))
  (add-hook 'lehtifile-mode-font-lock-keywords 'turn-on-font-lock))

(provide 'lehtifile-mode)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
