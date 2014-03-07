(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(py-pychecker-command "pychecker.sh")
 '(py-pychecker-command-args (quote ("")))
 '(python-check-command "pychecker.sh")
 '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))))


(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Show column-number in the mode line
(column-number-mode 1)

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

(add-to-list 'load-path "~/.emacs.d/plugins/")

(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
(scroll-bar-mode -1)
(tool-bar-mode -1)

(require 'windmove)
(windmove-default-keybindings 'meta)

(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

(add-to-list 'load-path "/usr/local/magit")
(require 'magit)

(add-to-list 'load-path "/usr/local/python-mode.el-6.1.1/")
(setq py-install-directory "/usr/local/python-mode.el-6.1.1/")
;; (require 'python-mode)
;;(require 'ipython)



;; (define-key python-mode-map (kbd "C-`") 'next-error)
;; (define-key python-mode-map (kbd "C-c C-v") 'py-pychecker-run)

;; Always open files as read-only
(add-hook 'find-file-hook (lambda () (setq buffer-read-only t)))

(autoload #'espresso-mode "espresso" "Start espresso-mode" t)
(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))

;;(autoload 'js2-mode "js2" nil t)
;;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))