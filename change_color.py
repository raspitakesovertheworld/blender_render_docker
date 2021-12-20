import bpy
import random


for scene in bpy.data.scenes:
        scene.render.resolution_x = 192
        scene.render.resolution_y = 108

R = random.random()
G = random.random()
B = random.random()

bpy.data.materials["CarShellNew"].diffuse_color = (R,G,B)

