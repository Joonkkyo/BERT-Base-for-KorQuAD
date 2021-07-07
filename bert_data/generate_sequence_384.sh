## create pretraining data

for i in `seq -f "%02g" 0 99`
do
    python3 create_pretraining_data.py --input-file preprocessed_target_folder/wiki_${i}_cleaned --output-file test_data_folder/wiki_${i}_AA_tokenized --vocab-file vocab.txt --sequence-length 384 --mask-tokens 56 --duplication-factor 6
    python3 create_pretraining_data.py --input-file preprocessed_target_folder/wiki_${i}_AB_cleaned --output-file test_data_folder/wiki_${i}_AB_tokenized --vocab-file vocab.txt --sequence-length 384 --mask-tokens 56 --duplication-factor 6
    python3 create_pretraining_data.py --input-file preprocessed_target_folder/wiki_${i}_AC_cleaned --output-file test_data_folder/wiki_${i}_AC_tokenized --vocab-file vocab.txt --sequence-length 384 --mask-tokens 56 --duplication-factor 6
    python3 create_pretraining_data.py --input-file preprocessed_target_folder/wiki_${i}_AD_cleaned --output-file test_data_folder/wiki_${i}_AD_tokenized --vocab-file vocab.txt --sequence-length 384 --mask-tokens 56 --duplication-factor 6
    python3 create_pretraining_data.py --input-file preprocessed_target_folder/wiki_${i}_AE_cleaned --output-file test_data_folder/wiki_${i}_AE_tokenized --vocab-file vocab.txt --sequence-length 384 --mask-tokens 56 --duplication-factor 6
    python3 create_pretraining_data.py --input-file preprocessed_target_folder/wiki_${i}_AF_cleaned --output-file test_data_folder/wiki_${i}_AF_tokenized --vocab-file vocab.txt --sequence-length 384 --mask-tokens 56 --duplication-factor 6
    python3 create_pretraining_data.py --input-file preprocessed_target_folder/wiki_${i}_AG_cleaned --output-file test_data_folder/wiki_${i}_AG_tokenized --vocab-file vocab.txt --sequence-length 384 --mask-tokens 56 --duplication-factor 6

done


for i in `seq -f "%02g" 0 93`
do
   python3 create_pretraining_data.py --input-file preprocessed_target_folder/wiki_${i}_AH_cleaned --output-file test_data_folder/wiki_${i}_AH_tokenized --vocab-file vocab.txt --sequence-length 384 --mask-tokens 56 --duplication-factor 6
done 