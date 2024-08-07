;;; cobalt-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from cobalt.el

(autoload 'cobalt-init "cobalt" "\
Create a new cobalt site at the given path indicated by ARGS.

(fn ARGS)" t)
(autoload 'cobalt-change-current-site "cobalt" "\
Show a selection to switch current site.
Kills an exiting server process.  User should run ‘cobalt-serve’ again for the newly switch site." t)
(register-definition-prefixes "cobalt" '("cobalt-"))

;;; End of scraped data

(provide 'cobalt-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; cobalt-autoloads.el ends here
