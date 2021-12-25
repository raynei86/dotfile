;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(load! "keybinds")

(setq user-full-name "Raynei"
      user-mail-address "raynei@protonmail.com")

(setq doom-font (font-spec :family "Hack" :size 23)
      doom-variable-pitch-font (font-spec :family "Overpass" :size 23)
      doom-big-font (font-spec :family "Hack" :size 35))

(setq doom-theme 'doom-ayu-mirage)

(setq display-line-numbers-type t)

(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-shortmenu)

(add-hook 'meson-mode-hook 'company-mode)
(add-hook 'org-mode-hook #'flycheck-mode nil)

(display-time-mode)

(setq lsp-ui-imenu-window-width 45)

(setq org-directory "~/Org")

(setq lsp-clients-clangd-args '("-j=3"
                                "--background-index"
                                "--clang-tidy"
                                "--completion-style=detailed"
                                "--header-insertion=never"
                                "--header-insertion-decorators=0"))
(after! lsp-clangd (set-lsp-priority! 'clangd 2))
