;; 添加 package
(defconst ymtheory-packages
  '(youdao-dictionary)
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
