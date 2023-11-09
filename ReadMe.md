## 1D-Resnet model that classifies whether a audio signal is speech or noise

### Local environment

As we are going to use torch and torchaudio, I highly recommend using a `conda` or a `pip` local environment. The conda environment used for a test run was the following: `conda create -n vad python=3.11.5`

### Quick start

After creating the local environment, launch the command `bash run.sh` in order to run the pipeline with default parameters. It compises the following steps:

- Data download (LibriSpeech test-clean subset)
- Dependencies installation
- Data images creation
- Model training (20 epochs)
- Inference on a test file in dataset/test_data

The visualization of the inference result will be placed into ./result folder.