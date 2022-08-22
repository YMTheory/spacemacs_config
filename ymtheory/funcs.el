(defun notify-osx (title message)
  (call-process "terminal-notifier"
	              nil 0 nil
	              "-group" "Emacs"
	              "-title" title
	              "-sound" "default"
	              "-message" message
	              "-activate" "org.gnu.Emacs"))
