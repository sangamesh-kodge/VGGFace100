# VGGFace100
This project preprocess the [VGGFace dataset](https://arxiv.org/abs/1710.08092) to obtain Subset called VGGFace100 dataset. 


[VGGFace100](https://arxiv.org/abs/2111.08947) - 100 class subset of VGGFace dataset. In this dataset reserves the last 25 images from each class for testing.



Below is the final directory structure for the final dataset.(Here xxx ranges for 001 to 100 indicating the class number):
```
└── VGGFace100
    ├── train
    |   ├── n000xxx
    |   └── ...
    |
    └── test
    |   ├── n0000xx
    |   └── ...
    |
    └── create_dataset.sh
    └── Readme.md
    └── Citation.cff
    └── LICENSE
```


## Instructions

1. Clone this repository
2. Navigate to the root of this project
3. Run the following command in your terminal/command prompt: 
 
    ```bash
    sh create_dataset.sh
    ```


# Citation
Kindly cite the repository if you use the code. Thanks!

### APA
```
Kodge, S. (2024). VGGFace100 [Computer software]. https://github.com/sangamesh-kodge/VGGFace100
```

### Bibtex
```
@software{Kodge_VGGFace100_2024,
author = {Kodge, Sangamesh},
month = feb,
title = {{VGGFace100}},
url = {https://github.com/sangamesh-kodge/VGGFace100},
year = {2024}
}
```
