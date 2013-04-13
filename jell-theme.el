;;; jell-theme.el ---

;; Theme stolen and improved from Gruber Darker color theme for Emacs 24
;; URL: http://github.com/rexim/gruber-darker-theme

(deftheme jell
  "Gruber Darker color theme for Emacs by Jean-Louis Giordano.
A darker variant of the Gruber Dark theme for BBEdit by John
Gruber. Adapted for deftheme and extended by Alexey Kutepov
a.k.a. rexim. Changed to fit the needs of Jell.")

;; Install rainbow-mode.
;; Colors with +x are lighter. Colors with -x are darker.
(let ((jell-black    "black")
      (jell-black+1  "#111")
      (jell-white    "white")
      (jell-fg       "#e4e4ef")
      (jell-fg+1     "#8899FF")
      (jell-fg+2     "#f5f5f5")
      (jell-gray     "#444")
      (jell-gray+1   "#999")
      (jell-bg       "#181818")
      (jell-bg+1     "#202020")
      (jell-bg+15    "#252525")
      (jell-bg+2     "#453d41")
      (jell-bg+3     "#484848")
      (jell-bg+4     "#52494e")
      (jell-red-1    "#c73c3f")
      (jell-red      "#f43841")
      (jell-pink     "PaleVioletRed1")
      (jell-blue     "DodgerBlue")
      (jell-green    "#73c936")
      (jell-yellow   "#ffdd33")
      (jell-brown    "#cc8c3c")
      (jell-orange   "coral1")
      (jell-sea-wave "#5f627f")
      (jell-quartz   "#95a99f")
      (jell-quartz+1 "#96a6c8")
      (jell-quartz+2 "#9e95c7")
      )
  (custom-theme-set-variables
   'jell
   '(frame-brackground-mode (quote dark)))

  ( custom-theme-set-faces
    'jell

    ;; Standard font lock faces
    `(default ((t (:foreground ,jell-fg :background ,jell-bg))))
    `(font-lock-comment-face ((t (:foreground ,jell-brown))))
    `(font-lock-comment-delimiter-face ((t (:foreground ,jell-brown))))
    `(font-lock-doc-face ((t (:foreground ,jell-green))))
    `(font-lock-doc-string-face ((t (:foreground ,jell-green))))
    `(font-lock-string-face ((t (:foreground ,jell-green))))
    `(font-lock-keyword-face ((t (:foreground ,jell-yellow))))
    `(font-lock-builtin-face ((t (:foreground ,jell-yellow))))
    `(font-lock-function-name-face ((t (:foreground ,jell-blue :bold t))))
    `(font-lock-variable-name-face ((t (:foreground ,jell-fg+1))))
    `(font-lock-preprocessor-face ((t (:foreground ,jell-quartz))))
    `(font-lock-constant-face ((t (:foreground ,jell-quartz))))
    `(font-lock-type-face ((t (:foreground ,jell-orange :bold t))))
    `(font-lock-warning-face ((t (:foreground ,jell-red))))
    `(font-lock-reference-face ((t (:foreground ,jell-quartz))))
    `(trailing-whitespace ((t (:foreground ,jell-black :background ,jell-red))))
    `(link ((t (:foreground ,jell-quartz+1 :underline t))))
    `(link-visited ((t (:foreground ,jell-quartz+2 :underline t))))

    ;; Search
    `(isearch ((t (:foreground ,jell-black :background ,jell-fg+2))))
    `(isearch-lazy-highlight-face ((t (:foreground ,jell-fg+1 :background ,jell-sea-wave))))
    `(isearch-fail ((t (:foreground ,jell-black :background ,jell-red))))

    ;; User interface
    `(fringe ((t (:background ,jell-black+1 :foreground ,jell-gray))))
    `(border ((t (:background ,jell-black+1 :foreground ,jell-gray))))
    `(minibuffer-prompt ((t (:foreground ,jell-quartz+1))))
    `(region ((t (:background ,jell-bg+3))))
    `(secondary-selection ((t (:background ,jell-bg+3 :foreground ,jell-fg+1))))
    `(tooltip ((t (:background ,jell-bg+4 :foreground ,jell-white))))

    ;; Custom
    `(custom-state ((t (:foreground ,jell-green))))
    `(cursor ((t (:background "#ffdd33"))))

    ;; Parenthesis matching
    `(show-paren-match-face ((t (:background ,jell-bg+4 :foreground ,jell-fg+1))))
    `(show-paren-mismatch-face ((t (:foreground ,jell-fg+1 :background ,jell-red-1))))

    ;; Line highlighting
    `(highlight ((t (:background ,jell-bg+1 :foreground nil))))
    `(highlight-current-line-face ((t (:background ,jell-bg+1 :foreground nil))))

    ;; Calendar
    `(holiday-face ((t (:foreground ,jell-red))))

    ;; Info
    `(info-xref ((t (:foreground ,jell-quartz+1))))
    `(info-visited ((t (:foreground ,jell-quartz+2))))

    ;; AUCTeX
    `(font-latex-sectioning-5-face ((t (:foreground ,jell-quartz+1 :bold t))))
    `(font-latex-bold-face ((t (:foreground ,jell-quartz :bold t))))
    `(font-latex-italic-face ((t (:foreground ,jell-quartz :italic t))))
    `(font-latex-math-face ((t (:foreground ,jell-green))))
    `(font-latex-string-face ((t (:foreground ,jell-green))))
    `(font-latex-warning-face ((t (:foreground ,jell-red))))
    `(font-latex-slide-title-face ((t (:foreground ,jell-quartz+1))))

    ;; EShell
    `(eshell-ls-directory ((t (:foreground ,jell-quartz+1))))
    `(eshell-ls-symlink ((t (:foreground ,jell-yellow))))
    `(eshell-ls-backup ((t (:foreground ,jell-quartz))))

    ;; Dired
    `(dired-directory ((t (:foreground ,jell-fg+1 :bold t))))
    `(dired-flagged ((t (:foreground ,jell-red :bold t))))
    `(dired-ignored ((t (:foreground ,jell-quartz :inherit nil))))
    `(dired-symlink ((t (:foreground ,jell-pink :inherit nil))))
    `(dired-header ((t (:foreground ,jell-orange :inherit nil))))

    ;; ido-mode
    `(ido-first-match ((t (:foreground ,jell-green :bold nil))))
    `(ido-only-match ((t (:foreground ,jell-green))))
    `(ido-subdir ((t (:foreground ,jell-quartz+1 :weight bold))))

    ;; Compilation
    `(compilation-info ((t (:foreground ,jell-green :inherit nil))))

    ;; egg
    `(egg-text-base ((t (:foreground ,jell-fg))))
    `(egg-help-header-1 ((t (:foreground ,jell-yellow))))
    `(egg-help-header-2 ((t (:foreground ,jell-quartz+1))))
    `(egg-branch ((t (:foreground ,jell-yellow))))
    `(egg-branch-mono ((t (:foreground ,jell-yellow))))
    `(egg-term ((t (:foreground ,jell-yellow))))
    `(egg-diff-add ((t (:foreground ,jell-green))))
    `(egg-diff-del ((t (:foreground ,jell-red))))
    `(egg-diff-file-header ((t (:foreground ,jell-quartz+2))))
    `(egg-section-title ((t (:foreground ,jell-yellow))))

    ;; message
    `(message-header-name ((t (:foreground ,jell-green))))

    ;; ruby
    `(ruby-string-delimiter-face ((t (:foreground ,jell-green))))
    `(ruby-op-face ((t (:foreground "burlywood"))))
    `(erm-syn-errline ((t (:underline "Red"))))
    `(erm-syn-warnline ((t (:underline "Orange"))))

    ;; mode-line
    `(mode-line ((t (:background ,jell-bg+2))))
    `(mode-line-inactive ((t (:background ,jell-bg+15))))
    `(mode-line-buffer-id ((t (:background ,jell-bg+2 :foreground ,jell-white))))

    ;; magit
    `(diff-added ((t (:inherit diff-changed :foreground ,jell-green :inverse-video nil :underline nil :slant normal :weight normal))))
    `(diff-changed ((t (:foreground "#b58900" :background nil :inverse-video nil :underline nil :slant normal :weight normal))))
    `(diff-file-header ((t (:background ,jell-bg+1 :foreground ,jell-fg+1 :weight bold))))
    `(diff-header ((t (:foreground "LightYellow3"))))
    `(diff-hunk-header ((t (:foreground "wheat4"))))
    `(diff-refine-change ((t (:foreground nil :background nil :inverse-video t :underline nil :slant normal :weight normal))))
    `(diff-removed ((t (:inherit diff-changed :foreground ,jell-red :inverse-video nil :underline nil :slant normal :weight normal))))
    `(magit-diff-add ((t (:inherit diff-added))))
    `(magit-branch ((t (:foreground ,jell-quartz+1))))
    `(magit-section-title ((t (:foreground ,jell-yellow))))
    `(magit-item-highlight ((t (:inherit highlight))))
    `(magit-log-head-label-remote ((t (:foreground ,jell-green :box t))))
    `(magit-log-head-label-local ((t (:foreground ,jell-blue :box t))))
    `(magit-log-graph ((t (:foreground ,jell-quartz))))

    `(magit-diff-del ((t (:inherit diff-removed))))))


;;;###autoload

(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'jell)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; jell-theme.el ends here.
