;; Gobal configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Disable deletion of trailing whitespace on save for note on every save. This may also disable desierable functionality.
(setq prelude-whitespace nil)
;; Line wrap at word rather than letter.
(global-visual-line-mode t)
;; Prelude loads syntax checking by drefault, which breaks some org mode bindings. Disable globally for now.
;;(global-flycheck-mode -1)
;; Deft configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; M-x package-install RET deft RET

(defvar prelude-vendor-dir (expand-file-name "vendor" prelude-dir)
  "This directory houses packages that are not yet available in ELPA (or MELPA).")


(require 'org)
(require 'deft)
(setq deft-extension "org")
(setq deft-text-mode 'org-mode)
(setq deft-directory "~/notes")
(global-set-key [f8] 'deft)
(setq deft-use-filename-as-title 1)
(setq deft-use-filter-string-for-filename 1)
;; Need to disable visual line mode for Deft buffer.
(add-hook 'deft-mode-hook
          (lambda ()
            (visual-line-mode -1)
           ;(toggle-truncate-lines 1)
           ))
;; org-mode configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key "\C-ca" 'org-agenda)
;;(setq org-indent-mode t)
(setq org-startup-indented t)
;;(setq org-startup-truncated nil)
