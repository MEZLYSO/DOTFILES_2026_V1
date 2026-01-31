#! /bin/bash

# Deficion de variable de entorno para temas de gtk
export SAL_USE_VCLPLUGIN=gtk3

# Arranque de DWL junto con Slstatus
slstatus -s | dwl
