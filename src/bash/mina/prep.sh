#cd ~

#chmod 700 ~/mina/keys
chmod 700 ./keys
chmod 600 ./keys/my-wallet
mkdir .mina-config

echo 'export MINA_PRIVKEY_PASS="o1"
LOG_LEVEL=Info
FILE_LOG_LEVEL=Debug
EXTRA_FLAGS=" --block-producer-key /keys/my-wallet"
PEER_LIST_URL=https://storage.googleapis.com/mina-seed-lists/mainnet_seeds.txt
'  > .mina-env



