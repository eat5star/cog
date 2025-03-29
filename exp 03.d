3 d Part-of-Speech Tagging Using Structured NLP Programs :
!pip install nltk
import nltk
from nltk.tokenize import word_tokenize
from nltk import pos_tag
nltk.download('punkt')
nltk.download('punkt_tab')
nltk.download('averaged_perceptron_tagger_eng')
nltk.download('maxent_ne_chunker_tab')
nltk.download('words')
def tag_pos(text):
    tokens = word_tokenize(text)
    print("Tokenized:", tokens)
    tagged = pos_tag(tokens)
    print("POS Tagged (First 5):")
    for word, pos in tagged[:5]:
        print(f"{word}: {pos}")
        pos_counts = {}
    for word, pos in tagged:
        pos_counts[pos] = pos_counts.get(pos, 0) + 1
    print("POS Tag Frequencies:", pos_counts)
    return tagged
if _name_ == "_main_":
    text = "The quick brown fox jumps over the lazy dog."
    print("Original Text:", text)
    tag_pos(text)
