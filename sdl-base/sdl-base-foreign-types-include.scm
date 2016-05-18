(define-syntax pointer-to-record-lambda
  (ir-macro-transformer
   (lambda (e i c)
     (let ((record-name (cadr e)))
       `(lambda (pointer)
	  (and pointer
	       (,(i (symbol-append 'make- (strip-syntax record-name))) pointer)))))))

(define (-sdl-unbox-rect e)
  (let ((p (##sys#make-pointer)))
    (if e (##core#inline "C_pointer_to_block" p (sdl-rect-buffer e)))
    p))

(define-foreign-type SDL_Rect (c-pointer "SDL_Rect")
  -sdl-unbox-rect)

(define (-sdl-unbox-color e)
  (let ((p (##sys#make-pointer)))
    (##core#inline "C_pointer_to_block" p (sdl-color-buffer e))
    p))

(define-foreign-type SDL_Color (c-pointer "SDL_Color")
  -sdl-unbox-color)

(define (-sdl-unbox-event e)
  (let ((p (##sys#make-pointer)))
    (##core#inline "C_pointer_to_block" p (sdl-event-buffer e))
    p))

(define-foreign-type SDL_Event (c-pointer "SDL_Event")
  -sdl-unbox-event)


(define-foreign-type SDL_version (c-pointer "SDL_version")
  sdl-version-pointer
  (pointer-to-record-lambda sdl-version))

(define-foreign-type SDL_PixelFormat (c-pointer "SDL_PixelFormat")
  sdl-pixel-format-pointer
  (pointer-to-record-lambda sdl-pixel-format))

(define-foreign-type SDL_Surface (c-pointer "SDL_Surface")
  sdl-surface-pointer
  (lambda (p) (set-finalizer!
	       ((pointer-to-record-lambda sdl-surface) p)
	       sdl-free-surface)))

(define-foreign-type SDL_Joystick (c-pointer "SDL_Joystick")
  sdl-joystick-pointer
  (pointer-to-record-lambda sdl-joystick))

(define-foreign-type SDL_VideoInfo (c-pointer "SDL_VideoInfo")
  sdl-video-info-pointer
  (pointer-to-record-lambda sdl-video-info))
