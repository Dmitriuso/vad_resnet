DATA=$PWD/dataset
dataset_prefix=test-clean

wget https://www.openslr.org/resources/12/$dataset_prefix.tar.gz -P $DATA

tar -xvf $DATA/$dataset_prefix.tar.gz -C $DATA

rm $DATA/$dataset_prefix.tar.gz
mv $DATA/LibriSpeech $DATA/raw_data

# install dependencies
pip install --upgrade pip setuptools wheel
pip install -r $PWD/requirements.txt

# create data for training
python $PWD/main.py --mode creating_data

# training the model on data from previous step
python $PWD/main.py --mode training

# predict based on data from dataset/test_data (by default)
python $PWD/main.py --mode prediction --visualize True