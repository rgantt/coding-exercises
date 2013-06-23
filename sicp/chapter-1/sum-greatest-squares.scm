(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sum-squares-largest x y z) 
   (cond ((= (min x y z) z) (sum-of-squares x y)) 
         ((= (min x y z) y) (sum-of-squares x z)) 
         ((= (min x y z) x) (sum-of-squares y z))))
