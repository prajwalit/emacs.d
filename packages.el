(require 'package)
(require 'cl)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-pinned-packages
	     '(cider . "melpa-stable") t)


(package-initialize)


(defvar required-packages
  '(;; Tools
    magit
    smartparens
    undo-tree
    auto-complete
    ace-jump-mode

    ;; Programming
    web-mode
    clojure-mode
    cider

    ;; Themes
    tangotango-theme) "Default packages")


(defun packages-installed-p ()
  (loop for p in required-packages
	when (not (package-installed-p p)) do (return nil)
	finally (return t)))

; If not all packages are installed,
; check one by one and install the missing ones.
(unless (packages-installed-p)
  ; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))
