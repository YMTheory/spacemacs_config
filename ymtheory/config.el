;; 开启行号显示
(global-linum-mode t)

;; 定义快捷键
(global-set-key (kbd "M-s o") 'occur-dwim)

;; 将 occur 的 buffer 中的光标移动方式修改为 HJKL
;;(evilified-state-evilify-map occur-mode-map
;;  :mode occur-mode)

;; (defvar eldoc-posframe-buffer "*eldoc-posframe-buffer*"
;;         "The posframe buffer name use by eldoc-posframe.")

;;       (defvar eldoc-posframe-hide-posframe-hooks
;;         '(pre-command-hook post-command-hook focus-out-hook)
;;         "The hooks which should trigger automatic removal of the posframe.")

;;       (defvar eldoc-posframe-delay 0.2
;;         "Delay seconds to display `eldoc'.")

;;       (defvar-local eldoc-posframe--timer nil)

;;       (defun eldoc-posframe-hide-posframe ()
;;         "Hide messages currently being shown if any."
;;         (when eldoc-posframe--timer
;;           (cancel-timer eldoc-posframe--timer))

;;         (posframe-hide eldoc-posframe-buffer)
;;         (dolist (hook eldoc-posframe-hide-posframe-hooks)
;;           (remove-hook hook #'eldoc-posframe-hide-posframe t)))

;;       (defun eldoc-posframe-show-posframe (str &rest args)
;;         "Display STR with ARGS."
;;         (when eldoc-posframe--timer
;;           (cancel-timer eldoc-posframe--timer))

;;         (posframe-hide eldoc-posframe-buffer)
;;         (dolist (hook eldoc-posframe-hide-posframe-hooks)
;;           (add-hook hook #'eldoc-posframe-hide-posframe nil t))

;;         (setq eldoc-posframe--timer
;;               (run-with-idle-timer
;;                eldoc-posframe-delay nil
;;                (lambda ()
;;                  (when str
;;                    (posframe-show
;;                     eldoc-posframe-buffer
;;                     :string (apply #'format str args)
;;                     :postion (point)
;;                     :poshandler #'posframe-poshandler-point-bottom-left-corner-upward
;;                     :left-fringe 8
;;                     :right-fringe 8
;;                     :internal-border-width 1
;;                     :internal-border-color (face-attribute 'font-lock-comment-face :foreground)
;;                     :background-color (face-background 'tooltip)))))))

;;      (setq eldoc-message-function #'eldoc-posframe-show-posframe)
