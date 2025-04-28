(defpackage :capitalism-plus/working-unit
    (:use :cl)
    (:export :working-unit-name
             :working-unit-people-count
             :working-unit-salary-per-person
             :create-working-unit
             :total-salary
             :print-working-units))

(in-package :capitalism-plus/working-unit)

(defstruct working-unit
    name
    people-count
    salary-per-person)

(defvar *working-units* '())

(defun create-working-unit (name people-count salary-per-person)
    (let ((unit (make-working-unit :name name
                                   :people-count people-count
                                   :slary-per-person salary-per-person)))
        (push unit *working-units*)
        unit))

(defun total-salary (unit)
    (* (working-unit-people-count unit) (working-unit-salary-per-person unit)))

(defun print-working-units ()
    (dolist (unit *working-units*)
        (format t "Unit: ~A, People: ~A, Salary per person: ~A, Total salary: ~A~%"
            (working-unit-name unit)
            (working-unit-people-count unit)
            (working-unit-salary-per-person unit)
            (total-salary unit))))