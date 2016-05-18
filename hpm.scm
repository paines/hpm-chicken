(use matchable doodle random-mtzig) ; doodle-colors)

(define red '(1 0 0 0.3))

(define *color* '(1 0 0 0.3))

(define *x-offset* 5)
(define *y-offset* 5)

(define st (init 24))

(world-inits
 (lambda ()
   (clear-screen)))

(define (move-left s)
  (sprite-x-set! s (- (sprite-x s) 5)))

(define (move-right s)
  (sprite-x-set! s (+ (sprite-x s) *x-offset*)))

(define (move-up s)
  (sprite-y-set! s (- (sprite-y s) *y-offset*)))

(define (move-down s)
  (sprite-y-set! s (+ (sprite-y s) *y-offset*)))

(define sprite1 (make-sprite 'sprite1 0 0 20 20)) 
(add-sprite! sprite1)

(define sprite2 (make-sprite 'sprite2 50 50 20 20)) 
(add-sprite! sprite2)

(define (draw-rect r)
  (let ((rect (cdr r)))
    (rectangle (sprite-x rect)
    	       (sprite-y rect)
    	       (sprite-width rect)
    	       (sprite-height rect)
    	       *color*)))

(world-changes
  (lambda (events dt exit)
    (for-each
     (lambda (e)
       (match e

	 (('key 'pressed 'left)
	  (move-left sprite1))
	 
	 (('key 'pressed 'right)
	  (move-right sprite1))

	 (('key 'pressed 'down)
	  (move-down sprite1))

	 (('key 'pressed 'up)
	  (move-up sprite1))

	 (('key 'pressed #\esc)
	  (exit #t))
	 (else (void))))
     events)
    (clear-screen)
    (set! *color* (list (randu! st)  (randu! st)  (randu! st)  (randu! st)))
    (for-each (lambda (rect)
		(draw-rect rect))
	      *sprites*)))

(new-doodle title: "HyperPixelMan" background: solid-black)
(run-event-loop run-in-background: #t minimum-wait: (/ 1 60))


