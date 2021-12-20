FROM debian:bullseye
MAINTAINER Markus Bawidamann (markustheswiss@gmail.com)
#RUN apt-get update
#RUN apt-get install -y blender
RUN mkdir /blender_files
RUN ls -lah
COPY BMW27.blend /blender_files/
COPY blender_render.sh /blender_files/
RUN chmod +x /blender_files/blender_render.sh
COPY change_color.py /blender_files/
ENTRYPOINT "/blender_files/blender_render.sh"

