;; 添加 package
(defconst ymtheory-packages
  '(
    youdao-dictionary
    org-alert
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


(defun ymtheory/init-org-alert ()

  (use-package org-alert
    :ensure t
    :defer t
    :costum (alert-default-style 'notifications)
    :config
    (setq org-alert-interval 300
          org-alert-notification-title '"Org Alter Reminder!")
    (org-alert-enable)
    )

  )
