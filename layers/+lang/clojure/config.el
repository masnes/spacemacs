;;; config.el --- Clojure Layer configuration File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; ---------------------------------------------------------------------------
;; Prefixes
;; ---------------------------------------------------------------------------

;; Variables

(spacemacs|defvar-company-backends cider-mode)
(spacemacs|defvar-company-backends cider-repl-mode)

(defvar clojure-enable-fancify-symbols nil
  "If non nil the `fancify-symbols' function is enabled.")

(setq clojure/key-binding-prefixes '(("md" . "debug")
                                     ("me" . "evaluation")
                                     ("mg" . "goto")
                                     ("mh" . "documentation")
                                     ("mr" . "refactor")
                                     ("mra" . "add")
                                     ("mrc" . "cycle")
                                     ("mrd" . "destructure")
                                     ("mre" . "extract/expand")
                                     ("mrf" . "fn-create/find")
                                     ("mrh" . "hotload")
                                     ("mri" . "introduce/inline")
                                     ("mrm" . "move")
                                     ("mrp" . "project-clean/promote-fn")
                                     ("mrr" . "remove/rename/replace")
                                     ("mrs" . "show/sort/stop")
                                     ("mrt" . "thread")
                                     ("mru" . "unwind/update")
                                     ("ms" . "repl")
                                     ("mt" . "test")
                                     ("mT" . "toggle")
                                     ("mf" . "format")))
(mapc (lambda (x) (spacemacs/declare-prefix-for-mode
                   'clojure-mode (car x) (cdr x)))
            clojure/key-binding-prefixes)
