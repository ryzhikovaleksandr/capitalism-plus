(defpackage :capitalism-plus/company
    (:use :cl)
    (:import-from :capitalism-plus/product :product-price)
    (:export :create-company
             :sell-product
             :company-name
             :company-money))

(in-package :capitalism-plus/company)

(defstruct company
    name
    money)

(defun create-company (name start-money)
    (make-company :name name :money start-money))

(defun sell-product (company product amount)
    (incf (company-money company) 
        (* (product-price product) amount)))