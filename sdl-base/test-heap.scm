(use srfi-1)
(use srfi-9)
(use sdl)

(define-values (s-heap-insert
		s-heap-merge
		s-heap-delete-minimum)
  (heap-functor string<=?))

(define h (fold s-heap-insert
		(empty-heap)
		'("m" "f" "z" "d" "e" "r" "a")))

(define (pop/print h)
  (write (heap-minimum h))
  (newline)
  (s-heap-delete-minimum h))
