(setq inhibit-startup-screen t)
(setq backup-directory-alist '(("." .  "~/.emacs_saves")))
(setq visible-bell 1)
(setq ring-bell-function 'ignore)
(setq haskell-tags-on-save t)
(ido-mode 1)


(setq inferior-lisp-program "clisp")
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-hook 'before-init-hook
	  (lambda ()
	    (setq emacs-basic-display t)))

;; Haskell
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'haskell-font-lock-symbols t)
(put 'downcase-region 'disabled nil)
;; Misc
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(split-window-horizontally)
(electric-pair-mode t)
;; Rust
;;(setq rust-format-on-save t)
(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))
(setq racer-rust-src-path
      (let* ((sysroot (string-trim
                       (shell-command-to-string "rustc --print sysroot")))
             (lib-path (concat sysroot "/lib/rustlib/src/rust/library"))
              (src-path (concat sysroot "/lib/rustlib/src/rust/src")))
        (or (when (file-exists-p lib-path) lib-path)
            (when (file-exists-p src-path) src-path))))

;; May be intensive in cpu
;; Racer and company mode
;;(add-hook 'after-init-hook 'global-company-mode)
;;(use-package racer
;;  :requires rust-mode
;;  :config
;;  (add-hook 'rust-mode-hook #'racer-mode)
;;  (add-hook 'racer-mode-hook #'eldoc-mode))

;; The evilest of the evils conf
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

;; Transparency
(set-frame-parameter (selected-frame) 'alpha '(85 . 50))
(add-to-list 'default-frame-alist '(alpha . (85 . 50)))

(defun toggle-transparency ()
  (interactive)
  (let ((alpha (frame-parameter nil 'alpha)))
    (set-frame-parameter
     nil 'alpha
     (if (eql (cond ((numberp alpha) alpha)
                    ((numberp (cdr alpha)) (cdr alpha))
                    ;; Also handle undocumented (<active> <inactive>) form.
                    ((numberp (cadr alpha)) (cadr alpha)))
              100)
         '(85 . 50) '(100 . 100)))))
(global-set-key (kbd "C-c t") 'toggle-transparency)

(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(cherry-blossom))
 '(custom-safe-themes
   '("3a78cae35163bb71df460ebcfdebf811fd7bc74eaa15428c7e0bccfd4f858d30" default))
 '(package-selected-packages
   '(evil slime racer rust-mode haskell-mode cherry-blossom-theme)))
(put 'upcase-region 'disabled nil)
