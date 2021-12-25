;;; ~/.doom.d/keybinds.el -*- lexical-binding: t; -*-

(defvar light-or-dark nil)

(defun toggle-light-and-dark-theme ()
  (interactive)
  (cond
   (light-or-dark
    (setq light-or-dark nil)
    (load-theme 'doom-ayu-mirage))
   (t
    (setq light-or-dark t)
    (load-theme 'doom-ayu-light))))

(map! "<f12>" #'toggle-light-and-dark-theme)

(map! :leader
      :desc "Open man page"
      "m h m" #'man)

(map! :leader
      :desc "Open LSP imenu"
      "c ;" #'lsp-ui-imenu)
