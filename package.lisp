(defpackage :capitalism-plus
    (:use :cl)
    (:export :start-game))

(defpackage :capitalism-plus/world
    (:use :cl :capitalism-plus)
    (:export :create-city :city-name :city-population))

(defpackage :capitalism-plus/company
    (:use :cl :capitalism-plus)
    (:export :create-company :company-name :company-money :sell-product))

(defpackage :capitalism-plus/product
    (:use :cl :capitalism-plus)
    (:export :create-product :product-name :product-cost :product-price))

(defpackage :capitalism-plus/market
    (:use :cl :capitalism-plus)
    (:export :sell-product-to-market))