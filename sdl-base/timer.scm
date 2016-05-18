;; A heap of timers.

(define-record-type timer
  (make-timer* time callback)
  timer?
  (time timer-time)
  (callback timer-callback))

(define (timer<=? a b)
  (<= (timer-time a)
      (timer-time b)))

(define make-timer-queue
  (let-values (((timer-heap-insert
		 timer-heap-merge
		 timer-heap-delete-minimum)
		(heap-functor timer<=?)))
    (lambda (now-fn)
      (define timers (empty-heap))

      (define (add-timer! time callback)
	(set! timers (timer-heap-insert (make-timer* time callback) timers)))

      (define (process-queue!)
	(let ((now (now-fn)))
	  (let loop ()
	    (if (heap-empty? timers)
		#f
		(let* ((next (heap-minimum timers))
		       (delta (- (timer-time next) now)))
		  (if (positive? delta)
		      delta
		      (begin
			(set! timers (timer-heap-delete-minimum timers))
			((timer-callback next))
			(loop))))))))

      (values add-timer!
	      process-queue!))))
