(in-package :capitalism-plus/world)

(defstruct
    name
    population)

(defun create-city (name population)
    (make-city :name name :population population))