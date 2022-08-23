(defun notify-osx (title message)
  (call-process "terminal-notifier"
	              nil 0 nil
	              "-group" "Emacs"
	              "-title" title
	              "-sound" "default"
	              "-message" message
	              "-activate" "org.gnu.Emacs"))


(defun ymtheory/markdown-to-html ()
  (interactive)
  (start-process "grip" "*gfm-to-html*" "grip" (buffer-file-name) "5000")
  (browse-url (format "http://localhost:5000/%s.%s" (file-name-base) (file-name-extension (buffer-file-name)))))
