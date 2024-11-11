# Perplexity
## 1. A quick recap of language models

Language models are at the heart of many natural language processing tasks. These models are designed to predict the probability of a sequence of words or characters in a given language. In essence, a language model tries to capture the patterns and structures of a language, allowing it to generate coherent text or predict the likelihood of a given sequence.

Modern language models, especially those based on deep learning techniques like transformers (e.g., GPT-3, BERT), have shown remarkable capabilities in understanding and generating human-like text. They've become fundamental to various applications, including machine translation, speech recognition, and text generation.

## 2. Evaluating language models

When we develop or improve language models, we need ways to measure their performance. While human evaluation can provide valuable insights, it's often subjective and time-consuming. This is where quantitative metrics come in, allowing us to objectively compare different models or versions of the same model.

One of the most common metrics used to evaluate language models is perplexity. Perplexity provides a measure of how well a probability model predicts a sample. In the context of language models, lower perplexity indicates better performance.

## 3. Perplexity as the normalised inverse probability of the test set

### 3.1 Probability of the test set

To understand perplexity, let's start with the probability of the test set. Given a test set of N words $(w_1, w_2, ..., w_N)$, the probability that the language model assigns to this sequence is:

$$P(w_1, w_2, ..., w_N) = P(w_1) * P(w_2|w_1) * P(w_3|w_1,w_2) * ... * P(w_N|w_1,...,w_{N-1})$$

This is simply the product of the conditional probabilities of each word given its preceding context.

### 3.2 Normalising

The raw probability of the test set can be difficult to interpret, especially when comparing test sets of different lengths. To address this, we normalize by taking the Nth root of the inverse probability:

$$(1 / P(w_1, w_2, ..., w_N))^{(1/N)}$$

This normalization allows us to compare models across different test set sizes.

### 3.3 Bringing it all together

Perplexity is defined as this normalized inverse probability:

$$\text{Perplexity} = (1 / P(w_1, w_2, ..., w_N))^{(1/N)}$$

In practice, to avoid numerical underflow issues when multiplying many small probabilities, we often work with log probabilities:

$$\text{Perplexity} = \exp(-(1/N) * \sum_{i=1}^N \log P(w_i|w_1,...,w_{i-1}))$$

## 4. Perplexity as the exponential of the cross-entropy

### 4.1 Cross-entropy of a language model

Cross-entropy is a concept from information theory that measures the average number of bits needed to encode data coming from a source S when using model M. For a language model, the cross-entropy is:

$$H(S,M) = -(1/N) * \sum_{i=1}^N \log_2 P(w_i|w_1,...,w_{i-1})$$

Note the similarity to our perplexity formula. In fact, perplexity is simply 2 raised to the power of the cross-entropy:

$$\text{Perplexity} = 2^{H(S,M)}$$

### 4.2 Weighted branching factor: rolling a die

To understand perplexity intuitively, think of it as a weighted branching factor. Imagine rolling a fair 6-sided die. Each outcome has a probability of 1/6, and the perplexity would be:

$$\text{Perplexity} = (1 / (1/6))^{(1/1)} = 6$$

This matches our intuition: at each roll, we have 6 equally likely options.

### 4.3 Weighted branching factor: language models

For language models, perplexity represents the weighted average number of equally likely words that the model is choosing between at each step. A perplexity of 100 means that the model is as confused on average as if it had to choose between 100 equally likely options at each word.

This interpretation helps us understand why lower perplexity is better: it means the model is more certain about its predictions, effectively choosing between fewer options at each step.

In conclusion, perplexity serves as a powerful tool for evaluating language models, providing an interpretable measure of a model's predictive power. By understanding perplexity both as a normalized probability and as the exponential of cross-entropy, we gain deeper insights into how language models perform and how we can improve them.