import torchvision.datasets as tvd

# Specify the path where you want to save the MNIST dataset
download_path = "/nlsasfs/home/gpucbh/vyakti1/neel_tmp/code/deepSpeed_practice/MNIST"

# Download the MNIST dataset to the specified path
tvd.MNIST(download_path, train=True, download=True)
