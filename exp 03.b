3 b Named Entity Recognition (NER) Using Structured NLP Programs :

!pip install nltk
import nltk
from nltk.tokenize import word_tokenize
from nltk.chunk import ne_chunk
from nltk.tag import pos_tag
nltk.download('punkt')
nltk.download('punkt_tab')
nltk.download('averaged_perceptron_tagger_eng')
nltk.download('maxent_ne_chunker_tab')
nltk.download('words')
def extract_entities(text):
    tokens = pos_tag(word_tokenize(text))
    print("Tokenized and Tagged:", tokens)
    entities = ne_chunk(tokens)
    named_entities = []
    for chunk in entities:
        if hasattr(chunk, 'label'):
            entity = " ".join(c[0] for c in chunk)
            named_entities.append(f"{entity}: {chunk.label()}")
        print("Extracted Entities:")
    for entity in named_entities:
        print(entity)
        print("Token Count:", len(tokens))
        return named_entities
if _name_ == "_main_":
    text = "John Smith works at Google in New York."
    print("Original Text:", text)
    extract_entities(text)
