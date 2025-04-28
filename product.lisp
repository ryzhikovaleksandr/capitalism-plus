(in-package :capitalism-plus/product)

(defstruct product
    name
    cost
    price)

(defun create-product (name cost price)
    (make-product :name name :cost cost :price price))