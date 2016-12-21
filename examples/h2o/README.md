# A haconiwa of h2o

## How to run

```bash
cd examples/h2o
sudo haconiwa create h2o.haco
#=> the container will be set up

sudo haconiwa run h2o.haco
#=> listens the host's 8080 port

sudo env H2O_STEP2=y haconiwa run h2o.haco
#=> listens the host's 8080 port, with dynamic contents by yaml
```

## Thanks

@unaske's Qiita post(JA): http://qiita.com/yu_suke1994/items/a253987f797db728632f

