openssl genrsa -out ca.key 4096

openssl req -x509 -new -nodes -sha512 -days 3650 \
 -subj "/C=CN/ST=Beijing/L=Beijing/CN=harbor.ipool.me" \
 -key ca.key \
 -out ca.crt

openssl genrsa -out harbor.ipool.me.key 4096

openssl req -sha512 -new \
    -subj "/C=CN/ST=Beijing/L=Beijing/O=example/OU=Personal/CN=harbor.ipool.me" \
    -key harbor.ipool.me.key \
    -out harbor.ipool.me.csr

cat > v3.ext <<-EOF
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
extendedKeyUsage = serverAuth
subjectAltName = @alt_names

[alt_names]
DNS.1=harbor.ipool.me
EOF

openssl x509 -req -sha512 -days 3650 \
    -extfile v3.ext \
    -CA ca.crt -CAkey ca.key -CAcreateserial \
    -in  harbor.ipool.me.csr \
    -out harbor.ipool.me.crt

openssl x509 -inform PEM -in harbor.ipool.me.crt -out harbor.ipool.me.cert
