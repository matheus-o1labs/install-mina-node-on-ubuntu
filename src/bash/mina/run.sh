
sudo ./clr.sh >> /dev/null
#rm -rf ./.mina-config
#rm -rf ./.mina-env
#rm -rf ./keys

#exit 0

sudo ./sec.sh

#exit 0

./prep.sh

#exit 0

docker run --name mina -d \
-p 8302:8302 \
--restart=always \
--mount "type=bind,source=$(pwd)/.mina-env,dst=/entrypoint.d/mina-env,readonly" \
--mount "type=bind,source=$(pwd)/keys,dst=/keys,readonly" \
--mount "type=bind,source=$(pwd)/.mina-config,dst=/root/.mina-config" \
minaprotocol/mina-daemon:1.3.0-9b0369c-bullseye-mainnet \
daemon


docker ps

echo $(pwd)
