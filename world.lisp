(defpackage :capitalism-plus/world
    (:use :cl)
    (:export :create-city
             :city-name
             :city-population))

(in-package :capitalism-plus/world)

(defstruct city
    name
    population)

(defun create-city (name population)
    (make-city :name name :population population))