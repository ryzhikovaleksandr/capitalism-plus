(in-package :capitalism-plus/company)

(defstruct
    name
    money)

(defun create-company (name start-money)
    (make-company :name name :money start-money))

(defun sell-product (company product amount)
    (incf (company-money company) (* (product-price product) amount)))