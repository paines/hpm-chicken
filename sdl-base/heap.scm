;; Leftist Heaps, implemented from section 3.1 of "Purely Functional
;; Data Structures", by Chris Okasaki.

;; Algebraic type. '() is used as the base case.
(define-record-type heap-node
  (make-heap-node* rank element left right)
  heap-node?
  (rank heap-node-rank)
  (element heap-node-element)
  (left heap-node-left)
  (right heap-node-right))

(define (empty-heap) '())

(define (heap? h)
  (or (null? h)
      (heap-node? h)))

(define (heap-empty? h)
  (null? h))

(define (heap-minimum h)
  (if (heap-empty? h)
      (error "heap-minimum: empty heap" h)
      (heap-node-element h)))

(define (heap->tree h)
  (if (null? h)
      '()
      (list (heap-node-element h)
	    (heap->tree (heap-node-left h))
	    (heap->tree (heap-node-right h)))))

(define (heap-functor elt<=)
  (define (rank h)
    (if (null? h)
	0
	(heap-node-rank h)))

  (define (make-node elt left right)
    (let ((lrank (rank left))
	  (rrank (rank right)))
      (if (>= lrank rrank)
	  (make-heap-node* (+ rrank 1) elt left right)
	  (make-heap-node* (+ lrank 1) elt right left))))

  (define (heap-insert elt h)
    (heap-merge h
		(make-heap-node* 1 elt '() '())))

  (define (heap-merge h1 h2)
    (cond
     ((heap-empty? h1) h2)
     ((heap-empty? h2) h1)
     (else
      (let ((elt1 (heap-node-element h1))
	    (elt2 (heap-node-element h2)))
	(if (elt<= elt1 elt2)
	    (make-node elt1 (heap-node-left h1) (heap-merge (heap-node-right h1) h2))
	    (make-node elt2 (heap-node-left h2) (heap-merge h1 (heap-node-right h2))))))))

  (define (heap-delete-minimum h)
    (heap-merge (heap-node-left h)
		(heap-node-right h)))

  (values heap-insert
	  heap-merge
	  heap-delete-minimum))
