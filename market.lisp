(defpackage :capitalism-plus/market
    (:use :cl)
    (:import-from :capitalism-plus/company :sell-product)
    (:export :sell-product-to-market))

(in-package :capitalism-plus/market)

(defun sell-product-to-market (company product amount)
    (sell-product company product amount))