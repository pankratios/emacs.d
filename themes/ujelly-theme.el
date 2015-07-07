;;; ujelly-theme.el --- Ujelly theme for GNU Emacs 24 (deftheme)

;; Author: Mark Tran <mark.tran@gmail.com>
;; URL: http://github.com/marktran/color-theme-ujelly
;; Version: 1.0.46

;; Inspired by jellybeans: http://www.vim.org/scripts/script.php?script_id=2555.
(deftheme ujelly  "The ujelly color theme")

(let ((class '((class color) (min-colors 89)))
      (ujelly-fg "#dfdfdf")
      (ujelly-bg "#171717")
      (ujelly-blue-0 "#8fbfdc")
      (ujelly-green-0 "#99ad6a")
      ; (ujelly-green-1 "#00FF00")
      (ujelly-green-1 "#ffb964")
      (ujelly-green-2 "#a8ff60")
      (ujelly-grey-0 "#888888")
      (ujelly-grey-1 "#7f7f7f")
      (ujelly-grey-2 "#151515")
      (ujelly-grey-3 "#1c1c1c")
      (ujelly-grey-4 "#363636")
      (ujelly-orange-0 "#ffb964")
      (ujelly-purple-0 "#8197bf")
      (ujelly-purple-1 "#474e90")
      (ujelly-purple-2 "#cd00cd")
      (ujelly-purple-3 "#540063")
      (ujelly-purple-4 "#a40073")
      (ujelly-red-0 "#cf6a4c")
      (ujelly-red-1 "#dd0093")
      (ujelly-red-2 "#de5577")
      (ujelly-red-3 "#ff73fd")
      (ujelly-yellow-0 "#fad07a")
      (ujelly-yellow-1 "#ffff00"))

      (custom-theme-set-faces
       'ujelly
       `(default ((,class (:foreground ,ujelly-fg :background ,ujelly-bg))))
       ;;;;;
       ;; smartparens
       ;;
       ;; sp-show-smartparens-mode         - Face used for a mismatching pair.
       ;; sp-show-pair-match-face          - Face used for a matching pair.
       `(sp-show-pair-mismatch-face ((t (:foreground ,ujelly-red-0 :background ,ujelly-bg :weight bold))))
       `(sp-show-pair-match-face ((t (:background ,ujelly-bg :weight bold))))
       ;;;;;
       ;; show-paren-mode
       ;;
       ;;
       `(show-paren-match-face ((t (:background ,ujelly-green-2 :weight bold :foreground ,ujelly-bg))))
       ;;;;;
       ;; company-mode
       ;;
       ;; company-tooltip                  - Face used for the tooltip
       ;; company-tooltip-selection        - Face used for the selection in the tooltip
       ;; company-tooltip-search           - Face used for the search string in the tooltip
       ;; company-tooltip-mouse            - Face used for the tooltip item under the mouse
       ;; company-tooltip-common           - Face used for the common completion in the tooltip
       ;; company-tooltip-common-selection - Face used for the selected common completion in the tooltip
       ;; company-tooltip-annotation       - Face used for the annotation in the tooltip
       ;; company-scrollbar-fg             - Face used for the tooltip scrollbar thumb
       ;; company-scrollbar-bg             - Face used for the tooltip scrollbar background
       ;; company-preview                  - Face used for the completion preview
       ;; company-preview-common           - Face used for the common part of the completion preview
       ;; company-preview-search           - Face used for the search string in the completion preview
       ;; company-echo                     - Face used for completions in the echo area
       ;; company-echo-common              - Face used for the common part of completions in the echo area
       `(company-preview-common ((,class (:foreground nil :background ,ujelly-purple-1))))
       `(company-scrollbar-bg ((,class (:background ,ujelly-grey-2))))
       `(company-scrollbar-fg ((,class (:background ,ujelly-grey-0))))
       `(company-tooltip ((,class (:foreground ,ujelly-fg :background ,ujelly-grey-3))))
       `(company-tooltip-common ((,class (:foreground ,ujelly-red-0 :background ,ujelly-grey-3))))
       `(company-tooltip-common-selection ((,class (:foreground ,ujelly-red-0 :background ,ujelly-purple-1))))
       `(company-tooltip-selection ((,class (:background ,ujelly-purple-1))))
       ;;;;;
       ;; alchemist
       ;;
       ;; alchemist-buffer--success-face  - Face for successful compilation run
       ;; alchemist-buffer--failed-face   - Face for failed compilation run
       `(alchemist-buffer--success-face ((t (:inherit font-lock-variable-name-face :bold t :background nil :foreground "darkgreen"))))
       `(alchemist-buffer--failed-face ((t (:inherit font-lock-variable-name-face :bold t :background nil :foreground "red"))))

       `(compilation-error ((,class (:foreground ,ujelly-red-0))))
       `(compilation-info ((,class (:foreground ,ujelly-yellow-0))))
       `(compilation-line-number ((,class (:foreground ,ujelly-grey-0))))
       `(compilation-mode-line-exit ((,class (:foreground ,ujelly-green-0))))
       `(compilation-mode-line-fail ((,class (:foreground ,ujelly-red-0))))
       `(compilation-mode-line-run ((,class (:foreground ,ujelly-yellow-0))))
       `(diredp-date-time ((,class (:foreground ,ujelly-fg))))
       `(diredp-deletion ((,class (:foreground ,ujelly-red-0 :background ,ujelly-bg))))
       `(diredp-dir-heading ((,class (:foreground ,ujelly-yellow-0 :background ,ujelly-bg))))
       `(diredp-dir-priv ((,class (:foreground ,ujelly-green-2 :background ,ujelly-bg))))
       `(diredp-exec-priv ((,class (:foreground ,ujelly-fg :background ,ujelly-bg))))
       `(diredp-file-name ((,class (:foreground ,ujelly-fg))))
       `(diredp-file-suffix ((,class (:foreground ,ujelly-fg))))
       `(diredp-link-priv ((,class (:foreground ,ujelly-fg))))
       `(diredp-number ((,class (:foreground ,ujelly-fg))))
       `(diredp-no-priv ((,class (:foreground ,ujelly-fg :background ,ujelly-bg))))
       `(diredp-rare-priv ((,class (:foreground ,ujelly-red-0 :background ,ujelly-bg))))
       `(diredp-read-priv ((,class (:foreground ,ujelly-fg :background ,ujelly-bg))))
       `(diredp-symlink ((,class (:foreground ,ujelly-red-3))))
       `(diredp-write-priv ((,class (:foreground ,ujelly-fg :background ,ujelly-bg))))
       `(emmet-preview-output ((,class (:background ,ujelly-purple-1))))
       `(erc-notice-face ((,class (:foreground ,ujelly-yellow-0))))
       `(erc-prompt-face ((,class (:foreground ,ujelly-fg))))
       `(erc-timestamp-face ((,class (:foreground ,ujelly-purple-0))))
       `(eshell-prompt ((,class (:foreground ,ujelly-red-0))))
       `(eshell-ls-directory ((,class (:weight normal :foreground ,ujelly-green-2))))
       `(eshell-ls-executable ((,class (:weight normal :foreground ,ujelly-red-0))))
       `(eshell-ls-product ((,class (:foreground ,ujelly-fg))))
       `(eshell-ls-symlink ((,class (:weight normal :foreground ,ujelly-purple-2))))
       `(font-lock-builtin-face ((,class (:foreground ,ujelly-blue-0))))
       `(font-lock-comment-face ((,class (:slant italic :foreground ,ujelly-grey-0))))
       `(font-lock-constant-face ((,class (:foreground ,ujelly-green-1))))
       `(font-lock-doc-face ((,class (:foreground ,ujelly-green-0))))
       `(font-lock-function-name-face ((,class (:foreground ,ujelly-yellow-0))))
       `(font-lock-keyword-face ((,class (:foreground ,ujelly-purple-0))))
       `(font-lock-preprocessor-face ((,class (:foreground ,ujelly-fg))))
       `(font-lock-string-face ((,class (:foreground ,ujelly-green-0))))
       `(font-lock-type-face ((,class (:foreground ,ujelly-orange-0))))
       `(font-lock-variable-name-face ((,class (:foreground ,ujelly-red-0))))
       `(font-lock-warning-face ((,class (:foreground ,ujelly-red-1))))
       `(font-lock-regexp-grouping-construct ((t (:foreground ,ujelly-yellow-0 :bold t))))
       `(font-lock-regexp-grouping-backslash ((t (:foreground ,ujelly-red-0 :bold t))))
       `(fringe ((,class (:foreground ,ujelly-fg :background ,ujelly-bg))))
       `(git-commit-comment-file-face ((,class (:foreground ,ujelly-fg))))
       `(git-commit-comment-heading-face ((,class (:foreground ,ujelly-yellow-0))))
       `(git-commit-summary-face ((,class (:foreground ,ujelly-fg))))
       `(header-line ((,class (:foreground ,ujelly-fg))))
       `(helm-buffer-size ((,class (:foreground ,ujelly-fg))))
       `(helm-candidate-number ((,class (:foreground ,ujelly-fg :background ,ujelly-bg))))
       `(helm-ff-directory ((,class (:background ,ujelly-bg))))
       `(helm-ff-file ((,class (:foreground ,ujelly-fg))))
       `(helm-match ((,class (:foreground ,ujelly-yellow-0 :background ,ujelly-bg))))
       `(helm-selection ((,class (:background ,ujelly-purple-1))))
       `(helm-source-header ((,class (:foreground ,ujelly-red-1 :background ,ujelly-grey-4))))
       `(hl-line ((,class (:background ,ujelly-grey-4))))
       `(isearch ((,class (:foreground ,ujelly-fg :background ,ujelly-red-1))))
       `(isearch-fail ((,class (:background ,ujelly-red-1))))
       `(ido-first-match ((,class (:foreground ,ujelly-yellow-0))))
       `(ido-only-match ((,class (:foreground ,ujelly-green-0))))
       `(ido-subdir ((,class (:foreground ,ujelly-fg))))
       `(ido-virtual ((,class (:foreground ,ujelly-purple-0))))
       `(lazy-highlight ((,class (:foreground ,ujelly-red-1 :background nil))))
       `(linum ((,class (:slant italic :foreground ,ujelly-grey-4))))
       `(magit-branch ((,class (:foreground ,ujelly-red-0 :background nil))))
       `(magit-diff-add ((,class (:foreground ,ujelly-green-0 :background ,ujelly-bg))))
       `(magit-diff-del ((,class (:foreground ,ujelly-red-0 :background ,ujelly-bg))))
       `(magit-diff-file-header ((,class (:inherit nil :foreground ,ujelly-red-2))))
       `(magit-diff-hunk-header ((,class (:inherit nil :foreground ,ujelly-yellow-0))))
       `(magit-item-highlight ((,class (:weight normal :background ,ujelly-grey-2))))
       `(magit-log-author ((,class (:foreground ,ujelly-fg))))
       `(magit-log-sha1 ((,class (:foreground ,ujelly-red-0))))
       `(magit-log-head-label-local ((,class (:foreground ,ujelly-fg))))
       `(magit-whitespace-warning-face ((,class (:background ,ujelly-red-1))))
       `(magit-tag ((,class (:foreground ,ujelly-red-0 :background nil))))
       `(match ((,class (:background ,ujelly-red-1))))
       `(minibuffer-prompt ((,class (:foreground ,ujelly-fg))))
       `(mode-line ((,class (:foreground ,ujelly-fg :background nil))))
       `(mode-line-inactive ((,class (:foreground ,ujelly-grey-4 :background nil))))
       `(org-checkbox ((,class (:foreground ,ujelly-green-0))))
       `(org-date ((,class (:foreground ,ujelly-purple-0))))
       `(org-done ((,class (:foreground ,ujelly-green-0))))
       `(org-level-1 ((,class (:foreground ,ujelly-red-2))))
       `(org-level-2 ((,class (:foreground ,ujelly-red-0))))
       `(org-level-3 ((,class (:foreground ,ujelly-red-0))))
       `(org-special-keyword ((,class (:foreground ,ujelly-purple-0))))
       `(org-todo ((,class (:foreground ,ujelly-yellow-0))))
       `(region ((,class (:background ,"gray20"))))
       `(smerge-markers ((,class (:foreground ,ujelly-yellow-0 :background ,ujelly-grey-2))))
       `(smerge-refined-change ((,class (:foreground ,ujelly-green-0))))
       `(trailing-whitespace ((,class (:background ,ujelly-red-1))))
       `(web-mode-builtin-face ((,class (:foreground ,ujelly-blue-0))))
       `(web-mode-html-attr-name-face ((,class (:foreground ,ujelly-purple-0))))
       `(web-mode-html-tag-face ((,class (:foreground ,ujelly-fg))))
       `(web-mode-symbol-face ((,class (:foreground ,ujelly-green-1))))
       `(whitespace-trailing ((,class (:background ,ujelly-red-1))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'ujelly)

;;; ujelly-theme.el ends here
