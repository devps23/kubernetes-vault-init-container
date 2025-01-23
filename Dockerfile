FROM redhat/ubi9
RUN curl -L -O https://releases.hashicorp.com/vault/1.18.3/vault_1.18.3_linux_amd64.zip
RUN dnf install unzip -y
RUN unzip /tmp/vault.zip
RUN mv vault /bin
RUN rm -rf /tmp/vault.zip
COPY run.sh /
ENTRYPOINT ["bash", "/run.sh"]