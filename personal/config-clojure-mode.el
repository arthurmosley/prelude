;; clojure-lsp integration via lsp-mode

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :hook ((clojure-mode        ; for .clj files
          clojurec-mode       ; for compiled Clojure files
          clojurescript-mode) ; for .cljs files
         . lsp-deferred)
  :init
  ;; Optional: set prefix for lsp-command-keymap (defaults to "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :config
  ;; Prefer Flycheck over Flymake for diagnostics
  (setq lsp-prefer-flymake nil)
  ;; Adjust clojure-lsp server command if necessary.
  (setq lsp-clojure-server-command '("clojure-lsp")))

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :config
  (setq lsp-ui-sideline-enable t
        lsp-ui-doc-enable t))

;; You can also customize any additional lsp settings as desired.
