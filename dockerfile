FROM cp.icr.io/cp/datapower/datapower-cp4i
COPY config /opt/ibm/datapower/drouter/config
COPY local /opt/ibm/datapower/drouter/local
COPY certs /opt/ibm/datapower/root/secure/usrcerts
USER root
RUN chown -R drouter:drouter /opt/ibm/datapower/drouter/config \
                             /opt/ibm/datapower/drouter/local \
                             /opt/ibm/datapower/root/secure/usrcerts
RUN set-user drouter
USER drouter
