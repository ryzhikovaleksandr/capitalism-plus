(defpackage :capitalism-plus
    (:use :cl)
    (:import-from :capitalism-plus/world 
        :create-city 
        :city-name
        :city-population)
    (:import-from :capitalism-plus/company 
        :create-company
        :company-name
        :company-money)
    (:import-from :capitalism-plus/product
        :create-product)
    (:export :start-game))

(in-package :capitalism-plus)

(defun start-game ()
    (let* ((city (create-city "New Town" 500000))
           (company (create-company "MyCorp" 10000000))
           (product (create-product "Widget" 50 100)))
        (format t "Welcome to Capitalism Plus!~%")
        (format t "City: ~A (~D population)~%" (city-name city)
                                               (city-population city))
        (format t "Company: ~A has $~D~%" (company-name company)
                                          (company-money company))
        (capitalism-plus/market:sell-product-to-market company product 10)
        (format t "After selling 10 products, company money: $~D~%" 
             (company-money company))))