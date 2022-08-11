# Expanse-Instruction

Clone and enter the repo:
```
git clone git@github.com:Qiaoyf96/Expanse-Instruction.git
cd Expanse-Instruction
```

Setup bashrc and conda:
```
cp .bashrc ~/.bashrc
source ~/.bashrc
```

Copy conda environment:
```
cp /expanse/lustre/projects/csb176/yifanq/share-env/pytorch-env ~/.conda/envs
echo "echo $HOME/.conda/envs/pytorch-env\n" >> ~/.conda/envs/environments.txt
```

Activate conda environment:
```
conda activate pytorch-env
```

Run the test code:
```
srun --pty --nodes=1 --ntasks-per-node=1 -p gpu-shared --gpus=1 -t 00:05:00 -A csb175 python example.py
```

### Sample Output

```
Downloading http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/train-images-idx3-ubyte.gz
Downloading http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/train-images-idx3-ubyte.gz to data/FashionMNIST/raw/train-images-idx3-ubyte.gz
26422272it [00:03, 8603909.99it/s]
Extracting data/FashionMNIST/raw/train-images-idx3-ubyte.gz to data/FashionMNIST/raw

Downloading http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/train-labels-idx1-ubyte.gz
Downloading http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/train-labels-idx1-ubyte.gz to data/FashionMNIST/raw/train-labels-idx1-ubyte.gz
29696it [00:00, 194365.16it/s]
Extracting data/FashionMNIST/raw/train-labels-idx1-ubyte.gz to data/FashionMNIST/raw

Downloading http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/t10k-images-idx3-ubyte.gz
Downloading http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/t10k-images-idx3-ubyte.gz to data/FashionMNIST/raw/t10k-images-idx3-ubyte.gz
4422656it [00:01, 3698519.20it/s]
Extracting data/FashionMNIST/raw/t10k-images-idx3-ubyte.gz to data/FashionMNIST/raw

Downloading http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/t10k-labels-idx1-ubyte.gz
Downloading http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/t10k-labels-idx1-ubyte.gz to data/FashionMNIST/raw/t10k-labels-idx1-ubyte.gz
6144it [00:00, 35301101.06it/s]
Extracting data/FashionMNIST/raw/t10k-labels-idx1-ubyte.gz to data/FashionMNIST/raw

/home/yifanq/.conda/envs/pyserini/lib/python3.6/site-packages/torchvision/datasets/mnist.py:498: UserWarning: The given NumPy array is not writeable, and PyTorch does not support non-writeable tensors. This means you can write to the underlying (supposedly non-writeable) NumPy array using the tensor. You may want to copy the array to protect its data or make it writeable before converting it to a tensor. This type of warning will be suppressed for the rest of this program. (Triggered internally at  ../torch/csrc/utils/tensor_numpy.cpp:180.)
  return torch.from_numpy(parsed.astype(m[2], copy=False)).view(*s)
Shape of X [N, C, H, W]: torch.Size([64, 1, 28, 28])
Shape of y: torch.Size([64]) torch.int64
Using cuda device
NeuralNetwork(
  (flatten): Flatten(start_dim=1, end_dim=-1)
  (linear_relu_stack): Sequential(
    (0): Linear(in_features=784, out_features=512, bias=True)
    (1): ReLU()
    (2): Linear(in_features=512, out_features=512, bias=True)
    (3): ReLU()
    (4): Linear(in_features=512, out_features=10, bias=True)
  )
)
Epoch 1
-------------------------------
loss: 2.313538  [    0/60000]
loss: 2.293854  [ 6400/60000]
loss: 2.279889  [12800/60000]
loss: 2.267428  [19200/60000]
loss: 2.259280  [25600/60000]
loss: 2.236139  [32000/60000]
loss: 2.228364  [38400/60000]
loss: 2.213714  [44800/60000]
loss: 2.203546  [51200/60000]
loss: 2.163703  [57600/60000]
Test Error:
 Accuracy: 49.9%, Avg loss: 2.165564

Epoch 2
-------------------------------
loss: 2.175565  [    0/60000]
loss: 2.159365  [ 6400/60000]
loss: 2.113833  [12800/60000]
loss: 2.121040  [19200/60000]
loss: 2.081152  [25600/60000]
loss: 2.023684  [32000/60000]
loss: 2.037789  [38400/60000]
loss: 1.979666  [44800/60000]
loss: 1.980838  [51200/60000]
loss: 1.891988  [57600/60000]
Test Error:
 Accuracy: 60.3%, Avg loss: 1.904942

Epoch 3
-------------------------------
loss: 1.936851  [    0/60000]
loss: 1.899984  [ 6400/60000]
loss: 1.801094  [12800/60000]
loss: 1.827890  [19200/60000]
loss: 1.734551  [25600/60000]
loss: 1.675667  [32000/60000]
loss: 1.689272  [38400/60000]
loss: 1.609945  [44800/60000]
loss: 1.628446  [51200/60000]
loss: 1.504872  [57600/60000]
Test Error:
 Accuracy: 62.5%, Avg loss: 1.537890

Epoch 4
-------------------------------
loss: 1.603766  [    0/60000]
loss: 1.559234  [ 6400/60000]
loss: 1.426101  [12800/60000]
loss: 1.481380  [19200/60000]
loss: 1.378243  [25600/60000]
loss: 1.363728  [32000/60000]
loss: 1.374860  [38400/60000]
loss: 1.315051  [44800/60000]
loss: 1.344338  [51200/60000]
loss: 1.232845  [57600/60000]
Test Error:
 Accuracy: 63.6%, Avg loss: 1.266344

Epoch 5
-------------------------------
loss: 1.343015  [    0/60000]
loss: 1.315170  [ 6400/60000]
loss: 1.164128  [12800/60000]
loss: 1.256149  [19200/60000]
loss: 1.142950  [25600/60000]
loss: 1.160474  [32000/60000]
loss: 1.183086  [38400/60000]
loss: 1.132169  [44800/60000]
loss: 1.165353  [51200/60000]
loss: 1.074910  [57600/60000]
Test Error:
 Accuracy: 64.7%, Avg loss: 1.099324

Done!
```

`using cuda device` suggests the code is successfully run on the GPU.