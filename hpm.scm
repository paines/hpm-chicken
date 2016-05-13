(use doodle)
(new-doodle title: "HyperPixelMan" background: solid-black)
(run-event-loop run-in-background: #t minimum-wait: (/ 2 100))

(define red '(1 0 0 0.3))
(rectangle 0 0 20 20 red)

