;;; XEmacs backwards compatibility file
(setq user-init-file
      (expand-file-name "init.el"
			(expand-file-name ".xemacs" "~")))
(setq custom-file
      (expand-file-name "custom.el"
			(expand-file-name ".xemacs" "~")))

(load-file user-init-file)
(load-file custom-file)

;;;(concat user-emacs-directory
;;;            (convert-standard-filename "site-lisp/"))
(let ((default-directory "~/.emacs.d/site-lisp/"))
      (normal-top-level-add-to-load-path '("."))
      (normal-top-level-add-subdirs-to-load-path))


; ttcn
(require 'ttcn3)



; color theme
(require 'color-theme)
(color-theme-initialize)
(require 'color-theme-tango)
(if window-system (color-theme-tango))

;;(require 'color-theme-zenburn)
;;(color-theme-zenburn)
;;(setq color-theme-is-global t)
;;(eval-after-load "color-theme" '(color-theme-zenburn))
;;(eval-after-load "color-theme"
;;  '(progn
;;     (color-theme-initialize)
;;     (color-theme-zenburn)))
;;;    (color-theme-jsc-dark)))
;;(set-face-attribute 'default nil :background "unspecified-bg")

; show line numbers
(require 'linum)
(global-linum-mode 1)

; adjustments for splitting
(setq-default truncate-lines t) 
(setq truncate-partial-width-windows nil) ;; for vertically-split windows

; set standard indention
(setq-default indent-tabs-mode nil)
(setq-default tab-width 3)
(setq indent-line-function 'insert-tab)
(setq tab-width 3)

; set c++ code style
(setq-default c-default-style "stroustrup" c-basic-offset 3)

; move back-up files to emacs backup directory
(setq backup-directory-alist '(("." . "/home/earmwid/.emacs_backup")))

; set perl indent
(setq cperl-indent-level 3)

; set fill column indicator
(require 'fill-column-indicator)
(setq fci-rule-width 1)
(setq fci-rule-color "white")
(setq fci-rule-column 80)
(add-hook 'after-change-major-mode-hook 'fci-mode)

; yasnippet for code completion etc.
;(require 'yasnippet)
;(yas/global-mode 1)

; cedet and semantics
;(semantic-mode 1)
;(global-ede-mode t)
;(if (boundp 'semantic-load-enable-excessive-code-helpers)
;    ; Add-on CEDET
;    (progn
;      (semantic-load-enable-excessive-code-helpers)
      ; TODO: should already be enabled by previous line
;      (global-semantic-idle-completions-mode)
;      (global-semantic-tag-folding-mode))
   ; Integrated CEDET
;  (setq semantic-default-submodes
;        '(global-semanticdb-minor-mode
;          global-semantic-idle-scheduler-mode
;          global-semantic-idle-summary-mode
;          global-semantic-idle-completions-mode
;          global-semantic-decoration-mode
;          global-semantic-highlight-func-mode
;          global-semantic-stickyfunc-mode)))
;(if (boundp 'semantic-ia) (require 'semantic-ia))
;(if (boundp 'semantic-gcc) (require 'semantic-gcc))


; start emacs in server mode 
;(load "server")
;(unless (server-running-p) (server-start))


