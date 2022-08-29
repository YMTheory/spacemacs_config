;; 添加 package
(defconst ymtheory-packages
  '(
    youdao-dictionary
    ;; org-alert
    org-notify
    )
  )

;; 初始化 package
;; 可以使用 , d m 快捷键, 然后按下 e 展开宏
(defun ymtheory/init-youdao-dictionary ()
  (use-package youdao-dictionary
    :defer t
    :init
    (spacemacs/set-leader-keys "oy" 'youdao-dictionary-search-at-point+)
    )
  )


;; (defun ymtheory/init-org-alert ()
;;   (use-package org-alert
;;     :ensure t
;;     :custom (alert-default-style 'osx-notifier)
;;     :config
;;     (setq org-alert-interval 300
;;           org-alert-notification-title '"Org Alter Reminder!")
;;     (org-alert-enable)
;;     (spacemacs/set-leader-keys "oc" 'org-alert-check)
;;   )
;; )


(defun ymtheory/init-org-notify ()
  (use-package org-notify
  :ensure t
  :after org
  :config
  (org-notify-start)
  )
)


;; (require 'org-alert)
