;;;; sdl.scm - Simple SDL binding for Chicken
; Copyright (C) 2002-2004 Tony Garnock-Jones <tonyg@kcbbs.gen.nz>
;
; This library is free software; you can redistribute it and/or modify
; it under the terms of the GNU Library General Public License as
; published by the Free Software Foundation; either version 2 of the
; License, or (at your option) any later version.
;
; This library is distributed in the hope that it will be useful, but
; WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
; Library General Public License for more details.
;
; You should have received a copy of the GNU Library General Public
; License along with this library; if not, write to the Free
; Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
; USA
(module sdl-base

( make-sdl-version
  sdl-version-pointer
  sdl-version-major
  sdl-version-minor
  sdl-version-patch
  sdl-version-at-least
  sdl-compiled-version
  sdl-linked-version

  make-sdl-rect
  sdl-rect-buffer
  sdl-rect?
  sdl-rect-x
  sdl-rect-y
  sdl-rect-w
  sdl-rect-h

  make-sdl-pixel-format
  sdl-pixel-format-pointer
  sdl-pixel-format?
  sdl-pixel-format-bytes-per-pixel
  sdl-pixel-format-rmask
  sdl-pixel-format-gmask
  sdl-pixel-format-bmask
  sdl-pixel-format-amask

  
  make-sdl-surface
  sdl-surface-pointer
  sdl-surface?
  sdl-create-rgb-surface
  sdl-surface-flags
  sdl-surface-pixel-format
  sdl-surface-width
  sdl-surface-height
  sdl-surface-pitch
  sdl-surface-pixels
  sdl-surface-pixels-length

  make-sdl-video-info
  sdl-video-info-pointer
  sdl-get-video-info
  sdl-video-info-hw-available
  sdl-video-info-wm-available
  sdl-video-info-blit-hw
  sdl-video-info-blit-hw-cc
  sdl-video-info-blit-hw-a
  sdl-video-info-blit-sw
  sdl-video-info-blit-sw-cc
  sdl-video-info-blit-sw-a
  sdl-video-info-blit-fill
  sdl-video-info-video-mem
  sdl-video-info-vfmt
  sdl-video-info-current-w
  sdl-video-info-current-h

  sdl-get-clip-rect!
  sdl-set-clip-rect!
  sdl-set-color-key!
  sdl-set-alpha!
  sdl-display-format
  sdl-display-format-alpha
  sdl-convert-surface

  ;; sdl system stuff
  sdl-init
  sdl-init-sub-system
  sdl-quit-sub-system
  sdl-quit
  sdl-was-init
  sdl-get-error
  sdl-clear-error!
  sdl-wm-set-caption
  sdl-wm-get-caption-title
  sdl-wm-get-caption-icon
  sdl-wm-get-caption
  sdl-wm-set-icon
  sdl-wm-iconify-window
  sdl-wm-toggle-full-screen
  sdl-wm-grab-input
  sdl-get-ticks
  sdl-delay
  timer?
  get-time-of-day
  get-time-of-day
  sdl-add-relative-timer!
  sdl-pump-events
  sdl-poll-event!
  sdl-wait-event!*
  sdl-wait-event!
  sdl-push-event
  sdl-event-state!
  sdl-get-mouse-state
  sdl-warp-mouse
  sdl-enable-unicode
  sdl-get-video-surface
  sdl-video-driver-name
  sdl-set-video-mode
  sdl-video-mode-ok
  sdl-show-cursor
  sdl-map-rgb
  sdl-map-rgba
  sdl-fill-rect
  sdl-flip
  sdl-free-surface
  sdl-blit-surface
  sdl-with-clip-rect

  make-sdl-color
  sdl-color-buffer
  sdl-color?
  sdl-color-r
  sdl-color-g
  sdl-color-b

  make-sdl-joystick
  sdl-joystick-pointer
  sdl-joystick?
  sdl-joystick-event-state
  sdl-joystick-update
  sdl-num-joysticks
  sdl-joystick-name
  sdl-joystick-open
  sdl-joystick-opened
  sdl-joystick-index
  sdl-joystick-num-axes
  sdl-joystick-num-balls
  sdl-joystick-num-hats
  sdl-joystick-num-buttons
  sdl-joystick-update
  sdl-joystick-get-axis
  sdl-joystick-get-hat
  sdl-joystick-get-button
  sdl-joystick-close
  sdl-gl-swap-buffers
  sdl-gl-set-attribute
  sdl-gl-get-attribute

  make-sdl-event
  sdl-event-buffer sdl-event-buffer-set!
  sdl-event-type
  sdl-event?
  sdl-event-gain	 set-sdl-event-gain!
  sdl-event-which	 set-sdl-event-which!
  sdl-event-state	 set-sdl-event-state!
  sdl-event-scancode	 set-sdl-event-scancode!
  sdl-event-sym		 set-sdl-event-sym!
  sdl-event-mod		 set-sdl-event-mod!
  sdl-event-unicode	 set-sdl-event-unicode!
  sdl-event-x		 set-sdl-event-x!
  sdl-event-y		 set-sdl-event-y!
  sdl-event-xrel	 set-sdl-event-xrel!
  sdl-event-yrel	 set-sdl-event-yrel!
  sdl-event-axis	 set-sdl-event-axis!
  sdl-event-ball	 set-sdl-event-ball!
  sdl-event-hat		 set-sdl-event-hat!
  sdl-event-value	 set-sdl-event-value!
  sdl-event-button	 set-sdl-event-button!
  sdl-event-w		 set-sdl-event-w!
  sdl-event-h		 set-sdl-event-h!
  
  heap?
  

  ;; constants
  SDL_INIT_TIMER
  SDL_INIT_AUDIO
  SDL_INIT_VIDEO
  SDL_INIT_CDROM
  SDL_INIT_JOYSTICK
  SDL_INIT_EVERYTHING
  SDL_INIT_NOPARACHUTE

  ;; For sdl-creatergbsurface or sdl-setvideomode
  SDL_SWSURFACE
  SDL_HWSURFACE
  SDL_ASYNCBLIT
  ;; For sdl-setvideomode
  SDL_ANYFORMAT
  SDL_HWPALETTE
  SDL_DOUBLEBUF
  SDL_FULLSCREEN
  SDL_OPENGL
  SDL_OPENGLBLIT
  SDL_RESIZABLE
  SDL_NOFRAME
  ;; Read-only - internal
  SDL_HWACCEL
  SDL_SRCCOLORKEY
  SDL_RLEACCELOK
  SDL_RLEACCEL
  SDL_SRCALPHA
  SDL_PREALLOC

  SDL_BYTEORDER
  SDL_LIL_ENDIAN
  SDL_BIG_ENDIAN

  ;; For sdl-wm-grabinput
  SDL_GRAB_QUERY
  SDL_GRAB_OFF
  SDL_GRAB_ON


  SDL_NOEVENT			  ; Unused (do not remove)
  SDL_ACTIVEEVENT		  ; Application loses/gains visibility
  SDL_APPMOUSEFOCUS		  ; Mouse focus gained/lost
  SDL_APPINPUTFOCUS		  ; Input focus gained/lost
  SDL_APPACTIVE			  ; Application iconified/restored
  SDL_KEYDOWN			  ; Keys pressed
  SDL_KEYUP			  ; Keys released
  SDL_MOUSEMOTION		  ; Mouse moved
  SDL_MOUSEBUTTONDOWN		  ; Mouse button pressed
  SDL_MOUSEBUTTONUP		  ; Mouse button released
  SDL_JOYAXISMOTION		  ; Joystick axis motion
  SDL_JOYBALLMOTION		  ; Joystick trackball motion
  SDL_JOYHATMOTION		  ; Joystick hat position change
  SDL_JOYBUTTONDOWN		  ; Joystick button pressed
  SDL_JOYBUTTONUP		  ; Joystick button released
  SDL_QUIT			  ; User-requested quit
  SDL_SYSWMEVENT		  ; System specific event
  SDL_EVENT_RESERVEDA		  ; Reserved for future use..
  SDL_EVENT_RESERVEDB		  ; Reserved for future use..
  SDL_VIDEORESIZE		  ; User resized video mode
  SDL_VIDEOEXPOSE		  ; Screen needs to be redrawn
  SDL_EVENT_RESERVED2		  ; Reserved for future use..
  SDL_EVENT_RESERVED3		  ; Reserved for future use..
  SDL_EVENT_RESERVED4		  ; Reserved for future use..
  SDL_EVENT_RESERVED5		  ; Reserved for future use..
  SDL_EVENT_RESERVED6		  ; Reserved for future use..
  SDL_EVENT_RESERVED7		  ; Reserved for future use..
  SDL_USEREVENT	   ; SDL_USEREVENT .. SDL_NUMEVENTS are for client use
  SDL_NUMEVENTS

  SDL_ACTIVEEVENTMASK
  SDL_KEYDOWNMASK
  SDL_KEYUPMASK
  SDL_MOUSEMOTIONMASK
  SDL_MOUSEBUTTONDOWNMASK
  SDL_MOUSEBUTTONUPMASK
  SDL_MOUSEEVENTMASK
  SDL_JOYAXISMOTIONMASK
  SDL_JOYBALLMOTIONMASK
  SDL_JOYHATMOTIONMASK
  SDL_JOYBUTTONDOWNMASK
  SDL_JOYBUTTONUPMASK
  SDL_JOYEVENTMASK
  SDL_VIDEORESIZEMASK
  SDL_VIDEOEXPOSEMASK
  SDL_QUITMASK
  SDL_SYSWMEVENTMASK
  SDL_ALLEVENTS

  ;; General button/key states
  SDL_PRESSED
  SDL_RELEASED

  ;; Mouse button states
  SDL_BUTTON
  SDL_BUTTON_LEFT
  SDL_BUTTON_MIDDLE
  SDL_BUTTON_RIGHT
  SDL_BUTTON_WHEELUP
  SDL_BUTTON_WHEELDOWN
  SDL_BUTTON_LMASK		     ; = SDL_BUTTON(SDL_BUTTON_LEFT)
  SDL_BUTTON_MMASK		     ; = SDL_BUTTON(SDL_BUTTON_MIDDLE)
  SDL_BUTTON_RMASK		     ; = SDL_BUTTON(SDL_BUTTON_RIGHT)
  SDL_QUERY
  SDL_IGNORE
  SDL_DISABLE
  SDL_ENABLE

  SDL_GL_RED_SIZE
  SDL_GL_GREEN_SIZE
  SDL_GL_BLUE_SIZE
  SDL_GL_ALPHA_SIZE
  SDL_GL_BUFFER_SIZE
  SDL_GL_DOUBLEBUFFER
  SDL_GL_DEPTH_SIZE
  SDL_GL_STENCIL_SIZE
  SDL_GL_ACCUM_RED_SIZE
  SDL_GL_ACCUM_GREEN_SIZE
  SDL_GL_ACCUM_BLUE_SIZE
  SDL_GL_ACCUM_ALPHA_SIZE
  SDL_GL_STEREO
  SDL_GL_MULTISAMPLEBUFFERS
  SDL_GL_MULTISAMPLESAMPLES
  SDL_GL_SWAP_CONTROL
  SDL_GL_ACCELERATED_VISUAL

  ;; scancodes

  SDLK_UNKNOWN
  SDLK_FIRST
  SDLK_BACKSPACE
  SDLK_TAB
  SDLK_CLEAR
  SDLK_RETURN
  SDLK_PAUSE
  SDLK_ESCAPE
  SDLK_SPACE
  SDLK_EXCLAIM
  SDLK_QUOTEDBL
  SDLK_HASH
  SDLK_DOLLAR
  SDLK_AMPERSAND
  SDLK_QUOTE
  SDLK_LEFTPAREN
  SDLK_RIGHTPAREN
  SDLK_ASTERISK
  SDLK_PLUS
  SDLK_COMMA
  SDLK_MINUS
  SDLK_PERIOD
  SDLK_SLASH
  SDLK_0
  SDLK_1
  SDLK_2
  SDLK_3
  SDLK_4
  SDLK_5
  SDLK_6
  SDLK_7
  SDLK_8
  SDLK_9
  SDLK_COLON
  SDLK_SEMICOLON
  SDLK_LESS
  SDLK_EQUALS
  SDLK_GREATER
  SDLK_QUESTION
  SDLK_AT
  SDLK_LEFTBRACKET
  SDLK_BACKSLASH
  SDLK_RIGHTBRACKET
  SDLK_CARET
  SDLK_UNDERSCORE
  SDLK_BACKQUOTE
  SDLK_a
  SDLK_b
  SDLK_c
  SDLK_d
  SDLK_e
  SDLK_f
  SDLK_g
  SDLK_h
  SDLK_i
  SDLK_j
  SDLK_k
  SDLK_l
  SDLK_m
  SDLK_n
  SDLK_o
  SDLK_p
  SDLK_q
  SDLK_r
  SDLK_s
  SDLK_t
  SDLK_u
  SDLK_v
  SDLK_w
  SDLK_x
  SDLK_y
  SDLK_z
  SDLK_DELETE
  SDLK_WORLD_0
  SDLK_WORLD_1
  SDLK_WORLD_2
  SDLK_WORLD_3
  SDLK_WORLD_4
  SDLK_WORLD_5
  SDLK_WORLD_6
  SDLK_WORLD_7
  SDLK_WORLD_8
  SDLK_WORLD_9
  SDLK_WORLD_10
  SDLK_WORLD_11
  SDLK_WORLD_12
  SDLK_WORLD_13
  SDLK_WORLD_14
  SDLK_WORLD_15
  SDLK_WORLD_16
  SDLK_WORLD_17
  SDLK_WORLD_18
  SDLK_WORLD_19
  SDLK_WORLD_20
  SDLK_WORLD_21
  SDLK_WORLD_22
  SDLK_WORLD_23
  SDLK_WORLD_24
  SDLK_WORLD_25
  SDLK_WORLD_26
  SDLK_WORLD_27
  SDLK_WORLD_28
  SDLK_WORLD_29
  SDLK_WORLD_30
  SDLK_WORLD_31
  SDLK_WORLD_32
  SDLK_WORLD_33
  SDLK_WORLD_34
  SDLK_WORLD_35
  SDLK_WORLD_36
  SDLK_WORLD_37
  SDLK_WORLD_38
  SDLK_WORLD_39
  SDLK_WORLD_40
  SDLK_WORLD_41
  SDLK_WORLD_42
  SDLK_WORLD_43
  SDLK_WORLD_44
  SDLK_WORLD_45
  SDLK_WORLD_46
  SDLK_WORLD_47
  SDLK_WORLD_48
  SDLK_WORLD_49
  SDLK_WORLD_50
  SDLK_WORLD_51
  SDLK_WORLD_52
  SDLK_WORLD_53
  SDLK_WORLD_54
  SDLK_WORLD_55
  SDLK_WORLD_56
  SDLK_WORLD_57
  SDLK_WORLD_58
  SDLK_WORLD_59
  SDLK_WORLD_60
  SDLK_WORLD_61
  SDLK_WORLD_62
  SDLK_WORLD_63
  SDLK_WORLD_64
  SDLK_WORLD_65
  SDLK_WORLD_66
  SDLK_WORLD_67
  SDLK_WORLD_68
  SDLK_WORLD_69
  SDLK_WORLD_70
  SDLK_WORLD_71
  SDLK_WORLD_72
  SDLK_WORLD_73
  SDLK_WORLD_74
  SDLK_WORLD_75
  SDLK_WORLD_76
  SDLK_WORLD_77
  SDLK_WORLD_78
  SDLK_WORLD_79
  SDLK_WORLD_80
  SDLK_WORLD_81
  SDLK_WORLD_82
  SDLK_WORLD_83
  SDLK_WORLD_84
  SDLK_WORLD_85
  SDLK_WORLD_86
  SDLK_WORLD_87
  SDLK_WORLD_88
  SDLK_WORLD_89
  SDLK_WORLD_90
  SDLK_WORLD_91
  SDLK_WORLD_92
  SDLK_WORLD_93
  SDLK_WORLD_94
  SDLK_WORLD_95
  SDLK_KP0
  SDLK_KP1
  SDLK_KP2
  SDLK_KP3
  SDLK_KP4
  SDLK_KP5
  SDLK_KP6
  SDLK_KP7
  SDLK_KP8
  SDLK_KP9
  SDLK_KP_PERIOD
  SDLK_KP_DIVIDE
  SDLK_KP_MULTIPLY
  SDLK_KP_MINUS
  SDLK_KP_PLUS
  SDLK_KP_ENTER
  SDLK_KP_EQUALS
  SDLK_UP
  SDLK_DOWN
  SDLK_RIGHT
  SDLK_LEFT
  SDLK_INSERT
  SDLK_HOME
  SDLK_END
  SDLK_PAGEUP
  SDLK_PAGEDOWN
  SDLK_F1
  SDLK_F2
  SDLK_F3
  SDLK_F4
  SDLK_F5
  SDLK_F6
  SDLK_F7
  SDLK_F8
  SDLK_F9
  SDLK_F10
  SDLK_F11
  SDLK_F12
  SDLK_F13
  SDLK_F14
  SDLK_F15
  SDLK_NUMLOCK
  SDLK_CAPSLOCK
  SDLK_SCROLLOCK
  SDLK_RSHIFT
  SDLK_LSHIFT
  SDLK_RCTRL
  SDLK_LCTRL
  SDLK_RALT
  SDLK_LALT
  SDLK_RMETA
  SDLK_LMETA
  SDLK_LSUPER
  SDLK_RSUPER
  SDLK_MODE
  SDLK_COMPOSE
  SDLK_HELP
  SDLK_PRINT
  SDLK_SYSREQ
  SDLK_BREAK
  SDLK_MENU
  SDLK_POWER
  SDLK_EURO
  SDLK_UNDO

  sdl-enable-key-repeat
  SDL_DEFAULT_REPEAT_DELAY
  SDL_DEFAULT_REPEAT_INTERVAL
  )

;---------------------------------------------------------------------------

(import chicken scheme foreign)
(use srfi-1)
(use srfi-4)
(use srfi-13)
(use srfi-18)
(use lolevel)

(foreign-declare #<<EOF

#include <sys/time.h>

#include "SDL.h"
#include "SDL_keysym.h"
#include "SDL_endian.h"

#include <string.h>

EOF
)

(include "heap.scm")
(include "timer.scm")

;---------------------------------------------------------------------------

(define-syntax --sdl-flags
  (lambda (e r c)
      `(,(r 'begin)
     ,@(append-map (lambda (str)
		     (let* ((sym (string->symbol str))
                            (psym (string->symbol (string-append "-" str))))
		       `((,(r 'define-foreign-variable) ,psym unsigned-integer ,str)
                         (,(r 'define) ,sym ,psym))))
		   (cdr e)))))

(define-record sdl-rect buffer)
(define-record sdl-event buffer)
(define-record sdl-color buffer) 
(define make-sdl-rect% make-sdl-rect)
(define make-sdl-event% make-sdl-event)
(define make-sdl-color% make-sdl-color)

(define-record sdl-version pointer)
(define-record sdl-pixel-format pointer)
(define-record sdl-surface pointer)
(define-record sdl-video-info pointer)
(define-record sdl-joystick pointer)

(include "sdl-base-foreign-types-include.scm")
(include "keysym.scm")

; Subsystem definitions, for sdl-init etc.
(--sdl-flags "SDL_INIT_TIMER"
	     "SDL_INIT_AUDIO"
	     "SDL_INIT_VIDEO"
	     "SDL_INIT_CDROM"
	     "SDL_INIT_JOYSTICK"
	     "SDL_INIT_EVERYTHING"
	     "SDL_INIT_NOPARACHUTE")

(--sdl-flags
	;; For sdl-creatergbsurface or sdl-setvideomode
	"SDL_SWSURFACE"
	"SDL_HWSURFACE"
	"SDL_ASYNCBLIT"
	;; For sdl-setvideomode
	"SDL_ANYFORMAT"
	"SDL_HWPALETTE"
	"SDL_DOUBLEBUF"
	"SDL_FULLSCREEN"
	"SDL_OPENGL"
	"SDL_OPENGLBLIT"
	"SDL_RESIZABLE"
	"SDL_NOFRAME"
	;; Read-only - internal
	"SDL_HWACCEL"
	"SDL_SRCCOLORKEY"
	"SDL_RLEACCELOK"
	"SDL_RLEACCEL"
	"SDL_SRCALPHA"
	"SDL_PREALLOC"
)

(--sdl-flags
 "SDL_BYTEORDER"
 "SDL_LIL_ENDIAN"
 "SDL_BIG_ENDIAN")

; For sdl-wm-grabinput
(--sdl-flags "SDL_GRAB_QUERY"
	     "SDL_GRAB_OFF"
	     "SDL_GRAB_ON")

(--sdl-flags
	"SDL_NOEVENT"			; Unused (do not remove)
	"SDL_ACTIVEEVENT"		; Application loses/gains visibility
	"SDL_APPMOUSEFOCUS"		; Mouse focus gained/lost
	"SDL_APPINPUTFOCUS"		; Input focus gained/lost
	"SDL_APPACTIVE"			; Application iconified/restored
	"SDL_KEYDOWN"			; Keys pressed
	"SDL_KEYUP"			; Keys released
	"SDL_MOUSEMOTION"		; Mouse moved
	"SDL_MOUSEBUTTONDOWN"		; Mouse button pressed
	"SDL_MOUSEBUTTONUP"		; Mouse button released
	"SDL_JOYAXISMOTION"		; Joystick axis motion
	"SDL_JOYBALLMOTION"		; Joystick trackball motion
	"SDL_JOYHATMOTION"		; Joystick hat position change
	"SDL_JOYBUTTONDOWN"		; Joystick button pressed
	"SDL_JOYBUTTONUP"		; Joystick button released
	"SDL_QUIT"			; User-requested quit
	"SDL_SYSWMEVENT"		; System specific event
	"SDL_EVENT_RESERVEDA"		; Reserved for future use..
	"SDL_EVENT_RESERVEDB"		; Reserved for future use..
	"SDL_VIDEORESIZE"		; User resized video mode
	"SDL_VIDEOEXPOSE"		; Screen needs to be redrawn
	"SDL_EVENT_RESERVED2"		; Reserved for future use..
	"SDL_EVENT_RESERVED3"		; Reserved for future use..
	"SDL_EVENT_RESERVED4"		; Reserved for future use..
	"SDL_EVENT_RESERVED5"		; Reserved for future use..
	"SDL_EVENT_RESERVED6"		; Reserved for future use..
	"SDL_EVENT_RESERVED7"		; Reserved for future use..
	"SDL_USEREVENT"			; SDL_USEREVENT .. SDL_NUMEVENTS are for client use
	"SDL_NUMEVENTS"
)

(--sdl-flags
	"SDL_ACTIVEEVENTMASK"
	"SDL_KEYDOWNMASK"
	"SDL_KEYUPMASK"
	"SDL_MOUSEMOTIONMASK"
	"SDL_MOUSEBUTTONDOWNMASK"
	"SDL_MOUSEBUTTONUPMASK"
	"SDL_MOUSEEVENTMASK"
	"SDL_JOYAXISMOTIONMASK"
	"SDL_JOYBALLMOTIONMASK"
	"SDL_JOYHATMOTIONMASK"
	"SDL_JOYBUTTONDOWNMASK"
	"SDL_JOYBUTTONUPMASK"
	"SDL_JOYEVENTMASK"
	"SDL_VIDEORESIZEMASK"
	"SDL_VIDEOEXPOSEMASK"
	"SDL_QUITMASK"
	"SDL_SYSWMEVENTMASK"
	"SDL_ALLEVENTS"
)

; General button/key states
(--sdl-flags
 "SDL_PRESSED"
 "SDL_RELEASED"
 "SDL_DEFAULT_REPEAT_DELAY"
 "SDL_DEFAULT_REPEAT_INTERVAL")

; Mouse button states

; The macro SDL_BUTTON is parameterised, so we have to recreate it as
; a function

(define (SDL_BUTTON x)
  (arithmetic-shift SDL_PRESSED (- x 1)))

(--sdl-flags
        "SDL_BUTTON_LEFT"
        "SDL_BUTTON_MIDDLE"
        "SDL_BUTTON_RIGHT"
        "SDL_BUTTON_WHEELUP"
        "SDL_BUTTON_WHEELDOWN"
        "SDL_BUTTON_LMASK" ; = SDL_BUTTON(SDL_BUTTON_LEFT)
        "SDL_BUTTON_MMASK" ; = SDL_BUTTON(SDL_BUTTON_MIDDLE)
        "SDL_BUTTON_RMASK" ; = SDL_BUTTON(SDL_BUTTON_RIGHT)
)

; For sdl-eventstate
(--sdl-flags "SDL_QUERY"
	     "SDL_IGNORE"
	     "SDL_DISABLE"
	     "SDL_ENABLE")

;---------------------------------------------------------------------------

(define-record-printer (sdl-version o out)
  (for-each (lambda (x) (display x out))
	    (list "#<sdl-version "
		  (sdl-version-major o) " "
		  (sdl-version-minor o) " "
		  (sdl-version-patch o) 
		  ">")))

(define sdl-version-major
  (foreign-lambda* unsigned-byte ((SDL_version v))
		   "C_return(v->major);"))

(define sdl-version-minor
  (foreign-lambda* unsigned-byte ((SDL_version v))
		   "C_return(v->minor);"))

(define sdl-version-patch
  (foreign-lambda* unsigned-byte ((SDL_version v))
		   "C_return(v->patch);"))

;; Returns #t if the first argument is at least what the rest of the
;; arguments indicate.
(define (sdl-version-at-least sdl-version major minor patch)
  (cond
   ((> (sdl-version-major sdl-version) major) #t)
   ((< (sdl-version-major sdl-version) major) #f)
   ((> (sdl-version-minor sdl-version) minor) #t)
   ((< (sdl-version-minor sdl-version) minor) #f)
   ((>= (sdl-version-patch sdl-version) patch) #t)
   (#t #f)))

(define sdl-compiled-version
  (foreign-lambda* SDL_version ()
		   "SDL_version v; SDL_VERSION(&v); C_return(&v);"))

(define sdl-linked-version
  (foreign-lambda SDL_version "SDL_Linked_Version"))

;---------------------------------------------------------------------------

(define-foreign-variable sizeof-sdl-rect int "sizeof(SDL_Rect)")

(set! make-sdl-rect
      (lambda (x y w h)
	(let ((r (make-sdl-rect% (make-blob sizeof-sdl-rect))))
	  (sdl-rect-x-set! r x)
	  (sdl-rect-y-set! r y)
	  (sdl-rect-w-set! r w)
	  (sdl-rect-h-set! r h)
	  r)))

(define-record-printer (sdl-rect s out)
  (for-each (lambda (x) (display x out))
	    (list "#<sdl-rect "
		  (sdl-rect-x s)" "
		  (sdl-rect-y s)" "
		  (sdl-rect-w s)" "
		  (sdl-rect-h s)">")))

(define sdl-rect-x (foreign-lambda* short ((SDL_Rect c)) "C_return(c->x);"))
(define sdl-rect-y (foreign-lambda* short ((SDL_Rect c)) "C_return(c->y);"))
(define sdl-rect-w (foreign-lambda* unsigned-short ((SDL_Rect c)) "C_return(c->w);"))
(define sdl-rect-h (foreign-lambda* unsigned-short ((SDL_Rect c)) "C_return(c->h);"))

(define sdl-rect-x-set! (foreign-lambda* void ((SDL_Rect c) (short x)) "c->x = x;"))
(define sdl-rect-y-set! (foreign-lambda* void ((SDL_Rect c) (short y)) "c->y = y;"))
(define sdl-rect-w-set! (foreign-lambda* void ((SDL_Rect c) (unsigned-short w)) "c->w = w;"))
(define sdl-rect-h-set! (foreign-lambda* void ((SDL_Rect c) (unsigned-short h)) "c->h = h;"))

;---------------------------------------------------------------------------

(define-record-printer (sdl-pixel-format p out)
  (for-each (lambda (x) (display x out))
	    (list "#<sdl-pixel-format "(sdl-pixel-format-pointer p)">")))

(define sdl-pixel-format-bytes-per-pixel
  (foreign-lambda* unsigned-byte ((SDL_PixelFormat pf))
		   "C_return(pf->BytesPerPixel);"))

(define sdl-pixel-format-rmask
  (foreign-lambda* unsigned-byte ((SDL_PixelFormat pf))
		   "C_return(pf->Rmask);"))
(define sdl-pixel-format-gmask
  (foreign-lambda* unsigned-byte ((SDL_PixelFormat pf))
		   "C_return(pf->Gmask);"))
(define sdl-pixel-format-bmask
  (foreign-lambda* unsigned-byte ((SDL_PixelFormat pf))
		   "C_return(pf->Bmask);"))
(define sdl-pixel-format-amask
  (foreign-lambda* unsigned-byte ((SDL_PixelFormat pf))
		   "C_return(pf->Amask);"))

;---------------------------------------------------------------------------

(define-record-printer (sdl-surface s out)
  (for-each (lambda (x) (display x out))
	    (list "#<sdl-surface "(sdl-surface-pointer s)">")))

(define (sdl-surface-flags s)
  ((foreign-lambda* unsigned-integer ((SDL_Surface s))
		    "C_return(s->flags);") s))

(define (sdl-surface-pixel-format s)
  ((foreign-lambda* SDL_PixelFormat ((SDL_Surface s))
		    "C_return(s->format);") s))

(define (sdl-surface-width s)
  ((foreign-lambda* integer ((SDL_Surface s))
		    "C_return(s->w);") s))

(define (sdl-surface-height s)
  ((foreign-lambda* integer ((SDL_Surface s))
		    "C_return(s->h);") s))

(define (sdl-surface-pitch s)
  ((foreign-lambda* unsigned-short ((SDL_Surface s))
		    "C_return(s->pitch);") s))

(define (sdl-surface-pixels s)
  ((foreign-lambda* (c-pointer byte) ((SDL_Surface s))
		    "C_return(s->pixels);") s))

;; Computes the number of bytes of storage pointed to by
;; sdl-surface-pixels.
(define (sdl-surface-pixels-length s)
  (* (sdl-surface-height s)
     (sdl-surface-pitch s)))

;;
;; SDL_VideoInfo
;;

(define-record-printer (sdl-video-info o out)
  (for-each (lambda (x) (display x out))
	    (list "#<sdl-video-info "
		  (sdl-video-info-hw-available o) " "
		  (sdl-video-info-wm-available o) " "
		  (sdl-video-info-blit-hw o) " "
		  (sdl-video-info-blit-hw-cc o) " "
		  (sdl-video-info-blit-hw-a o) " "
		  (sdl-video-info-blit-sw o) " "
		  (sdl-video-info-blit-sw-cc o) " "
		  (sdl-video-info-blit-sw-a o) " "
		  (sdl-video-info-blit-fill o) " "
		  (sdl-video-info-video-mem o) " "
		  (sdl-video-info-vfmt o) " "
		  (sdl-video-info-current-w o) " "
		  (sdl-video-info-current-h o)
		  ">")))

(define sdl-video-info-hw-available
  (foreign-lambda* unsigned-integer ((SDL_VideoInfo vi))
		   "C_return(vi->hw_available);"))
(define sdl-video-info-wm-available
  (foreign-lambda* unsigned-integer ((SDL_VideoInfo vi))
		   "C_return(vi->wm_available);"))
(define sdl-video-info-blit-hw
  (foreign-lambda* unsigned-integer ((SDL_VideoInfo vi))
		   "C_return(vi->blit_hw);"))
(define sdl-video-info-blit-hw-cc
  (foreign-lambda* unsigned-integer ((SDL_VideoInfo vi))
		   "C_return(vi->blit_hw_CC);"))
(define sdl-video-info-blit-hw-a
  (foreign-lambda* unsigned-integer ((SDL_VideoInfo vi))
		   "C_return(vi->blit_hw_A);"))
(define sdl-video-info-blit-sw
  (foreign-lambda* unsigned-integer ((SDL_VideoInfo vi))
		   "C_return(vi->blit_sw);"))
(define sdl-video-info-blit-sw-cc
  (foreign-lambda* unsigned-integer ((SDL_VideoInfo vi))
		   "C_return(vi->blit_sw_CC);"))
(define sdl-video-info-blit-sw-a
  (foreign-lambda* unsigned-integer ((SDL_VideoInfo vi))
		   "C_return(vi->blit_sw_A);"))
(define sdl-video-info-blit-fill
  (foreign-lambda* unsigned-integer ((SDL_VideoInfo vi))
		   "C_return(vi->blit_fill);"))
(define sdl-video-info-video-mem
  (foreign-lambda* unsigned-integer ((SDL_VideoInfo vi))
		   "C_return(vi->video_mem);"))
(define sdl-video-info-vfmt
  (foreign-lambda* SDL_PixelFormat ((SDL_VideoInfo vi))
		   "C_return(vi->vfmt);"))
(define sdl-video-info-current-w
  (foreign-lambda* integer ((SDL_VideoInfo vi))
		   "C_return(vi->current_w);"))
(define sdl-video-info-current-h
  (foreign-lambda* integer ((SDL_VideoInfo vi))
		   "C_return(vi->current_h);"))

(define sdl-get-video-info
  (foreign-lambda* SDL_VideoInfo ()
		   "C_return(SDL_GetVideoInfo());"))


;---------------------------------------------------------------------------

;; Modifies its second argument.
(define sdl-get-clip-rect! (foreign-lambda void "SDL_GetClipRect" SDL_Surface SDL_Rect))

;; Modifies its first argument.
(define sdl-set-clip-rect! (foreign-lambda bool "SDL_SetClipRect" SDL_Surface SDL_Rect))

;; Modifies its first argument.
(define sdl-set-color-key!
  (foreign-lambda int "SDL_SetColorKey" SDL_Surface unsigned-integer unsigned-integer))

;; Modifies its first argument.
(define sdl-set-alpha!
  (foreign-lambda int "SDL_SetAlpha" SDL_Surface unsigned-integer unsigned-byte))

(define sdl-display-format
  (foreign-lambda SDL_Surface "SDL_DisplayFormat" SDL_Surface))
(define sdl-display-format-alpha
  (foreign-lambda SDL_Surface "SDL_DisplayFormatAlpha" SDL_Surface))
(define sdl-convert-surface
  (foreign-lambda SDL_Surface "SDL_ConvertSurface" SDL_Surface SDL_PixelFormat unsigned-integer))

;---------------------------------------------------------------------------

;; NOTE: sdl-init does not work on MacOS X when called from a
;; dynamically-loaded extension. Something internal to Quartz seems to
;; get confused. You must call SDL_Init *directly* from your main
;; program - if your main program is written in Scheme, you need to
;; say something like:
;;
;; (declare (foreign-declare "#include <SDL.h>\n"))
;; (foreign-code "SDL_Init(SDL_INIT_EVERYTHING);")
;;
(define (sdl-init flags)
  (zero? ((foreign-lambda int "SDL_Init" unsigned-integer) flags)))

;; Note: guile-sdl names these 'sdl-init-subsystem' and
;; 'sdl-quit-subsystem', respectively.

(define (sdl-init-sub-system flags)
  (zero? ((foreign-lambda int "SDL_InitSubSystem" unsigned-integer) flags)))

(define (sdl-quit-sub-system flags)
  ((foreign-lambda void "SDL_QuitSubSystem" unsigned-integer) flags))

(define (sdl-quit)
  ((foreign-lambda void "SDL_Quit")))

(define (sdl-was-init flags)
  ((foreign-lambda unsigned-integer "SDL_WasInit" unsigned-integer) flags))

(define sdl-set-error! (foreign-lambda* void ((c-string str)) "SDL_SetError(\"%s\", str);"))
(define sdl-get-error (foreign-lambda c-string "SDL_GetError"))
(define sdl-clear-error! (foreign-lambda void "SDL_ClearError"))

;---------------------------------------------------------------------------

(define (sdl-wm-set-caption title icon)
  ((foreign-lambda void "SDL_WM_SetCaption" c-string c-string) title icon))

(define (sdl-wm-get-caption-title)
  ((foreign-lambda* c-string ()
		    "char *t, *i;"
		    "SDL_WM_GetCaption(&t, &i);"
		    "C_return(t);")))

(define (sdl-wm-get-caption-icon)
  ((foreign-lambda* c-string ()
		    "char *t, *i;"
		    "SDL_WM_GetCaption(&t, &i);"
		    "C_return(i);")))

(define (sdl-wm-get-caption)
  (values (sdl-wm-get-caption-title)
	  (sdl-wm-get-caption-icon)))

(define (sdl-wm-set-icon icon mask)
  ((foreign-lambda void "SDL_WM_SetIcon" SDL_Surface blob) icon mask))

(define (sdl-wm-iconify-window)
  (not (zero? ((foreign-lambda integer "SDL_WM_IconifyWindow")))))

(define (sdl-wm-toggle-full-screen surf)
  (not (zero? ((foreign-lambda integer "SDL_WM_ToggleFullScreen" SDL_Surface) surf))))

(define (sdl-wm-grab-input m)
  ((foreign-lambda integer "SDL_WM_GrabInput" integer) m))

;---------------------------------------------------------------------------

; Milliseconds.
(define sdl-get-ticks (foreign-lambda unsigned-integer "SDL_GetTicks"))
(define sdl-delay (foreign-lambda void "SDL_Delay" unsigned-integer))

(cond-expand
 (mingw32
  (define get-time-of-day current-seconds))
 (else
  (define get-time-of-day
    (foreign-lambda* double ()
      "struct timeval tv;"
      "gettimeofday(&tv, NULL);"
      "C_return((double) tv.tv_sec + ((double) tv.tv_usec / 1000000.0));"))))

(define-values (sdl-add-absolute-timer!
		sdl-process-timer-queue!)
  (make-timer-queue get-time-of-day))

(define (sdl-add-relative-timer! time callback)
  (sdl-add-absolute-timer! (+ time (get-time-of-day)) callback))

;---------------------------------------------------------------------------

(define-foreign-variable sizeof-sdl-event int "sizeof(SDL_Event)")

(set! make-sdl-event
      (lambda ()
	(let ((bv (blob->u8vector (make-blob sizeof-sdl-event))))
	  (u8vector-set! bv 0 SDL_NOEVENT)
	  (make-sdl-event% (u8vector->blob bv)))))

(define-record-printer (sdl-event s out)
  (for-each (lambda (x) (display x out))
	    (list "#<sdl-event "(sdl-event-type s)">")))

(define sdl-event-type (foreign-lambda* unsigned-byte ((SDL_Event e)) "C_return(e->type);"))
(define sdl-event-type-set! (foreign-lambda* void ((SDL_Event e) (unsigned-byte t)) "e->type = t;"))

(define-syntax --sdl-event-getter-setter
  (lambda (f r c)
    (let ((name (cadr f))
          (rest (cddr f)))
      (let* ((strapp (lambda s (apply string-append
				  (map (lambda (x) (cond
						    ((symbol? x) (symbol->string x))
						    (else x)))
				       s))))
	 (symapp (lambda s (string->symbol (apply strapp s)))))
  `(,(r 'begin)
     (,(r 'define) (,(symapp "sdl-event-" name) e)
       (,(r 'let) ((,(r 't) (,(r 'sdl-event-type) e)))
	 (,(r 'cond)
	  ,@(map (lambda (clause)
		   (apply (lambda (etype mem1 kind)
			    `((,(r '=) ,(r 't) ,etype) ((,(r 'foreign-lambda*)
					     ,kind ((SDL_Event e))
					     ,(strapp "C_return(e->"mem1"."name");")) e)))
			  clause))
		 rest)
	  (,(r 'else) (,(r 'error) ,(string-append "sdl-event-" (symbol->string name)
				       ": cannot extract value from this type of event")
		       (,(r 'sdl-event-type) e))))))
     (,(r 'define) (,(symapp "set-sdl-event-" name "!") e v)
       (,(r 'let) ((t (,(r 'sdl-event-type) e)))
	 (,(r 'cond)
	  ,@(map (lambda (clause)
		   (apply (lambda (etype mem1 kind)
			    `((,(r '=) t ,etype) ((,(r 'foreign-lambda*)
					     void ((SDL_Event e)
						   (,kind v))
					     ,(strapp "e->"mem1"."name"=v;")) e v)))
			  clause))
		 rest)
	  (,(r 'else) (,(r 'error) ,(string-append "set-sdl-event-" (symbol->string name) "!"
				       ": cannot update value for this type of event")
		       (,(r 'sdl-event-type) e)))))))))))

(--sdl-event-getter-setter gain		(SDL_ACTIVEEVENT active bool))
(--sdl-event-getter-setter which	(SDL_KEYDOWN key unsigned-byte)
					(SDL_KEYUP key unsigned-byte)
					(SDL_MOUSEMOTION motion unsigned-byte)
					(SDL_MOUSEBUTTONDOWN button unsigned-byte)
					(SDL_MOUSEBUTTONUP button unsigned-byte)
					(SDL_JOYAXISMOTION jaxis unsigned-byte)
					(SDL_JOYBALLMOTION jball unsigned-byte)
					(SDL_JOYHATMOTION jhat unsigned-byte)
					(SDL_JOYBUTTONDOWN jbutton unsigned-byte)
					(SDL_JOYBUTTONUP jbutton unsigned-byte))
(--sdl-event-getter-setter state	(SDL_ACTIVEEVENT active unsigned-byte)
					(SDL_KEYDOWN key unsigned-byte)
					(SDL_KEYUP key unsigned-byte)
					(SDL_MOUSEMOTION motion unsigned-byte)
					(SDL_MOUSEBUTTONDOWN button unsigned-byte)
					(SDL_MOUSEBUTTONUP button unsigned-byte)
					(SDL_JOYBUTTONDOWN jbutton unsigned-byte)
					(SDL_JOYBUTTONUP jbutton unsigned-byte))
(--sdl-event-getter-setter scancode	(SDL_KEYDOWN key.keysym unsigned-byte)
					(SDL_KEYUP   key.keysym unsigned-byte))
(--sdl-event-getter-setter sym		(SDL_KEYDOWN key.keysym integer)
					(SDL_KEYUP   key.keysym integer))
(--sdl-event-getter-setter mod		(SDL_KEYDOWN key.keysym integer)
					(SDL_KEYUP   key.keysym integer))
(--sdl-event-getter-setter unicode	(SDL_KEYDOWN key.keysym short)
					(SDL_KEYUP   key.keysym short))
(--sdl-event-getter-setter x		(SDL_MOUSEMOTION motion unsigned-short)
					(SDL_MOUSEBUTTONDOWN button unsigned-short)
					(SDL_MOUSEBUTTONUP button unsigned-short))
(--sdl-event-getter-setter y		(SDL_MOUSEMOTION motion unsigned-short)
					(SDL_MOUSEBUTTONDOWN button unsigned-short)
					(SDL_MOUSEBUTTONUP button unsigned-short))
(--sdl-event-getter-setter xrel		(SDL_MOUSEMOTION motion short)
					(SDL_JOYBALLMOTION jball short))
(--sdl-event-getter-setter yrel		(SDL_MOUSEMOTION motion short)
					(SDL_JOYBALLMOTION jball short))
(--sdl-event-getter-setter axis		(SDL_JOYAXISMOTION jaxis unsigned-byte))
(--sdl-event-getter-setter ball		(SDL_JOYBALLMOTION jball unsigned-byte))
(--sdl-event-getter-setter hat		(SDL_JOYHATMOTION jhat unsigned-byte))
(--sdl-event-getter-setter value	(SDL_JOYAXISMOTION jaxis short)
					(SDL_JOYHATMOTION jhat unsigned-byte))
(--sdl-event-getter-setter button	(SDL_MOUSEBUTTONDOWN button unsigned-byte)
					(SDL_MOUSEBUTTONUP button unsigned-byte)
					(SDL_JOYBUTTONDOWN jbutton unsigned-byte)
					(SDL_JOYBUTTONUP jbutton unsigned-byte))
(--sdl-event-getter-setter w		(SDL_VIDEORESIZE resize integer))
(--sdl-event-getter-setter h		(SDL_VIDEORESIZE resize integer))

(define sdl-pump-events (foreign-lambda void "SDL_PumpEvents"))

(define (sdl-poll-event! . e)
  (if (null? e)
      (not (zero? ((foreign-lambda int "SDL_PollEvent" c-pointer) #f)))
      (not (zero? ((foreign-lambda int "SDL_PollEvent" SDL_Event) (car e))))))

;; Now, (sdl-wait-event!) is implemented internally to SDL_event.c as:
;;
;;  while (1) {
;;    SDL_PumpEvents();
;;    switch(SDL_PeepEvents(event, 1, SDL_GETEVENT, SDL_ALLEVENTS)) {
;;      case -1: return 0;
;;      case 1: return 1;
;;      case 0: SDL_Delay(10);
;;    }
;;  }
;;
;; Since the SDL implementation of timers uses setitimer(2), and we
;; have trouble with setitimer and chicken - see the README - we
;; reimplement (sdl-wait-event!) here calling out to our timer queue
;; processing function.

(define (sdl-wait-event!* delay-function . e)
  (let loop ()
    (sdl-pump-events)
    (let ((peep-result ((foreign-lambda*
			 int ((SDL_Event eptr))
			 "C_return(SDL_PeepEvents(eptr, 1, SDL_GETEVENT, SDL_ALLEVENTS));")
			(if (null? e) #f (car e)))))
      (case peep-result
	((-1) #f) ;; error.
	((1) #t)  ;; present event.
	((0)
	 ;; No event, yet. Check our timer queue, wait, and retry.
	 (let* ((delay-seconds (or (sdl-process-timer-queue!) 0.01))
		(sleep-time (min delay-seconds 0.01))
		(fix-sleep-time (inexact->exact (truncate (* 1000 sleep-time)))))
	   (delay-function fix-sleep-time)
	   (loop)))
	(else (error "sdl-wait-event!: unexpected result from SDL_PeepEvents" peep-result))))))

(define (sdl-wait-event! . e)
  (apply sdl-wait-event!* sdl-delay e))

;; Here's the implementation of (sdl-wait-event!) that calls the
;; SDL-provided routine:
;;
;; (define (sdl-wait-event! . e)
;;   (if (null? e)
;;       (not (zero? ((foreign-lambda int "SDL_WaitEvent" c-pointer) #f)))
;;       (not (zero? ((foreign-lambda int "SDL_WaitEvent" SDL_Event) (car e))))))

(define (sdl-push-event e)
  (zero? ((foreign-lambda int "SDL_PushEvent" SDL_Event) e)))

(define sdl-event-state! (foreign-lambda int "SDL_EventState" unsigned-int integer))

; You can pass NULL for the args if you just want the button state
(define sdl-get-mouse-state (foreign-lambda int "SDL_GetMouseState" s32vector s32vector))

(define sdl-warp-mouse (foreign-lambda void "SDL_WarpMouse" int int))
 
(define sdl-enable-unicode (foreign-lambda bool "SDL_EnableUNICODE" bool))

;---------------------------------------------------------------------------

(define sdl-get-video-surface (foreign-lambda SDL_Surface "SDL_GetVideoSurface"))

(define (sdl-video-driver-name)
  (let ((bv (make-blob 128)))
    (and ((foreign-lambda bool "SDL_VideoDriverName" (c-pointer char) integer)
	  (make-locative bv)
	  (blob-size bv))
	 (substring (blob->string bv)
		    0
		    (string-index (blob->string bv)
				  (integer->char 0))))))

(define sdl-set-video-mode (foreign-lambda SDL_Surface "SDL_SetVideoMode"
					   integer ; width
					   integer ; height
					   integer ; bpp
					   unsigned-integer ; flags
					   ))

(define (sdl-video-mode-ok w h bpp flags)
  (let ((result ((foreign-lambda integer "SDL_VideoModeOK"
				 integer integer
				 integer unsigned-integer)
		 w h bpp flags)))
    (and (not (zero? result))
	 result)))

(define (sdl-show-cursor . toggle)
  (if (null? toggle)
      ((foreign-lambda int "SDL_ShowCursor" int) -1)
      ((foreign-lambda int "SDL_ShowCursor" int) (if (car toggle) 1 0))))

(define sdl-map-rgb (foreign-lambda unsigned-integer "SDL_MapRGB"
				    SDL_PixelFormat
				    unsigned-byte
				    unsigned-byte
				    unsigned-byte))

(define sdl-map-rgba (foreign-lambda unsigned-integer "SDL_MapRGBA"
				     SDL_PixelFormat
				     unsigned-byte
				     unsigned-byte
				     unsigned-byte
				     unsigned-byte))

;---------------------------------------------------------------------------

(define (sdl-fill-rect s r c)
  (if (sdl-color? c)
      ((foreign-lambda* int ((SDL_Surface s)
			     (SDL_Rect r)
			     (scheme-pointer cbuf))
			"SDL_Color *c = (SDL_Color *) cbuf;"
			"unsigned int c2 = SDL_MapRGB(s->format, c->r, c->g, c->b);"
			"C_return(SDL_FillRect(s, r, c2));")
       s r (sdl-color-buffer c))
      ((foreign-lambda int "SDL_FillRect" SDL_Surface SDL_Rect unsigned-integer)
       s r c)))

(define sdl-flip (foreign-lambda int "SDL_Flip" SDL_Surface))

(define sdl-create-rgb-surface (foreign-lambda SDL_Surface "SDL_CreateRGBSurface"
					       unsigned-integer ; flags
					       integer ; width
					       integer ; height
					       integer ; depth
					       unsigned-integer ; rmask
					       unsigned-integer ; gmask
					       unsigned-integer ; bmask
					       unsigned-integer)) ; amask
(define (sdl-free-surface surf)
  ((foreign-lambda void "SDL_FreeSurface" SDL_Surface) surf)
  (sdl-surface-pointer-set! surf (address->pointer 0)))

(define sdl-blit-surface (foreign-lambda integer "SDL_BlitSurface"
					 SDL_Surface SDL_Rect ; src, srcrect
					 SDL_Surface SDL_Rect)) ; dst, dstrect

(define (sdl-with-clip-rect s r thunk)
  (let ((orig-clip-rect (make-sdl-rect 0 0 0 0)))
    (dynamic-wind
	(lambda ()
	  (sdl-get-clip-rect! s orig-clip-rect)
	  (sdl-set-clip-rect! s r))
	thunk
	(lambda ()
	  (sdl-set-clip-rect! s orig-clip-rect)))))

;---------------------------------------------------------------------------

(define-foreign-variable sizeof-sdl-color int "sizeof(SDL_Color)")

(set! make-sdl-color
      (lambda (r g b)
	(let ((bv (make-blob sizeof-sdl-color)))
	  (fill-sdl-color! (make-sdl-color% bv) r g b))))

(define-record-printer (sdl-color s out)
  (for-each (lambda (x) (display x out))
	    (list "#<sdl-color "
		  (sdl-color-r s)" "
		  (sdl-color-g s)" "
		  (sdl-color-b s)">")))

(define (fill-sdl-color! c r g b)
  ((foreign-lambda* void ((SDL_Color c) (unsigned-byte r) (unsigned-byte g) (unsigned-byte b))
		    "c->r = r; c->g = g; c->b = b;")
   c r g b)
  c)

(define sdl-color-r (foreign-lambda* unsigned-byte ((SDL_Color c)) "C_return(c->r);"))
(define sdl-color-g (foreign-lambda* unsigned-byte ((SDL_Color c)) "C_return(c->g);"))
(define sdl-color-b (foreign-lambda* unsigned-byte ((SDL_Color c)) "C_return(c->b);"))

;---------------------------------------------------------------------------
(define-record-printer (sdl-joystick p out)
  (for-each (lambda (x) (display x out))
	    (list "#<sdl-joystick "(sdl-joystick-pointer p)">")))

(define sdl-joystick-event-state (foreign-lambda int "SDL_JoystickEventState"
						 int))
(define sdl-joystick-update (foreign-lambda void "SDL_JoystickUpdate"))
(define sdl-num-joysticks (foreign-lambda int "SDL_NumJoysticks"))
(define sdl-joystick-name (foreign-lambda c-string "SDL_JoystickName" int))
(define sdl-joystick-open (foreign-lambda SDL_Joystick "SDL_JoystickOpen" int))
(define sdl-joystick-opened (foreign-lambda int "SDL_JoystickOpened" int))
(define sdl-joystick-index (foreign-lambda int "SDL_JoystickIndex"
					   SDL_Joystick))
(define sdl-joystick-num-axes (foreign-lambda int "SDL_JoystickNumAxes"
					      SDL_Joystick))
(define sdl-joystick-num-balls (foreign-lambda int "SDL_JoystickNumBalls"
					       SDL_Joystick))
(define sdl-joystick-num-hats (foreign-lambda int "SDL_JoystickNumHats"
					      SDL_Joystick))
(define sdl-joystick-num-buttons (foreign-lambda int "SDL_JoystickNumButtons"
						 SDL_Joystick))
(define sdl-joystick-update (foreign-lambda void "SDL_JoystickUpdate"))
(define sdl-joystick-get-axis (foreign-lambda short "SDL_JoystickGetAxis"
					      SDL_Joystick int))
(define sdl-joystick-get-hat (foreign-lambda unsigned-char "SDL_JoystickGetHat"
					     SDL_Joystick int))
(define sdl-joystick-get-button (foreign-lambda unsigned-char
						"SDL_JoystickGetButton"
						SDL_Joystick int))
;TODO: sdl-joystick-get-ball
(define sdl-joystick-close (foreign-lambda void "SDL_JoystickClose"
					   SDL_Joystick))


(define sdl-enable-key-repeat (foreign-lambda int "SDL_EnableKeyRepeat"
				 int int))


;---------------------------------------------------------------------------
;
; OpenGL stuff:

(--sdl-flags "SDL_GL_RED_SIZE"
	     "SDL_GL_GREEN_SIZE"
	     "SDL_GL_BLUE_SIZE"
	     "SDL_GL_ALPHA_SIZE"
	     "SDL_GL_BUFFER_SIZE"
	     "SDL_GL_DOUBLEBUFFER"
	     "SDL_GL_DEPTH_SIZE"
	     "SDL_GL_STENCIL_SIZE"
	     "SDL_GL_ACCUM_RED_SIZE"
	     "SDL_GL_ACCUM_GREEN_SIZE"
	     "SDL_GL_ACCUM_BLUE_SIZE"
	     "SDL_GL_ACCUM_ALPHA_SIZE"
	     "SDL_GL_STEREO"
	     "SDL_GL_MULTISAMPLEBUFFERS"
	     "SDL_GL_MULTISAMPLESAMPLES"
	     "SDL_GL_SWAP_CONTROL"
	     "SDL_GL_ACCELERATED_VISUAL")

(define sdl-gl-swap-buffers (foreign-lambda void "SDL_GL_SwapBuffers"))
(define sdl-gl-set-attribute (foreign-lambda int "SDL_GL_SetAttribute" unsigned-int int))

(define sdl-gl-get-attribute
  (let ((get (foreign-lambda int "SDL_GL_GetAttribute" unsigned-int (c-pointer int))))
    (lambda (attr)
      (let-location ((ptr int))
	(let ((r (get attr (location ptr))))
	  (and (zero? r) ptr))))))

)
