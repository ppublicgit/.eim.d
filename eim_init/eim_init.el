;;get fullpath in case of relative paths used
(defun get-fullpath (@file-relative-path)
  (concat (file-name-directory (or load-file-name buffer-file-name)) @file-relative-path)
  )

;;load the basic eim settings with no package requirements
(load (get-fullpath "eim_settings"))

(require 'package)
(package-initialize)
;;load specific files for eim initialization
;;(load (get-fullpath "eim_package_dependency"))
(load (get-fullpath "eim_keychord"))
