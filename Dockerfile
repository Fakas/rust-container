FROM cm2network/steamcmd:latest

USER root
# Update packages
RUN apt-get update --yes
# Switch to steam user
USER steam
# Set up symlinks
COPY update.sh .
RUN bash ./update.sh
# Copy launch script
COPY launch.sh /home/steam/rust
# Set entrypoint
ENTRYPOINT ["/home/steam/rust/launch.sh"]
CMD []
