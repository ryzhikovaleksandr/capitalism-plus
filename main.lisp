(in-package :capitalism-plus)

(defun start-game ()
    (let* ((city (capitalism-plus/world:create-city "New Town" 500000))
           (company (capitalism-plus/company:create-company "MyCorp" 10000000))
           (product (capitalism-plus/product:create-product "Widget" 50 100)))
        (format t "Welcome to Capitalism Plus!~%")
        (format t "City: ~A (~D population)~%" (capitalism-plus/world:city-name city)
                                                (capitalism-plus/world:city-population city))
        (format t "Company: ~A has $~D~%" (capitalism-plus/company:company-name company)
                                            (capitalism-plus/company:company-money company))
        (capitalism-plus/market:sell-product-to-market company product 10)
        (format t "After selling 10 products, company money: $~D~%" 
             (capitalism-plus/company:company-money company))))