# inz-demo-scheme
Demo IRMA scheme for INZ

Contains secret keys, use only for demo purposes.

## Making Changes
Make any changes necessary in your text editor or IDE of choice.

After making the changes, run `irma scheme sign sk.pem .`

Verify that the scheme is valid by running `irma scheme verify .`

## Keys

Be aware that we need to have match keys on all environments (mobile, keyshare and irma go server):

- `kss-0.pem` - it means KeyShareServer key. You have to use the same file that was generated (and is used) on your 
keyshare server name as `pk.pem`. Rename it and save on the scheme. If you are not sure if the all keys matches, 
you can follow the steps to [generate new keys](https://github.com/InternetNZ/irma_keyshare_server#generating-jwt-keys). 
It will generate private (`sk.pem`) and public keys (`pk.dem`).
