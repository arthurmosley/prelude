(use-package org-project-capture
  :bind (("C-c n p" . org-project-capture-project-todo-completing-read))
  :ensure t
  :config
  (progn
    (setq org-project-capture-backend
          (make-instance 'org-project-capture-projectile-backend))
    (setq org-project-capture-projects-file "~/org/projects.org")
    (org-project-capture-single-file)))
