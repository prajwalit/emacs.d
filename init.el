(setq user-full-name "Prajwalit Bhopale")
(setq user-mail-address "contact@prajwalit.com")

(setq root-dir (file-name-directory
		(or (buffer-file-name) load-file-name)))

(setq config-dir (file-name-as-directory (concat root-dir "configs")))
(setq tmp-dir (file-name-as-directory (concat root-dir "tmp")))
(make-directory tmp-dir t)

(load-file (concat root-dir "packages.el"))
(load-file (concat root-dir "interface.el"))
(load-file (concat root-dir "key-bindings.el"))
(load-file (concat root-dir "system.el"))
(load-file (concat root-dir "global.el"))
(load-file (concat config-dir "init.el"))
