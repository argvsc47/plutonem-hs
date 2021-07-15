{-# LANGUAGE ForeignFunctionInterface #-}

import Foreign
import Foreign.C.Types

data Pluto_colour_t = Pluto_colour_t CUChar CUChar CUChar

foreign import ccall unsafe "pluto.h pluto_init_window"
    c_pluto_init_window :: IO ()

foreign import ccall unsafe "pluto.h pluto_render"
    c_pluto_render :: IO ()

foreign import ccall unsafe "pluto.h pluto_write_out"
    c_pluto_write_out :: IO ()

foreign import ccall unsafe "pluto.h pluto_clear"
    c_pluto_clear :: IO ()
    
foreign import ccall unsafe "pluto.h pluto_clear_buffers"
    c_pluto_clear_buffers :: IO ()

foreign import ccall unsafe "pluto.h pluto_deinit"
    c_pluto_deinit :: IO ()

foreign import ccall unsafe "pluto.h pluto_set_pix_colour"
    c_pluto_set_pix_colour :: CInt -> CInt -> CUChar -> CUChar -> CUChar -> IO ()

foreign import ccall unsafe "pluto.h pluto_set_upix_colour"
    c_pluto_set_upix_colour :: CInt -> CInt -> CUChar -> CUChar -> CUChar -> IO ()

foreign import ccall unsafe "pluto.h pluto_set_cpix_colour"
    c_pluto_set_cpix_colour :: CInt -> CInt -> CUChar -> CUChar -> CUChar -> IO ()

foreign import ccall unsafe "pluto.h pluto_set_ucpix_colour"
    c_pluto_set_ucpix_colour :: CInt -> CInt -> CUChar -> CUChar -> CUChar -> IO ()

foreign import ccall unsafe "pluto.h pluto_set_pix"
    c_pluto_set_pix :: CInt -> CInt -> IO ()

foreign import ccall unsafe "pluto.h pluto_set_upix"
    c_pluto_set_upix :: CInt -> CInt -> IO ()

foreign import ccall unsafe "pluto.h pluto_unset_pix"
    c_pluto_unset_pix :: CInt -> CInt -> IO ()

foreign import ccall unsafe "pluto.h pluto_unset_upix"
    c_pluto_unset_upix :: CInt -> CInt -> IO ()

foreign import ccall unsafe "pluto.h pluto_save_screen"
    c_pluto_save_screen :: IO ()

foreign import ccall unsafe "pluto.h pluto_restore_screen"
    c_pluto_restore_screen :: IO ()

foreign import ccall unsafe "pluto.h pluto_resize"
    c_pluto_resize :: IO ()

foreign import ccall unsafe "pluto.h pluto_set_buffer_pix"
    c_pluto_set_buffer_pix :: Ptr CUChar -> CInt -> CInt -> IO ()

foreign import ccall unsafe "pluto.h pluto_unset_buffer_pix"
    c_pluto_unset_buffer_pix :: Ptr CUChar -> CInt -> CInt -> IO ()

foreign import ccall unsafe "pluto.h pluto_set_buffer_pix_colour"
    c_pluto_set_buffer_pix_colour :: Ptr Pluto_colour_t -> CInt -> CInt -> CUChar -> CUChar -> CUChar -> IO ()

foreign import ccall unsafe "pluto.h pluto_set_buffer_cpix"
    c_pluto_set_buffer_cpix :: Ptr CUChar -> Ptr Pluto_colour_t -> CInt -> CInt -> CUChar -> CUChar -> CUChar -> IO ()
