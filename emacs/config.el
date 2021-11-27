;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(setq user-full-name "Raynei"
      user-mail-address "raynei@protonmail.com")

(setq doom-font (font-spec :family "Hack" :size 23)
      doom-variable-pitch-font (font-spec :family "Ubuntu" :size 23)
      doom-big-font (font-spec :family "Hack" :size 26))

(setq doom-theme 'doom-molokai)

(setq display-line-numbers-type 'relative)

(setq org-directory "~/Org")

(map! :map global-map "C-x m" #'man)
