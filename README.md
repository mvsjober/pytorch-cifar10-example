# Simple CIFAR10 example in PyTorch

Download [CIFAR10 dataset](https://www.cs.toronto.edu/~kriz/cifar.html), use the [CIFAR-10 python version](https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz). Example:

```bash
cd /path/to/datadir
wget https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz
tar xf cifar-10-python.tar.gz
```

Run on Puhti:

```bash
sbatch run-test.sh --data_path=/path/to/datadir
```
