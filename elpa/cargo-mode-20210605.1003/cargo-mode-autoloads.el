;;; cargo-mode-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "cargo-mode" "cargo-mode.el" (0 0 0 0))
;;; Generated autoloads from cargo-mode.el

(autoload 'cargo-mode-execute-task "cargo-mode" "\
Select and execute cargo task.
If PREFIX is non-nil, prompt for additional params.

\(fn &optional PREFIX)" t nil)

(autoload 'cargo-mode-test "cargo-mode" "\
Run the `cargo test` command.
If PREFIX is non-nil, prompt for additional params.

\(fn &optional PREFIX)" t nil)

(autoload 'cargo-mode-build "cargo-mode" "\
Run the `cargo build` command.
If PREFIX is non-nil, prompt for additional params.

\(fn &optional PREFIX)" t nil)

(autoload 'cargo-mode-test-current-buffer "cargo-mode" "\
Run the cargo test for the current buffer.
If PREFIX is non-nil, prompt for additional params.

\(fn &optional PREFIX)" t nil)

(autoload 'cargo-mode-test-current-test "cargo-mode" "\
Run the Cargo test command for the current test.
If PREFIX is non-nil, prompt for additional params.

\(fn &optional PREFIX)" t nil)

(autoload 'cargo-mode-last-command "cargo-mode" "\
Execute the last `cargo-mode` task." t nil)

(autoload 'cargo-minor-mode "cargo-mode" "\
Cargo minor mode. Used to hold keybindings for cargo-mode.
\\{cargo-minor-mode-map}

This is a minor mode.  If called interactively, toggle the `cargo
minor mode' mode.  If the prefix argument is positive, enable the
mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `cargo-minor-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "cargo-mode" '("cargo-"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8-emacs-unix
;; End:
;;; cargo-mode-autoloads.el ends here
