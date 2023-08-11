export DOCKER_BUILDKIT=1
yarn install --frozen-lockfile
yarn tsc
yarn build:backend
docker image build . -f packages/backend/Dockerfile --tag backstage-tlf:1.$1
#docker tag backstage-tlf:1.$1 mauron/backstage-tlf:1.$1
#docker push mauron/backstage-tlf:1.$1
