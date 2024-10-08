# UrbanCross: Enhancing Satellite Image-Text Retrieval with Cross-Domain Adaptation [MM 2024]

This repository contains the implementation of our manuscript titled "[UrbanCross: Enhancing Satellite Image-Text Retrieval with Cross-Domain Adaptation](https://arxiv.org/pdf/2404.14241.pdf)", accepted for publication at ACM Multimedia 2024. 

## Table of Contents
- [Overview](#overview)
- [Dataset](#dataset)
- [Usage](#usage)
- [Citation](#citation)
- [Contact](#contact)

## Overview
UrbanCross aims to enhance the performance of satellite image-text retrieval tasks by addressing the domain gaps that arise from diverse urban environments. The framework incorporates:


![framework](/figs/framework.png)

- A cross-domain dataset enriched with geo-tags across multiple countries.
- Large Multimodal Model (LMM) for textual refinement and Segment Anything Model (SAM) for visual augmentation.
- Adaptive curriculum-based sampling and weighted adversarial fine-tuning modules.

As the codebase is extensive and complex, this repository will be actively maintained and updated. The dataset is currently being refined due to its large size and will be released on Hugging Face shortly.

## Dataset
The UrbanCross dataset is available on [Google Drive](https://drive.google.com/drive/folders/1_MUFl3xfWwBZv5wJkRCa8Xl-cwYQYZHc?usp=sharing). The dataset includes:

```shell                 
.UrbanCross-Dataset
├── Finland
│   ├── image_segments.zip
│   ├── images.zip
│   └── instructblip_generation_finland_refine.csv
├── Germany
│   ├── image_segments.zip
│   ├── images.zip
│   └── instructblip_generation_germany_refine.csv
├── Spain
│   ├── image_segments.zip
│   ├── images.zip
│   └── instructblip_generation_spain_refine.csv
```

The dataset features high-resolution satellite images from three countries, segmented using the SAM (Segment Anything Model), with each image having ten segments. Text descriptions were generated using the InstructBLIP model.

![dataset](/figs/dataset.png)

## Usage

### Prerequisites
- Python 3.8+
- PyTorch 1.10+ with CUDA support
- Other dependencies listed in `requirements.txt`

You can install the required Python packages using:

```bash
pip install -r requirements.txt
```

Alternatively, you can create a Conda environment with:

```shell
conda create -n urbancross python=3.8
conda activate urbancross
pip install -r requirements.txt
```

### Run

For instructions on how to run the code, please refer to the `cmd` directory for the respective shell scripts.

```shell                 
.
├── fine-tune
│   ├── finetune_urbancross_curriculum.sh
│   ├── finetune_urbancross.sh
│   └── zeroshot_urbancross.sh
├── test
│   ├── test_urbancross_finland.sh
│   ├── test_urbancross_germany.sh
│   ├── test_urbancross_rsicd.sh
│   ├── test_urbancross_rsitmd.sh
│   ├── test_urbancross_spain.sh
│   ├── test_urbancross_without_sam_finland.sh
│   ├── test_urbancross_without_sam_germany.sh
│   ├── test_urbancross_without_sam_integration.sh
│   ├── test_urbancross_without_sam_rsicd.sh
│   ├── test_urbancross_without_sam_rsitmd.sh
│   └── test_urbancross_without_sam_spain.sh
└── train
    ├── train_urbancross_finland.sh
    ├── train_urbancross_germany.sh
    ├── train_urbancross_rsicd.sh
    ├── train_urbancross_rsitmd.sh
    ├── train_urbancross_spain.sh
    ├── train_urbancross_without_sam_finland.sh
    ├── train_urbancross_without_sam_germany.sh
    ├── train_urbancross_without_sam_integration.sh
    ├── train_urbancross_without_sam_rsicd.sh
    ├── train_urbancross_without_sam_rsitmd.sh
    └── train_urbancross_without_sam_spain.sh
```


## Citation

If you find our work useful in your research, please consider citing:

```bibtex
@article{zhong2024urbancross,
  title={UrbanCross: Enhancing Satellite Image-Text Retrieval with Cross-Domain Adaptation},
  author={Zhong, Siru and Hao, Xixuan and Yan, Yibo and Zhang, Ying and Song, Yangqiu and Liang, Yuxuan},
  journal={arXiv preprint arXiv:2404.14241},
  year={2024}
}
```

## Contact
For any questions or issues, feel free to open an issue or contact the authors:

- Siru Zhong: siruzhong@outlook.com
- Yuxuan Liang (Corresponding Author): yuxliang@outlook.com
