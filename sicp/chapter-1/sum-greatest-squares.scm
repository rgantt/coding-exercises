(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (smallest-2 x y)
   (cond ((< x y) x)
         (else y)))
         
(define (smallest-3 x y z)
   (cond ((< x (smallest-2 y z)) x)
         ((< y (smallest-2 x z)) y)
         ((< z (smallest-2 y x)) z)
         (else x)))

(define (sum-squares-largest x y z) 
   (cond ((= (smallest-3 x y z) z) (sum-of-squares x y)) 
         ((= (smallest-3 x y z) y) (sum-of-squares x z)) 
         ((= (smallest-3 x y z) x) (sum-of-squares y z))))
