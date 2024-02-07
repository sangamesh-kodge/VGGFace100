mkdir subset 

wget https://huggingface.co/datasets/ProgramComputer/VGGFace2-HQ/resolve/main/test/test.zip?download=true
unzip test.zip\?download\=true
mv content/testout/n0000* subset/

wget https://huggingface.co/datasets/ProgramComputer/VGGFace2-HQ/resolve/main/train/VGGFac01.zip?download=true
unzip VGGFac01.zip?download=true
mv VGGface2_None_norm_512_true_bygfpgan/n0000* subset/
mv VGGface2_None_norm_512_true_bygfpgan/n000100 subset/

rm -r VGGface2_None_norm_512_true_bygfpgan/ VGGFac01.zip?download=true content test.zip\?download\=true
mkdir test train

for n in {1..9}; 
do
    path="n00000$n"
    mkdir test/$path train/$path
    find subset/$path -type f | tail -25 | xargs -I {} mv {} ./test/$path/
    find subset/$path -type f | xargs -I {} mv {} ./train/$path/
    rm -r subset/$path 
done

for n in {10..99}; 
do
    path="n0000$n"
    mkdir test/$path train/$path
    find subset/$path -type f | tail -25 | xargs -I {} mv {} ./test/$path/
    find subset/$path -type f | xargs -I {} mv {} ./train/$path/
    rm -r subset/$path
done


path="n000100"
mkdir test/$path train/$path
find subset/$path -type f | tail -25 | xargs -I {} mv {} ./test/$path/
find subset/$path -type f | xargs -I {} mv {} ./train/$path/
rm -r subset/$path
rm -r subset/


