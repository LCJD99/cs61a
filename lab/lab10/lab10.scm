(define (make-adder num) 
  (lambda (inc) (+ num inc))
)

(define (composed f g) 
  (lambda (x) (f (g x)))
)

(define (my-filter pred s) 
  (if 
    (null? s) s

    (if 
    (pred (car s)) 
      (append (list (car s)) (my-filter pred (cdr s))) 
    (my-filter pred (cdr s)) 
    )
  )
)

(define (exp b n)
  (define (helper n so-far) 
    (if (= n 0) 
      so-far
      (helper (- n 1) (* so-far b))
    ) 
  );; since b never changes, we can use the b from the outer function
  (helper n 1)
)

(define (interleave lst1 lst2) 


)

(define (square n) (* n n))

(define (pow base exp) 'YOUR-CODE-HERE)
