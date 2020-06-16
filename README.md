# inz-demo-scheme
Demo IRMA scheme for INZ

Contains secret keys, use only for demo purposes.

## Making Changes
Make any changes necessary in your text editor or IDE of choice.

After making the changes, run `irma scheme sign sk.pem .`

Verify that the scheme is valid by running `irma scheme verify .`

## Ensuring Keys Match

To ensure the keys are the same between the scheme and the keyshare:
1. Create key pair or use `testdata/jwtkeys/kss-sk.pem` from irmago.
2. Convert public and private keys to der using `openssl rsa -inform PEM -outform DER -in mykey.pem -out mykey.der`.
3. Copy der private key to `irma_keyshare_server/src/main/resources/sk.der`.
4. Copy der public key to `irma_keyshare_server/src/main/resources/pk.der`.
5. Copy pem public key to `inz-demo/pk.pem`.
6. Run `irma scheme sign` in inz-demo.
7. Copy inz-demo to `irma_keyshare_server/src/main/resources/irma_configuration/inz-demo`
8. Copy inz-demo to `irma_mobile/irma_configuration/inz-demo`
9. Copy inz-demo to `~/.local/share/irma/irma_configuration/inz-demo`
