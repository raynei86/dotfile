;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq doom-font (font-spec :family "Hack" :size 20)
      doom-variable-pitch-font (font-spec :family "Ubuntu" :size 20)
      doom-big-font (font-spec :family "Hack" :size 26))

(setq doom-theme 'doom-gruvbox)

(setq org-directory "~/Org/")

(setq display-line-numbers-type t)

(add-hook 'c-mode-common-hook #'clang-format+-mode)
