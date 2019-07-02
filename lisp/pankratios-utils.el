;;; pankratios-utils --- extension

;;; Commentary:
;; Just some neat utils

;;; Code:

;; (require 'magit)

;; magit file diff function
;; (defun magit-diff-buffer-file (rev-or-range)
;;   "Show change between commits for current file
;;   REV-OR-RANGE should be a range or a single revision.  If it is a
;;   revision, then show changes in the working tree relative to that
;;   revision.  If it is a range, but one side is omitted, then show
;;   changes relative to `HEAD'."
;;   (interactive
;;    (list (magit-diff-read-range-or-commit "File diff for range" nil current-prefix-arg)))
;;   (-if-let (file (magit-file-relative-name))
;;       (magit-diff-setup rev-or-range nil magit-diff-arguments (list file))
;;     (user-error "Buffer isn't visiting a file")))

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (forward-line 1)
  (yank)
  )

;; code is from tide wiki but this method is only for the web-mode tsx hook
;; for normal typescript projects "use-package" is used
;; (require 'flycheck)
(defun setup-tide-mode-for-tsx ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

(provide 'pankratios-utils)
;;; pankratios-utils.el ends here
