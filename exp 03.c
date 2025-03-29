3 c  Text Summarization Using Structured NLP Programs :
!pip install nltk
import nltk
from nltk.tokenize import sent_tokenize, word_tokenize
from nltk.corpus import stopwords
from collections import Counter
nltk.download('punkt')
nltk.download('punkt_tab')
nltk.download('averaged_perceptron_tagger_eng')
nltk.download('maxent_ne_chunker_tab')
nltk.download('words')
nltk.download('stopwords')

def summarize_text(text):
    sentences = sent_tokenize(text)
    print("Sentences:", sentences)
    stop_words = set(stopwords.words("english"))
    words = word_tokenize(text.lower())
    word_freq = Counter(word for word in words if word not in stop_words and word.isalnum())
    print("Word Frequencies:", dict(word_freq.most_common(5)))
    summary = " ".join(sentences[:2])
    print("Summary (First 2 Sentences):", summary)
    return summary
if __name__ == "__main__":
    text = """Natural Language Processing is an exciting field. It helps machines
    understand human language. NLP is widely used in AI applications. Many researchers
    contribute to its development."""
    print("Original Text:", text)
    summarize_text(text)
