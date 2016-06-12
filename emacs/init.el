;; require package managers, but we'll avoid them if at all possible
(require 'package)

(push '("melpa" . "http://melpa.milkbox.net/packages/") package-archives)
(push '("org" . "http://orgmode.org/elpa/") package-archives)

(setq package-list '(
  color-theme
  company
  csharp-mode
  evil
  evil-leader
  ido
  ido-vertical-mode
  flx-ido
  omnisharp
  seti-theme
))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'color-theme)
(require 'company)
(require 'csharp-mode)
(require 'evil)
(require 'evil-leader)
(require 'ido)
(require 'ido-vertical-mode)
(require 'flx-ido)
(require 'omnisharp)

(color-theme-initialize)
(load-theme 'seti t)

(global-set-key [f8] 'neotree-toggle)

;;Evil
(evil-mode 1)

;;Evil leader
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")

(evil-leader/set-key
  "p" 'omnisharp-navigate-to-solution-file
)

(company-mode)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0.03)
(setq company-minimum-prefix-length 2)
;;(setq company-require-match 'nil)
(setq company-show-numbers 't)
(setq omnisharp-company-match-type 'company-match-flx)
(setq gc-cons-threshold 20000000)
(setq company-dabbrev-downcase 'nil)
(eval-after-load 'company
    '(add-to-list 'company-backends 'company-omnisharp))

(ido-mode 1)
(ido-vertical-mode 1)

(add-hook 'ido-setup-hook 'vim-like-ido-keys)

(defun vim-like-ido-keys ()
  "Add vim like keybindings for ido."
  (define-key ido-completion-map (kbd "C-j") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-k") 'ido-prev-match))

(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-use-faces t)
(setq ido-enable-flex-matching t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(omnisharp-server-executable-path
   "C:\\Users\\cmcknight\\Code\\omnisharp-server\\OmniSharp\\bin\\Debug\\OmniSharp.exe")
 '(package-selected-packages (quote (omnisharp evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:foreground "white smoke")))))

