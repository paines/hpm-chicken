;;;; sdl-base.import.scm - GENERATED BY CHICKEN 4.9.0.1 -*- Scheme -*-

(eval '(import chicken scheme foreign srfi-1 srfi-4 srfi-13 srfi-18 lolevel))
(##sys#register-compiled-module
  'sdl-base
  (list)
  '((make-sdl-version . sdl-base#make-sdl-version)
    (sdl-version-pointer . sdl-base#sdl-version-pointer)
    (sdl-version-major . sdl-base#sdl-version-major)
    (sdl-version-minor . sdl-base#sdl-version-minor)
    (sdl-version-patch . sdl-base#sdl-version-patch)
    (sdl-version-at-least . sdl-base#sdl-version-at-least)
    (sdl-compiled-version . sdl-base#sdl-compiled-version)
    (sdl-linked-version . sdl-base#sdl-linked-version)
    (make-sdl-rect . sdl-base#make-sdl-rect)
    (sdl-rect-buffer . sdl-base#sdl-rect-buffer)
    (sdl-rect? . sdl-base#sdl-rect?)
    (sdl-rect-x . sdl-base#sdl-rect-x)
    (sdl-rect-y . sdl-base#sdl-rect-y)
    (sdl-rect-w . sdl-base#sdl-rect-w)
    (sdl-rect-h . sdl-base#sdl-rect-h)
    (make-sdl-pixel-format . sdl-base#make-sdl-pixel-format)
    (sdl-pixel-format-pointer . sdl-base#sdl-pixel-format-pointer)
    (sdl-pixel-format? . sdl-base#sdl-pixel-format?)
    (sdl-pixel-format-bytes-per-pixel
      .
      sdl-base#sdl-pixel-format-bytes-per-pixel)
    (sdl-pixel-format-rmask . sdl-base#sdl-pixel-format-rmask)
    (sdl-pixel-format-gmask . sdl-base#sdl-pixel-format-gmask)
    (sdl-pixel-format-bmask . sdl-base#sdl-pixel-format-bmask)
    (sdl-pixel-format-amask . sdl-base#sdl-pixel-format-amask)
    (make-sdl-surface . sdl-base#make-sdl-surface)
    (sdl-surface-pointer . sdl-base#sdl-surface-pointer)
    (sdl-surface? . sdl-base#sdl-surface?)
    (sdl-create-rgb-surface . sdl-base#sdl-create-rgb-surface)
    (sdl-surface-flags . sdl-base#sdl-surface-flags)
    (sdl-surface-pixel-format . sdl-base#sdl-surface-pixel-format)
    (sdl-surface-width . sdl-base#sdl-surface-width)
    (sdl-surface-height . sdl-base#sdl-surface-height)
    (sdl-surface-pitch . sdl-base#sdl-surface-pitch)
    (sdl-surface-pixels . sdl-base#sdl-surface-pixels)
    (sdl-surface-pixels-length . sdl-base#sdl-surface-pixels-length)
    (make-sdl-video-info . sdl-base#make-sdl-video-info)
    (sdl-video-info-pointer . sdl-base#sdl-video-info-pointer)
    (sdl-get-video-info . sdl-base#sdl-get-video-info)
    (sdl-video-info-hw-available . sdl-base#sdl-video-info-hw-available)
    (sdl-video-info-wm-available . sdl-base#sdl-video-info-wm-available)
    (sdl-video-info-blit-hw . sdl-base#sdl-video-info-blit-hw)
    (sdl-video-info-blit-hw-cc . sdl-base#sdl-video-info-blit-hw-cc)
    (sdl-video-info-blit-hw-a . sdl-base#sdl-video-info-blit-hw-a)
    (sdl-video-info-blit-sw . sdl-base#sdl-video-info-blit-sw)
    (sdl-video-info-blit-sw-cc . sdl-base#sdl-video-info-blit-sw-cc)
    (sdl-video-info-blit-sw-a . sdl-base#sdl-video-info-blit-sw-a)
    (sdl-video-info-blit-fill . sdl-base#sdl-video-info-blit-fill)
    (sdl-video-info-video-mem . sdl-base#sdl-video-info-video-mem)
    (sdl-video-info-vfmt . sdl-base#sdl-video-info-vfmt)
    (sdl-video-info-current-w . sdl-base#sdl-video-info-current-w)
    (sdl-video-info-current-h . sdl-base#sdl-video-info-current-h)
    (sdl-get-clip-rect! . sdl-base#sdl-get-clip-rect!)
    (sdl-set-clip-rect! . sdl-base#sdl-set-clip-rect!)
    (sdl-set-color-key! . sdl-base#sdl-set-color-key!)
    (sdl-set-alpha! . sdl-base#sdl-set-alpha!)
    (sdl-display-format . sdl-base#sdl-display-format)
    (sdl-display-format-alpha . sdl-base#sdl-display-format-alpha)
    (sdl-convert-surface . sdl-base#sdl-convert-surface)
    (sdl-init . sdl-base#sdl-init)
    (sdl-init-sub-system . sdl-base#sdl-init-sub-system)
    (sdl-quit-sub-system . sdl-base#sdl-quit-sub-system)
    (sdl-quit . sdl-base#sdl-quit)
    (sdl-was-init . sdl-base#sdl-was-init)
    (sdl-get-error . sdl-base#sdl-get-error)
    (sdl-clear-error! . sdl-base#sdl-clear-error!)
    (sdl-wm-set-caption . sdl-base#sdl-wm-set-caption)
    (sdl-wm-get-caption-title . sdl-base#sdl-wm-get-caption-title)
    (sdl-wm-get-caption-icon . sdl-base#sdl-wm-get-caption-icon)
    (sdl-wm-get-caption . sdl-base#sdl-wm-get-caption)
    (sdl-wm-set-icon . sdl-base#sdl-wm-set-icon)
    (sdl-wm-iconify-window . sdl-base#sdl-wm-iconify-window)
    (sdl-wm-toggle-full-screen . sdl-base#sdl-wm-toggle-full-screen)
    (sdl-wm-grab-input . sdl-base#sdl-wm-grab-input)
    (sdl-get-ticks . sdl-base#sdl-get-ticks)
    (sdl-delay . sdl-base#sdl-delay)
    (timer? . sdl-base#timer?)
    (get-time-of-day . sdl-base#get-time-of-day)
    (get-time-of-day . sdl-base#get-time-of-day)
    (sdl-add-relative-timer! . sdl-base#sdl-add-relative-timer!)
    (sdl-pump-events . sdl-base#sdl-pump-events)
    (sdl-poll-event! . sdl-base#sdl-poll-event!)
    (sdl-wait-event!* . sdl-base#sdl-wait-event!*)
    (sdl-wait-event! . sdl-base#sdl-wait-event!)
    (sdl-push-event . sdl-base#sdl-push-event)
    (sdl-event-state! . sdl-base#sdl-event-state!)
    (sdl-get-mouse-state . sdl-base#sdl-get-mouse-state)
    (sdl-warp-mouse . sdl-base#sdl-warp-mouse)
    (sdl-enable-unicode . sdl-base#sdl-enable-unicode)
    (sdl-get-video-surface . sdl-base#sdl-get-video-surface)
    (sdl-video-driver-name . sdl-base#sdl-video-driver-name)
    (sdl-set-video-mode . sdl-base#sdl-set-video-mode)
    (sdl-video-mode-ok . sdl-base#sdl-video-mode-ok)
    (sdl-show-cursor . sdl-base#sdl-show-cursor)
    (sdl-map-rgb . sdl-base#sdl-map-rgb)
    (sdl-map-rgba . sdl-base#sdl-map-rgba)
    (sdl-fill-rect . sdl-base#sdl-fill-rect)
    (sdl-flip . sdl-base#sdl-flip)
    (sdl-free-surface . sdl-base#sdl-free-surface)
    (sdl-blit-surface . sdl-base#sdl-blit-surface)
    (sdl-with-clip-rect . sdl-base#sdl-with-clip-rect)
    (make-sdl-color . sdl-base#make-sdl-color)
    (sdl-color-buffer . sdl-base#sdl-color-buffer)
    (sdl-color? . sdl-base#sdl-color?)
    (sdl-color-r . sdl-base#sdl-color-r)
    (sdl-color-g . sdl-base#sdl-color-g)
    (sdl-color-b . sdl-base#sdl-color-b)
    (make-sdl-joystick . sdl-base#make-sdl-joystick)
    (sdl-joystick-pointer . sdl-base#sdl-joystick-pointer)
    (sdl-joystick? . sdl-base#sdl-joystick?)
    (sdl-joystick-event-state . sdl-base#sdl-joystick-event-state)
    (sdl-joystick-update . sdl-base#sdl-joystick-update)
    (sdl-num-joysticks . sdl-base#sdl-num-joysticks)
    (sdl-joystick-name . sdl-base#sdl-joystick-name)
    (sdl-joystick-open . sdl-base#sdl-joystick-open)
    (sdl-joystick-opened . sdl-base#sdl-joystick-opened)
    (sdl-joystick-index . sdl-base#sdl-joystick-index)
    (sdl-joystick-num-axes . sdl-base#sdl-joystick-num-axes)
    (sdl-joystick-num-balls . sdl-base#sdl-joystick-num-balls)
    (sdl-joystick-num-hats . sdl-base#sdl-joystick-num-hats)
    (sdl-joystick-num-buttons . sdl-base#sdl-joystick-num-buttons)
    (sdl-joystick-update . sdl-base#sdl-joystick-update)
    (sdl-joystick-get-axis . sdl-base#sdl-joystick-get-axis)
    (sdl-joystick-get-hat . sdl-base#sdl-joystick-get-hat)
    (sdl-joystick-get-button . sdl-base#sdl-joystick-get-button)
    (sdl-joystick-close . sdl-base#sdl-joystick-close)
    (sdl-gl-swap-buffers . sdl-base#sdl-gl-swap-buffers)
    (sdl-gl-set-attribute . sdl-base#sdl-gl-set-attribute)
    (sdl-gl-get-attribute . sdl-base#sdl-gl-get-attribute)
    (make-sdl-event . sdl-base#make-sdl-event)
    (sdl-event-buffer . sdl-base#sdl-event-buffer)
    (sdl-event-buffer-set! . sdl-base#sdl-event-buffer-set!)
    (sdl-event-type . sdl-base#sdl-event-type)
    (sdl-event? . sdl-base#sdl-event?)
    (sdl-event-gain . sdl-base#sdl-event-gain)
    (set-sdl-event-gain! . sdl-base#set-sdl-event-gain!)
    (sdl-event-which . sdl-base#sdl-event-which)
    (set-sdl-event-which! . sdl-base#set-sdl-event-which!)
    (sdl-event-state . sdl-base#sdl-event-state)
    (set-sdl-event-state! . sdl-base#set-sdl-event-state!)
    (sdl-event-scancode . sdl-base#sdl-event-scancode)
    (set-sdl-event-scancode! . sdl-base#set-sdl-event-scancode!)
    (sdl-event-sym . sdl-base#sdl-event-sym)
    (set-sdl-event-sym! . sdl-base#set-sdl-event-sym!)
    (sdl-event-mod . sdl-base#sdl-event-mod)
    (set-sdl-event-mod! . sdl-base#set-sdl-event-mod!)
    (sdl-event-unicode . sdl-base#sdl-event-unicode)
    (set-sdl-event-unicode! . sdl-base#set-sdl-event-unicode!)
    (sdl-event-x . sdl-base#sdl-event-x)
    (set-sdl-event-x! . sdl-base#set-sdl-event-x!)
    (sdl-event-y . sdl-base#sdl-event-y)
    (set-sdl-event-y! . sdl-base#set-sdl-event-y!)
    (sdl-event-xrel . sdl-base#sdl-event-xrel)
    (set-sdl-event-xrel! . sdl-base#set-sdl-event-xrel!)
    (sdl-event-yrel . sdl-base#sdl-event-yrel)
    (set-sdl-event-yrel! . sdl-base#set-sdl-event-yrel!)
    (sdl-event-axis . sdl-base#sdl-event-axis)
    (set-sdl-event-axis! . sdl-base#set-sdl-event-axis!)
    (sdl-event-ball . sdl-base#sdl-event-ball)
    (set-sdl-event-ball! . sdl-base#set-sdl-event-ball!)
    (sdl-event-hat . sdl-base#sdl-event-hat)
    (set-sdl-event-hat! . sdl-base#set-sdl-event-hat!)
    (sdl-event-value . sdl-base#sdl-event-value)
    (set-sdl-event-value! . sdl-base#set-sdl-event-value!)
    (sdl-event-button . sdl-base#sdl-event-button)
    (set-sdl-event-button! . sdl-base#set-sdl-event-button!)
    (sdl-event-w . sdl-base#sdl-event-w)
    (set-sdl-event-w! . sdl-base#set-sdl-event-w!)
    (sdl-event-h . sdl-base#sdl-event-h)
    (set-sdl-event-h! . sdl-base#set-sdl-event-h!)
    (heap? . sdl-base#heap?)
    (SDL_INIT_TIMER . sdl-base#SDL_INIT_TIMER)
    (SDL_INIT_AUDIO . sdl-base#SDL_INIT_AUDIO)
    (SDL_INIT_VIDEO . sdl-base#SDL_INIT_VIDEO)
    (SDL_INIT_CDROM . sdl-base#SDL_INIT_CDROM)
    (SDL_INIT_JOYSTICK . sdl-base#SDL_INIT_JOYSTICK)
    (SDL_INIT_EVERYTHING . sdl-base#SDL_INIT_EVERYTHING)
    (SDL_INIT_NOPARACHUTE . sdl-base#SDL_INIT_NOPARACHUTE)
    (SDL_SWSURFACE . sdl-base#SDL_SWSURFACE)
    (SDL_HWSURFACE . sdl-base#SDL_HWSURFACE)
    (SDL_ASYNCBLIT . sdl-base#SDL_ASYNCBLIT)
    (SDL_ANYFORMAT . sdl-base#SDL_ANYFORMAT)
    (SDL_HWPALETTE . sdl-base#SDL_HWPALETTE)
    (SDL_DOUBLEBUF . sdl-base#SDL_DOUBLEBUF)
    (SDL_FULLSCREEN . sdl-base#SDL_FULLSCREEN)
    (SDL_OPENGL . sdl-base#SDL_OPENGL)
    (SDL_OPENGLBLIT . sdl-base#SDL_OPENGLBLIT)
    (SDL_RESIZABLE . sdl-base#SDL_RESIZABLE)
    (SDL_NOFRAME . sdl-base#SDL_NOFRAME)
    (SDL_HWACCEL . sdl-base#SDL_HWACCEL)
    (SDL_SRCCOLORKEY . sdl-base#SDL_SRCCOLORKEY)
    (SDL_RLEACCELOK . sdl-base#SDL_RLEACCELOK)
    (SDL_RLEACCEL . sdl-base#SDL_RLEACCEL)
    (SDL_SRCALPHA . sdl-base#SDL_SRCALPHA)
    (SDL_PREALLOC . sdl-base#SDL_PREALLOC)
    (SDL_BYTEORDER . sdl-base#SDL_BYTEORDER)
    (SDL_LIL_ENDIAN . sdl-base#SDL_LIL_ENDIAN)
    (SDL_BIG_ENDIAN . sdl-base#SDL_BIG_ENDIAN)
    (SDL_GRAB_QUERY . sdl-base#SDL_GRAB_QUERY)
    (SDL_GRAB_OFF . sdl-base#SDL_GRAB_OFF)
    (SDL_GRAB_ON . sdl-base#SDL_GRAB_ON)
    (SDL_NOEVENT . sdl-base#SDL_NOEVENT)
    (SDL_ACTIVEEVENT . sdl-base#SDL_ACTIVEEVENT)
    (SDL_APPMOUSEFOCUS . sdl-base#SDL_APPMOUSEFOCUS)
    (SDL_APPINPUTFOCUS . sdl-base#SDL_APPINPUTFOCUS)
    (SDL_APPACTIVE . sdl-base#SDL_APPACTIVE)
    (SDL_KEYDOWN . sdl-base#SDL_KEYDOWN)
    (SDL_KEYUP . sdl-base#SDL_KEYUP)
    (SDL_MOUSEMOTION . sdl-base#SDL_MOUSEMOTION)
    (SDL_MOUSEBUTTONDOWN . sdl-base#SDL_MOUSEBUTTONDOWN)
    (SDL_MOUSEBUTTONUP . sdl-base#SDL_MOUSEBUTTONUP)
    (SDL_JOYAXISMOTION . sdl-base#SDL_JOYAXISMOTION)
    (SDL_JOYBALLMOTION . sdl-base#SDL_JOYBALLMOTION)
    (SDL_JOYHATMOTION . sdl-base#SDL_JOYHATMOTION)
    (SDL_JOYBUTTONDOWN . sdl-base#SDL_JOYBUTTONDOWN)
    (SDL_JOYBUTTONUP . sdl-base#SDL_JOYBUTTONUP)
    (SDL_QUIT . sdl-base#SDL_QUIT)
    (SDL_SYSWMEVENT . sdl-base#SDL_SYSWMEVENT)
    (SDL_EVENT_RESERVEDA . sdl-base#SDL_EVENT_RESERVEDA)
    (SDL_EVENT_RESERVEDB . sdl-base#SDL_EVENT_RESERVEDB)
    (SDL_VIDEORESIZE . sdl-base#SDL_VIDEORESIZE)
    (SDL_VIDEOEXPOSE . sdl-base#SDL_VIDEOEXPOSE)
    (SDL_EVENT_RESERVED2 . sdl-base#SDL_EVENT_RESERVED2)
    (SDL_EVENT_RESERVED3 . sdl-base#SDL_EVENT_RESERVED3)
    (SDL_EVENT_RESERVED4 . sdl-base#SDL_EVENT_RESERVED4)
    (SDL_EVENT_RESERVED5 . sdl-base#SDL_EVENT_RESERVED5)
    (SDL_EVENT_RESERVED6 . sdl-base#SDL_EVENT_RESERVED6)
    (SDL_EVENT_RESERVED7 . sdl-base#SDL_EVENT_RESERVED7)
    (SDL_USEREVENT . sdl-base#SDL_USEREVENT)
    (SDL_NUMEVENTS . sdl-base#SDL_NUMEVENTS)
    (SDL_ACTIVEEVENTMASK . sdl-base#SDL_ACTIVEEVENTMASK)
    (SDL_KEYDOWNMASK . sdl-base#SDL_KEYDOWNMASK)
    (SDL_KEYUPMASK . sdl-base#SDL_KEYUPMASK)
    (SDL_MOUSEMOTIONMASK . sdl-base#SDL_MOUSEMOTIONMASK)
    (SDL_MOUSEBUTTONDOWNMASK . sdl-base#SDL_MOUSEBUTTONDOWNMASK)
    (SDL_MOUSEBUTTONUPMASK . sdl-base#SDL_MOUSEBUTTONUPMASK)
    (SDL_MOUSEEVENTMASK . sdl-base#SDL_MOUSEEVENTMASK)
    (SDL_JOYAXISMOTIONMASK . sdl-base#SDL_JOYAXISMOTIONMASK)
    (SDL_JOYBALLMOTIONMASK . sdl-base#SDL_JOYBALLMOTIONMASK)
    (SDL_JOYHATMOTIONMASK . sdl-base#SDL_JOYHATMOTIONMASK)
    (SDL_JOYBUTTONDOWNMASK . sdl-base#SDL_JOYBUTTONDOWNMASK)
    (SDL_JOYBUTTONUPMASK . sdl-base#SDL_JOYBUTTONUPMASK)
    (SDL_JOYEVENTMASK . sdl-base#SDL_JOYEVENTMASK)
    (SDL_VIDEORESIZEMASK . sdl-base#SDL_VIDEORESIZEMASK)
    (SDL_VIDEOEXPOSEMASK . sdl-base#SDL_VIDEOEXPOSEMASK)
    (SDL_QUITMASK . sdl-base#SDL_QUITMASK)
    (SDL_SYSWMEVENTMASK . sdl-base#SDL_SYSWMEVENTMASK)
    (SDL_ALLEVENTS . sdl-base#SDL_ALLEVENTS)
    (SDL_PRESSED . sdl-base#SDL_PRESSED)
    (SDL_RELEASED . sdl-base#SDL_RELEASED)
    (SDL_BUTTON . sdl-base#SDL_BUTTON)
    (SDL_BUTTON_LEFT . sdl-base#SDL_BUTTON_LEFT)
    (SDL_BUTTON_MIDDLE . sdl-base#SDL_BUTTON_MIDDLE)
    (SDL_BUTTON_RIGHT . sdl-base#SDL_BUTTON_RIGHT)
    (SDL_BUTTON_WHEELUP . sdl-base#SDL_BUTTON_WHEELUP)
    (SDL_BUTTON_WHEELDOWN . sdl-base#SDL_BUTTON_WHEELDOWN)
    (SDL_BUTTON_LMASK . sdl-base#SDL_BUTTON_LMASK)
    (SDL_BUTTON_MMASK . sdl-base#SDL_BUTTON_MMASK)
    (SDL_BUTTON_RMASK . sdl-base#SDL_BUTTON_RMASK)
    (SDL_QUERY . sdl-base#SDL_QUERY)
    (SDL_IGNORE . sdl-base#SDL_IGNORE)
    (SDL_DISABLE . sdl-base#SDL_DISABLE)
    (SDL_ENABLE . sdl-base#SDL_ENABLE)
    (SDL_GL_RED_SIZE . sdl-base#SDL_GL_RED_SIZE)
    (SDL_GL_GREEN_SIZE . sdl-base#SDL_GL_GREEN_SIZE)
    (SDL_GL_BLUE_SIZE . sdl-base#SDL_GL_BLUE_SIZE)
    (SDL_GL_ALPHA_SIZE . sdl-base#SDL_GL_ALPHA_SIZE)
    (SDL_GL_BUFFER_SIZE . sdl-base#SDL_GL_BUFFER_SIZE)
    (SDL_GL_DOUBLEBUFFER . sdl-base#SDL_GL_DOUBLEBUFFER)
    (SDL_GL_DEPTH_SIZE . sdl-base#SDL_GL_DEPTH_SIZE)
    (SDL_GL_STENCIL_SIZE . sdl-base#SDL_GL_STENCIL_SIZE)
    (SDL_GL_ACCUM_RED_SIZE . sdl-base#SDL_GL_ACCUM_RED_SIZE)
    (SDL_GL_ACCUM_GREEN_SIZE . sdl-base#SDL_GL_ACCUM_GREEN_SIZE)
    (SDL_GL_ACCUM_BLUE_SIZE . sdl-base#SDL_GL_ACCUM_BLUE_SIZE)
    (SDL_GL_ACCUM_ALPHA_SIZE . sdl-base#SDL_GL_ACCUM_ALPHA_SIZE)
    (SDL_GL_STEREO . sdl-base#SDL_GL_STEREO)
    (SDL_GL_MULTISAMPLEBUFFERS . sdl-base#SDL_GL_MULTISAMPLEBUFFERS)
    (SDL_GL_MULTISAMPLESAMPLES . sdl-base#SDL_GL_MULTISAMPLESAMPLES)
    (SDL_GL_SWAP_CONTROL . sdl-base#SDL_GL_SWAP_CONTROL)
    (SDL_GL_ACCELERATED_VISUAL . sdl-base#SDL_GL_ACCELERATED_VISUAL)
    (SDLK_UNKNOWN . sdl-base#SDLK_UNKNOWN)
    (SDLK_FIRST . sdl-base#SDLK_FIRST)
    (SDLK_BACKSPACE . sdl-base#SDLK_BACKSPACE)
    (SDLK_TAB . sdl-base#SDLK_TAB)
    (SDLK_CLEAR . sdl-base#SDLK_CLEAR)
    (SDLK_RETURN . sdl-base#SDLK_RETURN)
    (SDLK_PAUSE . sdl-base#SDLK_PAUSE)
    (SDLK_ESCAPE . sdl-base#SDLK_ESCAPE)
    (SDLK_SPACE . sdl-base#SDLK_SPACE)
    (SDLK_EXCLAIM . sdl-base#SDLK_EXCLAIM)
    (SDLK_QUOTEDBL . sdl-base#SDLK_QUOTEDBL)
    (SDLK_HASH . sdl-base#SDLK_HASH)
    (SDLK_DOLLAR . sdl-base#SDLK_DOLLAR)
    (SDLK_AMPERSAND . sdl-base#SDLK_AMPERSAND)
    (SDLK_QUOTE . sdl-base#SDLK_QUOTE)
    (SDLK_LEFTPAREN . sdl-base#SDLK_LEFTPAREN)
    (SDLK_RIGHTPAREN . sdl-base#SDLK_RIGHTPAREN)
    (SDLK_ASTERISK . sdl-base#SDLK_ASTERISK)
    (SDLK_PLUS . sdl-base#SDLK_PLUS)
    (SDLK_COMMA . sdl-base#SDLK_COMMA)
    (SDLK_MINUS . sdl-base#SDLK_MINUS)
    (SDLK_PERIOD . sdl-base#SDLK_PERIOD)
    (SDLK_SLASH . sdl-base#SDLK_SLASH)
    (SDLK_0 . sdl-base#SDLK_0)
    (SDLK_1 . sdl-base#SDLK_1)
    (SDLK_2 . sdl-base#SDLK_2)
    (SDLK_3 . sdl-base#SDLK_3)
    (SDLK_4 . sdl-base#SDLK_4)
    (SDLK_5 . sdl-base#SDLK_5)
    (SDLK_6 . sdl-base#SDLK_6)
    (SDLK_7 . sdl-base#SDLK_7)
    (SDLK_8 . sdl-base#SDLK_8)
    (SDLK_9 . sdl-base#SDLK_9)
    (SDLK_COLON . sdl-base#SDLK_COLON)
    (SDLK_SEMICOLON . sdl-base#SDLK_SEMICOLON)
    (SDLK_LESS . sdl-base#SDLK_LESS)
    (SDLK_EQUALS . sdl-base#SDLK_EQUALS)
    (SDLK_GREATER . sdl-base#SDLK_GREATER)
    (SDLK_QUESTION . sdl-base#SDLK_QUESTION)
    (SDLK_AT . sdl-base#SDLK_AT)
    (SDLK_LEFTBRACKET . sdl-base#SDLK_LEFTBRACKET)
    (SDLK_BACKSLASH . sdl-base#SDLK_BACKSLASH)
    (SDLK_RIGHTBRACKET . sdl-base#SDLK_RIGHTBRACKET)
    (SDLK_CARET . sdl-base#SDLK_CARET)
    (SDLK_UNDERSCORE . sdl-base#SDLK_UNDERSCORE)
    (SDLK_BACKQUOTE . sdl-base#SDLK_BACKQUOTE)
    (SDLK_a . sdl-base#SDLK_a)
    (SDLK_b . sdl-base#SDLK_b)
    (SDLK_c . sdl-base#SDLK_c)
    (SDLK_d . sdl-base#SDLK_d)
    (SDLK_e . sdl-base#SDLK_e)
    (SDLK_f . sdl-base#SDLK_f)
    (SDLK_g . sdl-base#SDLK_g)
    (SDLK_h . sdl-base#SDLK_h)
    (SDLK_i . sdl-base#SDLK_i)
    (SDLK_j . sdl-base#SDLK_j)
    (SDLK_k . sdl-base#SDLK_k)
    (SDLK_l . sdl-base#SDLK_l)
    (SDLK_m . sdl-base#SDLK_m)
    (SDLK_n . sdl-base#SDLK_n)
    (SDLK_o . sdl-base#SDLK_o)
    (SDLK_p . sdl-base#SDLK_p)
    (SDLK_q . sdl-base#SDLK_q)
    (SDLK_r . sdl-base#SDLK_r)
    (SDLK_s . sdl-base#SDLK_s)
    (SDLK_t . sdl-base#SDLK_t)
    (SDLK_u . sdl-base#SDLK_u)
    (SDLK_v . sdl-base#SDLK_v)
    (SDLK_w . sdl-base#SDLK_w)
    (SDLK_x . sdl-base#SDLK_x)
    (SDLK_y . sdl-base#SDLK_y)
    (SDLK_z . sdl-base#SDLK_z)
    (SDLK_DELETE . sdl-base#SDLK_DELETE)
    (SDLK_WORLD_0 . sdl-base#SDLK_WORLD_0)
    (SDLK_WORLD_1 . sdl-base#SDLK_WORLD_1)
    (SDLK_WORLD_2 . sdl-base#SDLK_WORLD_2)
    (SDLK_WORLD_3 . sdl-base#SDLK_WORLD_3)
    (SDLK_WORLD_4 . sdl-base#SDLK_WORLD_4)
    (SDLK_WORLD_5 . sdl-base#SDLK_WORLD_5)
    (SDLK_WORLD_6 . sdl-base#SDLK_WORLD_6)
    (SDLK_WORLD_7 . sdl-base#SDLK_WORLD_7)
    (SDLK_WORLD_8 . sdl-base#SDLK_WORLD_8)
    (SDLK_WORLD_9 . sdl-base#SDLK_WORLD_9)
    (SDLK_WORLD_10 . sdl-base#SDLK_WORLD_10)
    (SDLK_WORLD_11 . sdl-base#SDLK_WORLD_11)
    (SDLK_WORLD_12 . sdl-base#SDLK_WORLD_12)
    (SDLK_WORLD_13 . sdl-base#SDLK_WORLD_13)
    (SDLK_WORLD_14 . sdl-base#SDLK_WORLD_14)
    (SDLK_WORLD_15 . sdl-base#SDLK_WORLD_15)
    (SDLK_WORLD_16 . sdl-base#SDLK_WORLD_16)
    (SDLK_WORLD_17 . sdl-base#SDLK_WORLD_17)
    (SDLK_WORLD_18 . sdl-base#SDLK_WORLD_18)
    (SDLK_WORLD_19 . sdl-base#SDLK_WORLD_19)
    (SDLK_WORLD_20 . sdl-base#SDLK_WORLD_20)
    (SDLK_WORLD_21 . sdl-base#SDLK_WORLD_21)
    (SDLK_WORLD_22 . sdl-base#SDLK_WORLD_22)
    (SDLK_WORLD_23 . sdl-base#SDLK_WORLD_23)
    (SDLK_WORLD_24 . sdl-base#SDLK_WORLD_24)
    (SDLK_WORLD_25 . sdl-base#SDLK_WORLD_25)
    (SDLK_WORLD_26 . sdl-base#SDLK_WORLD_26)
    (SDLK_WORLD_27 . sdl-base#SDLK_WORLD_27)
    (SDLK_WORLD_28 . sdl-base#SDLK_WORLD_28)
    (SDLK_WORLD_29 . sdl-base#SDLK_WORLD_29)
    (SDLK_WORLD_30 . sdl-base#SDLK_WORLD_30)
    (SDLK_WORLD_31 . sdl-base#SDLK_WORLD_31)
    (SDLK_WORLD_32 . sdl-base#SDLK_WORLD_32)
    (SDLK_WORLD_33 . sdl-base#SDLK_WORLD_33)
    (SDLK_WORLD_34 . sdl-base#SDLK_WORLD_34)
    (SDLK_WORLD_35 . sdl-base#SDLK_WORLD_35)
    (SDLK_WORLD_36 . sdl-base#SDLK_WORLD_36)
    (SDLK_WORLD_37 . sdl-base#SDLK_WORLD_37)
    (SDLK_WORLD_38 . sdl-base#SDLK_WORLD_38)
    (SDLK_WORLD_39 . sdl-base#SDLK_WORLD_39)
    (SDLK_WORLD_40 . sdl-base#SDLK_WORLD_40)
    (SDLK_WORLD_41 . sdl-base#SDLK_WORLD_41)
    (SDLK_WORLD_42 . sdl-base#SDLK_WORLD_42)
    (SDLK_WORLD_43 . sdl-base#SDLK_WORLD_43)
    (SDLK_WORLD_44 . sdl-base#SDLK_WORLD_44)
    (SDLK_WORLD_45 . sdl-base#SDLK_WORLD_45)
    (SDLK_WORLD_46 . sdl-base#SDLK_WORLD_46)
    (SDLK_WORLD_47 . sdl-base#SDLK_WORLD_47)
    (SDLK_WORLD_48 . sdl-base#SDLK_WORLD_48)
    (SDLK_WORLD_49 . sdl-base#SDLK_WORLD_49)
    (SDLK_WORLD_50 . sdl-base#SDLK_WORLD_50)
    (SDLK_WORLD_51 . sdl-base#SDLK_WORLD_51)
    (SDLK_WORLD_52 . sdl-base#SDLK_WORLD_52)
    (SDLK_WORLD_53 . sdl-base#SDLK_WORLD_53)
    (SDLK_WORLD_54 . sdl-base#SDLK_WORLD_54)
    (SDLK_WORLD_55 . sdl-base#SDLK_WORLD_55)
    (SDLK_WORLD_56 . sdl-base#SDLK_WORLD_56)
    (SDLK_WORLD_57 . sdl-base#SDLK_WORLD_57)
    (SDLK_WORLD_58 . sdl-base#SDLK_WORLD_58)
    (SDLK_WORLD_59 . sdl-base#SDLK_WORLD_59)
    (SDLK_WORLD_60 . sdl-base#SDLK_WORLD_60)
    (SDLK_WORLD_61 . sdl-base#SDLK_WORLD_61)
    (SDLK_WORLD_62 . sdl-base#SDLK_WORLD_62)
    (SDLK_WORLD_63 . sdl-base#SDLK_WORLD_63)
    (SDLK_WORLD_64 . sdl-base#SDLK_WORLD_64)
    (SDLK_WORLD_65 . sdl-base#SDLK_WORLD_65)
    (SDLK_WORLD_66 . sdl-base#SDLK_WORLD_66)
    (SDLK_WORLD_67 . sdl-base#SDLK_WORLD_67)
    (SDLK_WORLD_68 . sdl-base#SDLK_WORLD_68)
    (SDLK_WORLD_69 . sdl-base#SDLK_WORLD_69)
    (SDLK_WORLD_70 . sdl-base#SDLK_WORLD_70)
    (SDLK_WORLD_71 . sdl-base#SDLK_WORLD_71)
    (SDLK_WORLD_72 . sdl-base#SDLK_WORLD_72)
    (SDLK_WORLD_73 . sdl-base#SDLK_WORLD_73)
    (SDLK_WORLD_74 . sdl-base#SDLK_WORLD_74)
    (SDLK_WORLD_75 . sdl-base#SDLK_WORLD_75)
    (SDLK_WORLD_76 . sdl-base#SDLK_WORLD_76)
    (SDLK_WORLD_77 . sdl-base#SDLK_WORLD_77)
    (SDLK_WORLD_78 . sdl-base#SDLK_WORLD_78)
    (SDLK_WORLD_79 . sdl-base#SDLK_WORLD_79)
    (SDLK_WORLD_80 . sdl-base#SDLK_WORLD_80)
    (SDLK_WORLD_81 . sdl-base#SDLK_WORLD_81)
    (SDLK_WORLD_82 . sdl-base#SDLK_WORLD_82)
    (SDLK_WORLD_83 . sdl-base#SDLK_WORLD_83)
    (SDLK_WORLD_84 . sdl-base#SDLK_WORLD_84)
    (SDLK_WORLD_85 . sdl-base#SDLK_WORLD_85)
    (SDLK_WORLD_86 . sdl-base#SDLK_WORLD_86)
    (SDLK_WORLD_87 . sdl-base#SDLK_WORLD_87)
    (SDLK_WORLD_88 . sdl-base#SDLK_WORLD_88)
    (SDLK_WORLD_89 . sdl-base#SDLK_WORLD_89)
    (SDLK_WORLD_90 . sdl-base#SDLK_WORLD_90)
    (SDLK_WORLD_91 . sdl-base#SDLK_WORLD_91)
    (SDLK_WORLD_92 . sdl-base#SDLK_WORLD_92)
    (SDLK_WORLD_93 . sdl-base#SDLK_WORLD_93)
    (SDLK_WORLD_94 . sdl-base#SDLK_WORLD_94)
    (SDLK_WORLD_95 . sdl-base#SDLK_WORLD_95)
    (SDLK_KP0 . sdl-base#SDLK_KP0)
    (SDLK_KP1 . sdl-base#SDLK_KP1)
    (SDLK_KP2 . sdl-base#SDLK_KP2)
    (SDLK_KP3 . sdl-base#SDLK_KP3)
    (SDLK_KP4 . sdl-base#SDLK_KP4)
    (SDLK_KP5 . sdl-base#SDLK_KP5)
    (SDLK_KP6 . sdl-base#SDLK_KP6)
    (SDLK_KP7 . sdl-base#SDLK_KP7)
    (SDLK_KP8 . sdl-base#SDLK_KP8)
    (SDLK_KP9 . sdl-base#SDLK_KP9)
    (SDLK_KP_PERIOD . sdl-base#SDLK_KP_PERIOD)
    (SDLK_KP_DIVIDE . sdl-base#SDLK_KP_DIVIDE)
    (SDLK_KP_MULTIPLY . sdl-base#SDLK_KP_MULTIPLY)
    (SDLK_KP_MINUS . sdl-base#SDLK_KP_MINUS)
    (SDLK_KP_PLUS . sdl-base#SDLK_KP_PLUS)
    (SDLK_KP_ENTER . sdl-base#SDLK_KP_ENTER)
    (SDLK_KP_EQUALS . sdl-base#SDLK_KP_EQUALS)
    (SDLK_UP . sdl-base#SDLK_UP)
    (SDLK_DOWN . sdl-base#SDLK_DOWN)
    (SDLK_RIGHT . sdl-base#SDLK_RIGHT)
    (SDLK_LEFT . sdl-base#SDLK_LEFT)
    (SDLK_INSERT . sdl-base#SDLK_INSERT)
    (SDLK_HOME . sdl-base#SDLK_HOME)
    (SDLK_END . sdl-base#SDLK_END)
    (SDLK_PAGEUP . sdl-base#SDLK_PAGEUP)
    (SDLK_PAGEDOWN . sdl-base#SDLK_PAGEDOWN)
    (SDLK_F1 . sdl-base#SDLK_F1)
    (SDLK_F2 . sdl-base#SDLK_F2)
    (SDLK_F3 . sdl-base#SDLK_F3)
    (SDLK_F4 . sdl-base#SDLK_F4)
    (SDLK_F5 . sdl-base#SDLK_F5)
    (SDLK_F6 . sdl-base#SDLK_F6)
    (SDLK_F7 . sdl-base#SDLK_F7)
    (SDLK_F8 . sdl-base#SDLK_F8)
    (SDLK_F9 . sdl-base#SDLK_F9)
    (SDLK_F10 . sdl-base#SDLK_F10)
    (SDLK_F11 . sdl-base#SDLK_F11)
    (SDLK_F12 . sdl-base#SDLK_F12)
    (SDLK_F13 . sdl-base#SDLK_F13)
    (SDLK_F14 . sdl-base#SDLK_F14)
    (SDLK_F15 . sdl-base#SDLK_F15)
    (SDLK_NUMLOCK . sdl-base#SDLK_NUMLOCK)
    (SDLK_CAPSLOCK . sdl-base#SDLK_CAPSLOCK)
    (SDLK_SCROLLOCK . sdl-base#SDLK_SCROLLOCK)
    (SDLK_RSHIFT . sdl-base#SDLK_RSHIFT)
    (SDLK_LSHIFT . sdl-base#SDLK_LSHIFT)
    (SDLK_RCTRL . sdl-base#SDLK_RCTRL)
    (SDLK_LCTRL . sdl-base#SDLK_LCTRL)
    (SDLK_RALT . sdl-base#SDLK_RALT)
    (SDLK_LALT . sdl-base#SDLK_LALT)
    (SDLK_RMETA . sdl-base#SDLK_RMETA)
    (SDLK_LMETA . sdl-base#SDLK_LMETA)
    (SDLK_LSUPER . sdl-base#SDLK_LSUPER)
    (SDLK_RSUPER . sdl-base#SDLK_RSUPER)
    (SDLK_MODE . sdl-base#SDLK_MODE)
    (SDLK_COMPOSE . sdl-base#SDLK_COMPOSE)
    (SDLK_HELP . sdl-base#SDLK_HELP)
    (SDLK_PRINT . sdl-base#SDLK_PRINT)
    (SDLK_SYSREQ . sdl-base#SDLK_SYSREQ)
    (SDLK_BREAK . sdl-base#SDLK_BREAK)
    (SDLK_MENU . sdl-base#SDLK_MENU)
    (SDLK_POWER . sdl-base#SDLK_POWER)
    (SDLK_EURO . sdl-base#SDLK_EURO)
    (SDLK_UNDO . sdl-base#SDLK_UNDO)
    (sdl-enable-key-repeat . sdl-base#sdl-enable-key-repeat)
    (SDL_DEFAULT_REPEAT_DELAY . sdl-base#SDL_DEFAULT_REPEAT_DELAY)
    (SDL_DEFAULT_REPEAT_INTERVAL . sdl-base#SDL_DEFAULT_REPEAT_INTERVAL))
  (list)
  (list))

;; END OF FILE