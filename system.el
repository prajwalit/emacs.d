(setq magit-git-executable "/usr/local/bin/git"
      vc-git-program "/usr/local/bin/git")

(setq mac-command-modifier 'meta)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
