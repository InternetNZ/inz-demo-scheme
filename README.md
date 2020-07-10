# inz-demo-scheme
Demo IRMA scheme for INZ

Contains secret keys, use only for demo purposes.

## Making Changes
Make any changes necessary in your text editor or IDE of choice.

After making the changes, run `irma scheme sign sk.pem .`

Verify that the scheme is valid by running `irma scheme verify .`

## Keys

Be aware that we need to have match keys on all environments (mobile, keyshare and irma go server):

- `kss-0.pem` - you may use file that cames from get package `irmago` located at `go/src/github.com/privacybydesign/irmago/testdata/jwtkeys/kss-pk.pem`
