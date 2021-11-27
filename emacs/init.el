;;; init.el -*- lexical-binding: t; -*-

(doom!

       :completion
       (company +childframe)           ; the ultimate code completion backend
       (ivy +prescient)               ; a search engine for love and life

       :ui
       doom              ; what makes DOOM look the way it does
       doom-quit         ; DOOM quit-message prompts when you quit Emacs
       hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       modeline          ; snazzy, Atom-inspired modeline, plus API
       ophints           ; highlight the region an operation acts on
       (popup +all +default); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       fold             ; automated prettiness
       snippets          ; my elves. They type so I don't have to
       word-wrap         ; soft wrapping with language-aware indent

       :emacs
       dired             ; making dired pretty [functional]
       electric          ; smarter, keyword-based electric-indent
       ibuffer           ; interactive buffer management
       undo              ; persistent, smarter undo for your inevitable mistakes
       vc                ; version-control and Emacs, sitting in a tree

       :term
       shell             ; simple shell REPL for Emacs
       term              ; basic terminal emulator for Emacs

       :checkers
       (syntax +childframe)              ; tasing you for every semicolon you forget

       :tools
       (eval +overlay)     ; run code, run (also, repls)
       lookup              ; navigate your code and its documentation
       magit             ; a git porcelain for Emacs
       make              ; run make tasks from Emacs
       rgb               ; creating color strings

       :lang
       cc                ; C > C++ == 1
       emacs-lisp        ; drown in parentheses
       markdown          ; writing docs for people to ignore
       (org +pretty +pandoc +pandoc)               ; organize your plain life in plain text
       python            ; beautiful is better than ugly
       sh                ; she sells {ba,z,fi}sh shells on the C xor

       :config
       (default +bindings +smartparens))
