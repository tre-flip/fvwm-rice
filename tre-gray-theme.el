;;; tre-gray-theme.el --- gray theme

;; Copyright (C) 2020 Alexander K.
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <https://www.gnu.org/licenses/>.

;; Author: treflip
;; URL: --
;; Version: 0.1
;; Package-Requires: ((colorless-themes "0.1"))
;; License: GPL-3
;; Keywords: faces theme

;;; Commentary:
;; Gray theme.
;; SYNTAX COLORING IS POORLY IMPLEMENTED, BECAUSE I USE THE FOLLOWING CODE
;; TO MODIFY SYNTAX HIGHLIGHTING TO ACHIEVE PLAIN AND CLEAN LOOK:
;;
;; (setq *my-font-lock-advised-p* nil)
;;
;; (defun my-font-lock-advice (f &rest args)
;;   "Advice for ignoring font-lock"
;;   (ignore f args))
;;
;; (defun my-font-lock-syntax ()
;;   "Toggle syntax highlighting for everything but strings, comments and escapes."
;;   (interactive)
;;   (if *my-font-lock-advised-p*
;;       (progn
;; 	(setq *my-font-lock-advised-p* nil)
;; 	(advice-remove 'font-lock-fontify-keywords-region #'my-font-lock-advice))
;;     (setq *my-font-lock-advised-p* t)
;;     (advice-add 'font-lock-fontify-keywords-region :around #'my-font-lock-advice))
;;   (font-lock-fontify-buffer))

;;; Code:

(deftheme tre-gray "Gray theme")
(default-file-modes)


(defvar tre-c-main0 "gainsboro")
(defvar tre-c-main1 "light gray") 
(defvar tre-c-main2 "gray") ;; bg
(defvar tre-c-main3 "dark gray")
(defvar tre-c-main4 "dim gray")


(defvar tre-c-white "white")
(defvar tre-c-black "black")
(defvar tre-c-green "steel blue")
(defvar tre-c-red "dark red")
(defvar tre-c-orange "orange red")
(defvar tre-c-yellow "yellow")

(defvar tre-c-dblue "dark blue")
;; define theme properties here
(custom-theme-set-faces
 'tre-gray
 
 ;; main faces
 `(default ((t (:background ,tre-c-main3 :foreground ,tre-c-black))))
 `(region ((t (:background ,tre-c-black :foreground ,tre-c-white))))
 '(secondary-selection ((t ())))
 '(italic ((t (:slant italic))))
 '(shadow ((t ())))
 `(escape-glyph ((t (:foreground ,tre-c-dblue))))
 '(fringe ((t (()))))
 '(minibuffer-prompt ((t (:weight bold))))
 
 ;; visual elements
 `(vertical-border ((t (:foregorund ,tre-c-main3 ;; :background ,tre-c-main3
				    ))))
 `(cursor ((t (:background ,tre-c-black :foregorund ,tre-c-white))))
 `(mode-line ((t (:background ,tre-c-main0 :foreground ,tre-c-black :box (:line-width -1 :style released-button)))))
 `(mode-line-buffer-id ((t (:weight bold))))
 `(mode-line-emphasis ((t (:weight bold))))
 `(mode-line-inactive ((t (:inherit (mode-line) :background ,tre-c-main4))))

 ;; line numbers
 `(line-number ((t (:foreground ,tre-c-white :height 0.8))))
 `(line-number-current-line ((t (:foreground ,tre-c-black :height 0.8))))

 ;; syntax-hinglight
 `(font-lock-string-face ((t (:foreground ,tre-c-dblue))))
 `(font-lock-comment-delimiter-face ((t (:foreground ,tre-c-dblue))))
 `(font-lock-comment-face ((t (:foreground ,tre-c-dblue))))
 `(font-lock-doc-face ((t (:foreground ,tre-c-dblue))))
 `(link ((t (:underline ,tre-c-white))))

 `(font-lock-builtin-face ((t (:foreground "brown"))))
 `(font-lock-constant-face ((t (:foreground "dark red"))))
 `(font-lock-keyword-face ((t (:foreground "brown"))))
 `(font-lock-function-name-face ((t (:foreground "brown" :weight bold))))
 `(font-lock-variable-name-face ((t (:foreground "dark red"))))
 `(font-lock-preprocessor-face ((t (:foreground ,tre-c-white))))
 `(font-lock-type-face ((t (:foreground ,tre-c-dblue))))
 
 ;; overlays
 `(isearch ((t (:weight bold :background ,tre-c-green :foreground ,tre-c-white))))
 `(lazy-highlight ((t (:weight bold :background ,tre-c-white :foreground ,tre-c-black))))
 `(highlight ((t (:background ,tre-c-main0))))
 
 ;; paren overlays
 `(show-paren-match ((t (:foreground ,tre-c-black :background ,tre-c-green :weight bold))))
 `(show-paren-mismatch ((t (:background ,tre-c-red :weight bold))))

 ;; compilation 
 `(compilation-info ((t (:weight bold))))
 `(compilation-line-number ((t ())))
 `(compilation-mode-line-exit ((t (:foreground ,tre-c-green))))
 `(compilation-mode-line-fail ((t (:foreground ,tre-c-red))))

 ;; dired
 '(dired-directory ((t (:weight bold))))
 '(diredp-file-suffix ((t ())))
 '(diredp-ignored-file-name ((t ())))

 ;; org TODO
 '(org-document-title ((t (:weight bold))))
 '(org-footnote ((t ())))
 '(org-level-1 ((t (:weight bold))))
 '(org-level-2 ((t (:weight bold))))
 '(org-level-3 ((t (:weight bold))))
 '(org-level-4 ((t (:weight bold))))
 '(org-level-5 ((t (:weight bold))))
 '(org-level-6 ((t (:weight bold))))
 '(org-level-7 ((t (:weight bold))))
 '(org-level-8 ((t (:weight bold))))
 '(org-date ((t ())))
 `(org-tag ((t (:foreground ,tre-c-white))))
 '(org-todo ((t ())))
 '(org-done ((t ())))
 '(org-block ((t ())))
 '(org-block-begin-line ((t ())))
 '(org-block-end-line ((t ())))
 '(org-meta-line ((t ())))
 '(org-document-info-keyword ((t ())))
 '(org-document-info ((t ())))

 ;; FLY
 `(flycheck-info ((t (:underline ,tre-c-green))))
 `(flycheck-error ((t (:underline ,tre-c-red))))
 `(flycheck-warning ((t (:underline ,tre-c-orange))))
 `(flycheck-fringe-info ((t (:foreground ,tre-c-green))))
 `(flycheck-fringe-error ((t (:foreground ,tre-c-red))))
 `(flycheck-fringe-warning ((t (:foreground ,tre-c-orange))))
 `(flyspell-incorrect ((t (:underline ,tre-c-red))))
 `(flyspell-duplicate ((t (:underline ,tre-c-orange))))

 ;; ERC
 `(erc-direct-msg-face ((t ())))
 `(erc-input-face ((t ())))
 `(erc-inverse-face ((t ())))
 `(erc-prompt-face ((t (:weight bold))))
 `(erc-notice-face ((t (:foreground ,tre-c-white))))
 `(erc-action-face ((t (:foreground ,tre-c-white))))
 `(erc-error-face ((t (:foreground ,tre-c-red))))
 `(erc-timestamp-face ((t (:foreground ,tre-c-white :weight bold))))
 `(erc-my-nick-face ((t (:weight bold))))
 `(erc-current-nick-face ((t (:weight bold))))      
 `(erc-nick-default-face ((t (:weight bold))))
 `(erc-nick-msg-face ((t (:weight bold))))

 ;; tooltip
 `(tooltip ((t (:foreground ,tre-c-black :background ,tre-c-white))))
 `(popup-tip-face ((t (:foreground ,tre-c-black :background ,tre-c-white))))

 ;; company
 `(company-tooltip ((t (:foreground ,tre-c-black :background ,tre-c-white))))
 `(company-scrollbar-fg ((t (:background ,tre-c-black))))
 `(company-scrollbar-bg ((t (:background ,tre-c-main0))))
 `(company-tooltip-selection ((t (:background ,tre-c-main2 :foreground ,tre-c-black))))
 `(company-tooltip-annotation ((t (:foreground ,tre-c-main2))))
 `(company-tooltip-annotation-selection ((t (:foreground ,tre-c-main2))))
 `(company-tooltip-common ((t (:weight bold))))
 `(company-preview-common ((t ())))
 `(company-preview ((t (:background ,tre-c-main0 :foreground ,tre-c-black))))

 ;; sly (TODO)
 `(sly-error-face ((t (:foreground ,tre-c-red))))
 `(sly-mrepl-output-face ((t (:foreground ,tre-c-black))))
 `(sly-action-face ((t (:foreground ,tre-c-dblue))))
 `(sly-mrepl-note-face ((t (:foreground ,tre-c-dblue))))
 `(sly-mrepl-prom ((t (:foreground ,tre-c-dblue :weight bold))))
 
 ;; WK
 `(which-key-key-face ((t ())))
 `(which-key-note-face ((t ())))
 `(which-key-special-key-face ((t ())))
 `(which-key-group-description-face ((t ())))
 `(which-key-command-description-face ((t ())))
 `(which-key-local-map-description-face ((t ())))
 )


;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'tre-gray)
(provide 'tre-gray-theme)
;;; tre-gray-theme.el ends here
