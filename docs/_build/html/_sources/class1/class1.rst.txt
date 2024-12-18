Class 1: The fundamental of Generative Artificial Intelligent (AI)
==================================================================

..  image:: ./_static/mission1.png

AI Primer
---------
As GenAI Practiotioner, you need to minimally understand what it means with the following term and able to articulate the concept introduced. The following not an exhasive list. The purpose if to get you started. For details, please refer to various contents. Content below were extracted from collection of resources from Internet.


What is AI and how different with GenAI?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Artificial Intelligence (AI) refers to the simulation of human intelligence in machines. AI systems are designed to perform tasks that typically require human intelligence, such as learning, problem-solving, reasoning, understanding language, and perception.

AI has many subcategory such as machine learning, deep learning and etc.

Generative AI is a specific type of AI focused on creating new content, such as text, images, music, or even code. It uses advanced models, often based on deep learning, to generate data that resembles human-created content.

What is LLM?
~~~~~~~~~~~~
LLM (Large Language Model) It's essentially a type of artificial intelligence system that is trained on vast amounts of text data to understand, generate, and process human language. It is based on deep learning neural networks, specifically transformer architectures, which allow them to process and predict language in sophisticated ways. They are trained on massive datasets containing text from books, websites, articles, and other written sources. During training, they learn patterns, grammar, context, and semantic relationships between words and concepts.

While powerful, LLMs can sometimes produce inaccurate information (hallucination), exhibit biases present in their training data, and lack true understanding in the way humans comprehend language.

In summary, LLMs are a specialized application of machine learning, focusing on tasks related to natural language, while ML encompasses a broader range of tasks beyond text processing.

What is SLM?
~~~~~~~~~~~~
SLM (Small Language Model) is a type of artificial intelligence model designed for natural language processing that has fewer parameters (between million to few billion) and computational requirements compared to large language models.
Parameter Scale Examples

Small language model: 100 million to 1 billion parameters
Medium model: 1-10 billion parameters
Large models like GPT-3: 175 billion parameters
Very large models: 500 billion to 1 trillion parameters


What is ML?
~~~~~~~~~~~
Machine Learning (ML) is a branch of artificial intelligence (AI) that focuses on creating systems that can learn and improve from experience without being explicitly programmed. In ML, computers are trained to recognize patterns and make decisions or predictions based on data.


What "token" means in context in AI?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
A token is the basic unit of text that an AI model processes and understands. A token can be a word, part of a word, or even a punctuation mark. Tokenization is the process of breaking down text into these individual tokens
Typically, 1 token is approximately:
- 4 characters of English text
- About 3/4 of a word
- Varies slightly between different AI models

What is quantization?
~~~~~~~~~~~~~~~~~~~~~
Quantization is a technique that you can decrease the amount of GPU memory needed by quantizing, essentially reducing the precision of the weights of the model. Common quantization levels include:

16-bit: Also called “half-precision”, often used as the default, balancing precision and memory usage.

8-bit: Generally achieves similar performance to 16-bit while halving memory requirements.

4-bit: Significantly reduces memory needs but may noticeably impact model performance.

What is Retrival Augmented Generation?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
RAG stands for Retrieval-Augmented Generation, an advanced technique in artificial intelligence that combines information retrieval with generative AI models to improve the accuracy and relevance of AI-generated responses. 

What is Agentic RAG?
~~~~~~~~~~~~~~~~~~~~
Agentic RAG is an advanced extension of Retrieval-Augmented Generation (RAG) where the system incorporates agent-like behavior to actively interact with external tools, APIs, or knowledge sources to perform tasks beyond just retrieval and generation. This approach empowers the AI system to act autonomously, iteratively, and adaptively based on the task at hand.


What is vectorizing in context of AI?
In AI, vectorizing refers to the process of converting data (such as text, images, or other types of information) into numerical formats called vectors. These vectors are numerical representations that algorithms can understand and process. The goal is to transform raw data into a structured form suitable for computation and machine learning task

What is "context windows" in AI?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In AI, a context window refers to the amount of input data (text, tokens, or other forms of information) a model can process or "remember" at once. It represents the maximum size of the sequence the model can take as input for a single processing task.

The context window determines how much input data the model can "see" to generate its output.
A larger context window allows the model to consider more context, which is essential for tasks like summarization, long-form text generation, or analyzing lengthy documents.

- What is embedding?



.. NOTE::
       No explicit action require for this class. Ensure you read and truely understand what is AI.
       A strong understanding the fundamental will helps. 


..  image:: ./_static/mission1-1.png

.. toctree::
   :maxdepth: 1
   :glob:

