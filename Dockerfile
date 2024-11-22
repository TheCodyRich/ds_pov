FROM quay.io/astronomer/astro-runtime:12.2.0

# Switch to root user to perform privileged actions
USER root

# Copy the RSA private key into the image
COPY include/id_rsa /root/.ssh/id_rsa

# Set the appropriate permissions for the private key
RUN chmod 600 /root/.ssh/id_rsa

# Switch back to the astro user
USER astro
