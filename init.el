;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     yaml
     haskell
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     ;; auto-completion
     ;; better-defaults
     emacs-lisp
     ;; git
     ;; markdown
     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https nil
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it . (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
;; This is the official Emacs init file for the course IOOPM. It
;; uses English, not because anyone thinks it's cooler than
;; Swedish, but to avoid encoding problems with using Swedish
;; characters. Put it in `~/.emacs.d/init.el` to use it for your
;; own Emacs. You can use as many or as few of these settings as
;; you would like. Experiment and try to find a set-up that suits
;; you!
;;
;; Some settings in this file are commented out. They are the ones
;; that require some choice of parameter (such as a color) or that
;; might be considered more intrusive than other settings (such as
;; linum-mode).
;;
;; Whenever you come across something that looks like this
;;
;;    (global-set-key (kbd "C-e") 'move-end-of-line)
;;
;; it is a command that sets the keyboard shortcut for some
;; function. If you find a function that you like, whose keyboard
;; shortcut you don't like, you can (and should!) always change it to
;; something that you do like.

;; ===========
;; Appearance
;; ===========

;; Disable the menu bar
(if (fboundp 'menu-bar-mode)
    (menu-bar-mode -1))

;; Disable the tool bar
(if (fboundp 'tool-bar-mode)
    (tool-bar-mode -1))

;; Disable the scroll bar
(if (fboundp 'scroll-bar-mode)
    (scroll-bar-mode -1))

;; Turn off annoying splash screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message t)

;; When in doubt, use text-mode
(setq default-major-mode 'text-mode)

;; Show time using Swedish format
(setq display-time-day-and-date t
      display-time-24hr-format t)
(display-time)

;; Set which colors to use
;; You can see a list of all the available colors by checking the
;; variable "color-name-rgb-alist" (Type "C-h v color-name-rgb-alist
;; <RET>"). Most normal color names work, like black, white, red,
;; green, blue, etc.
; (set-background-color "black")
; (set-foreground-color "white")
; (set-cursor-color "white")

;; Set a custom color theme
;; You can also try using a custom theme, which changes more colors
;; than just the three above. For a list of all available themes,
;; press "M-x customize-themes <RET>". You can also use a theme in
;; combination with the above set-color-commands.
;(if display-graphic-p
;    (progn
;      (load-theme 'wombat)))

;; =====
;; PATH
;; =====

;; This sets the Emacs "PATH" environment variable and the `exec-path`
;; variable to the same value your login shell sees. The reason this
;; is necessary is because of this:
;;
;; http://developer.apple.com/library/mac/#qa/qa1067/_index.html
;;
;; Basically apps launched from Finder inherit their environment from
;; a .plist file rather than the shell environment.

(setq extra-path
      (concat ":/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
              ":/opt/local/bin:/usr/texbin:/Users/Elias/shortcuts"
              ":/Users/Elias/Library/Haskell/bin:/Users/Elias/.cabal/bin"))

(defun set-exec-path-from-shell-PATH ()
  "Sets the exec-path to the same value used by the user shell"
  (let ((path-from-shell
         (replace-regexp-in-string
          "[[:space:]\n]*$" ""
          (shell-command-to-string "$SHELL -l -c 'echo $PATH'"))))
    (setenv "PATH" (concat path-from-shell extra-path))
    (setq exec-path (split-string path-from-shell path-separator))))

;; call function now
(set-exec-path-from-shell-PATH)

;; =========
;; Packages
;; =========

;; Use more package-archives (M-x list-packages)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Tell Emacs where to look for packages
(let ((default-directory "~/.spacemacs.d/ioopm-packages/"))
  (normal-top-level-add-subdirs-to-load-path))

(let ((default-directory "~/.spacemacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))
(package-initialize)

;; ===========
;; Navigation
;; ===========

;; Show both line and column number in the bottom of the buffer
(column-number-mode t)

;; Show parenthesis matching the one below the cursor
(show-paren-mode t)

;; Show line numbers to the left of all buffers
; (global-linum-mode t)

;; Sentences are not followed by two spaces
;; Makes navigating with M-e and M-a (forward/backward senctence)
;; behave like you would expect
(setq sentence-end-double-space nil)

;; C-SPC after C-u C-SPC cycles mark stack
(setq-default set-mark-command-repeat-pop t)

(require 'helm-bookmark)

;; Move entire paragraph with M-n/M-p
(global-set-key "\M-n" 'forward-paragraph)
(global-set-key "\M-p" 'backward-paragraph)

;; Back to indentation with M-a
(global-set-key "\M-a" 'back-to-indentation)
(define-key evil-insert-state-map "\M-\t" 'indent-relative)
(define-key evil-insert-state-map "\t" 'tab-to-tab-stop)
(define-key evil-normal-state-map "§" 'tab-to-tab-stop)
(define-key evil-normal-state-map (kbd "M-§") 'indent-relative)

;(define-key evil-normal-state-map (kbd "M-<tab>") 'indent-relative)
(define-key evil-motion-state-map "j" 'evil-previous-line)
(define-key evil-motion-state-map "k" 'evil-next-line)
(define-key evil-motion-state-map "é" 'evil-end-of-line)
;(define-key evil-normal-state-map "j" 'evil-previous-line)
;(define-key evil-normal-state-map "k" 'evil-next-line)
;; Avy mode
;; Jump anywhere on screen in four keystrokes or less.
(require 'avy)
(define-key global-map (kbd "C-j") 'avy-goto-word-or-subword-1)
(define-key global-map (kbd "C-M-j") 'avy-goto-char)
(define-key global-map (kbd "C-M-l") 'avy-goto-line)

;; Ace window
;; Select which window to switch to, rather than shuffling through them all
(require 'ace-window)
;(global-set-key (kbd "C-x o") 'ace-window)


;; imenu
;; Language-aware navigation
(require 'imenu-anywhere)
(setq imenu-auto-rescan t)
(global-set-key (kbd "C-.") 'imenu-anywhere)

;; ===========
;; Editing
;; ===========

;; Allow deletion of selected text with <DEL>
(delete-selection-mode 1)

;; Use multiple spaces instead of tab characters
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(defvaralias 'haskell-tab-width 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

(require 'hs-lint)
(require 'flymake-hlint)
(defun my-haskell-mode-hook ()
   (local-set-key "\C-cl" 'hs-lint))
(add-hook 'haskell-mode-hook 'my-haskell-mode-hook)

;; hippie-expand instead of dabbrev-expand
;; dabbrev-expand will try to expand the word under the cursor by
;; searching your open buffers for words beginning with the same
;; characters. For example, if you have written "printf" in an open
;; buffer you can just write "pr" and expand it to the full
;; word. hippie-expand does the same kind of search, plus some
;; additional searching, such as in your kill ring or the names of the
;; files you have open.
(global-set-key [(control tab)] 'hippie-expand)

;; Expand from everything!
(setq hippie-expand-try-functions-list
  '(try-expand-dabbrev
    try-expand-dabbrev-all-buffers
    try-complete-file-name-partially
    try-complete-file-name
    try-expand-all-abbrevs
    try-expand-list
    try-expand-dabbrev-from-kill
    try-expand-line
    try-complete-lisp-symbol-partially
    try-complete-lisp-symbol))

;; Auto complete mode
;; Always suggest completions.
; (require 'popup)
; (require 'auto-complete)
; (global-set-key (kbd "C-<return>")
;                 (lambda () (interactive)
;                   (progn (auto-complete-mode 1) (auto-complete))))

;; Visual Regexp
;; Replace normal query-replace with a better one
(require 'visual-regexp)
(global-set-key "\M-%" 'vr/query-replace)

;; Multiple cursors
;; What it sounds like
(require 'multiple-cursors)

;; Suggested bindings
; (global-set-key (kbd "C->") 'mc/mark-next-like-this)
; (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
; (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
; (global-set-key (kbd "C-M-c") 'mc/edit-lines)
(setq mac-function-modifier 'super)
(setq mac-command-modifier  'control)
(setq mac-option-modifier  'meta)
(setq mac-right-option-modifier nil)

;; Expand region
;; Select the thing I'm currently inside
(require 'expand-region)
(global-set-key (kbd "M-h") 'er/expand-region)

;; ==========
;; Interface
;; ==========

;; Use alt for meta and cmd for super (interferes less with the OS)
;(setq mac-command-modifier  'super)
;(setq mac-option-modifier  'meta)

;;; Teach Emacs Swedish keyboard layout
;(define-key key-translation-map (kbd "M-8") (kbd "["))
;(define-key key-translation-map (kbd "M-9") (kbd "]"))
;
;(define-key key-translation-map (kbd "M-(") (kbd "{"))
;(define-key key-translation-map (kbd "M-)") (kbd "}"))
;
;(define-key key-translation-map (kbd "M-7") (kbd "|"))
;(define-key key-translation-map (kbd "M-/") (kbd "\\"))
;
;(define-key key-translation-map (kbd "M-2") (kbd "@"))
;(define-key key-translation-map (kbd "M-4") (kbd "$"))

;; fn --> hyper
;; Allow using fn as modifier
; (setq mac-function-modifier 'hyper)

;; ido mode
;; Automatic auto-complete for many things, including opening files.
(ido-mode)

;; Don't automatically select things though...
(setq ido-auto-merge-delay-time 9999)

;; smex
;; M-x on steroids
(require 'smex)
(global-set-key "\M-x" 'smex)

;; Uniquify buffernames
;; Give better names to buffers of same name
(require 'uniquify)

;; Save-place
;; Remember the cursor position when you close a file, so that you
;; start with the cursor in the same position when opening it again
(setq save-place-file "~/.spacemacs.d/saveplace")
(setq-default save-place t)
(require 'saveplace)

;; Recent files
;; Enable a command to list your most recently edited files. If you
;; know you are opening a file that you have edited recently, this
;; should be faster than using find-file ("C-x C-f"). The code below
;; binds this to the keyboard shortcut "C-x C-r", which replaces the
;; shortcut for the command find-file-read-only.
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)

(defun recentf-ido-find-file ()
  "Find a recent file using Ido."
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t)))
    (when file
      (find-file file))))

(global-set-key "\C-x\C-r" 'recentf-ido-find-file)


;; ============
;; Programming
;; ============

;; Flycheck
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Key binding for finding next error
(dolist (hook '(prog-mode-hook))
  (add-hook hook
            (lambda () (interactive)
              (local-set-key (kbd "C-c C-n")
                             'next-error))))

;; Key binding for finding previous error
(dolist (hook '(prog-mode-hook))
  (add-hook hook
            (lambda () (interactive)
              (local-set-key (kbd "C-c C-p")
                             'previous-error))))

;; Display flymake errors in minibuffer
(custom-set-variables
     '(help-at-pt-timer-delay 0.2)
     '(help-at-pt-display-when-idle '(flymake-overlay)))

;; YASnippets
;; Expand e.g. "for<tab>" to "for(int i = 0; i < N; i++) {}"
(require 'yasnippet)
(yas-global-mode 1)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(c-basic-offset 4)
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(flycheck-clang-args
   (quote
    ("-Wfloat-equal" "-Wunreachable-code" "-Wredundant-decls" "-Wpadded" "-Wstrict-prototypes" "-Wcast-align" "-Wbad-function-cast" "-Wcast-qual" "-Wpointer-arith" "-Wlogicalop" "-Wshadow" "-Wjump-misses-init" "-Wextra" "-Wall")))
 '(flycheck-clang-include-path (quote ("/usr/local/Cellar/cunit/2.1-3/include")))
 '(haskell-indent-spaces 4)
 '(help-at-pt-display-when-idle (quote (flymake-overlay)) nil (help-at-pt))
 '(help-at-pt-timer-delay 0.2)
 '(line-number-mode nil)
 '(package-selected-packages
   (quote
    (yaml-mode intero haskell-snippets company-ghci company-ghc ghc flycheck hlint-refactor hindent helm-hoogle yasnippet company haskell-mode cmm-mode ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async org-plus-contrib evil-unimpaired f s dash)))
 '(tab-stop-list (quote (4 8)))
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

