echo "Installing scenario..."
#while [ ! -f /tmp/finished ]; do sleep 1; done
git clone https://github.com/Bootcamp-AI/AIP-classifying-images.git
pip install torch
pip install Pillow
pip install torchvision
echo DONE