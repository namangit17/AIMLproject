# Prolog Movie Recommendation System

## Overview

This project implements a simple rule-based movie recommendation system using Prolog. It allows users to explore a curated dataset of 50 top-rated movies and get recommendations based on keywords and similarity between movies.

Unlike modern recommendation systems that rely on machine learning, this project uses **logic programming** to demonstrate how intelligent behavior can be achieved through rules and structured knowledge.

---

## Features

* **Keyword-based Search**

  * Find movies using tags like `crime`, `war`, `sci_fi`, etc.
  * Query:

    ```prolog
    match(crime).
    ```

* **Top Rated Movies**

  * Displays movies with IMDb rating above 9.0
  * Query:

    ```prolog
    top_rated.
    ```

* **List All Movies**

  * Displays all movies in the dataset
  * Query:

    ```prolog
    list_all.
    ```

* **Similar Movies**

  * Recommends movies with similar tags
  * Query:

    ```prolog
    similar('Inception').
    ```

* **Count Movies**

  * Displays total number of movies
  * Query:

    ```prolog
    count_movies.
    ```

---

## Dataset

The system contains **50 highly rated movies**, each represented with descriptive tags.

Example:

```prolog
movie('Inception', [dreams, sci_fi, heist]).
```

Tags help in identifying relationships between movies and enable recommendation logic.

---

## Requirements

* Prolog interpreter (recommended: SWI-Prolog)

Download from: https://www.swi-prolog.org/

---

## How to Run

1. Open SWI-Prolog
2. Load the file:

   ```prolog
   consult('movies.pl').
   ```
3. Run any query, for example:

   ```prolog
   match(sci_fi).
   ```

---

## Example Usage

```prolog
?- match(crime).
🎬 Movie: The Godfather
🎬 Movie: Pulp Fiction
...

?- similar('The Matrix').
➡️  Inception
➡️  Interstellar

?- top_rated.
⭐ The Shawshank Redemption
⭐ The Godfather
```

---

## Project Structure

```
.
├── movies.pl     % Main Prolog file with logic and dataset
└── README.md     % Project documentation
```

---

## Key Concepts Used

* Logic Programming
* Knowledge Representation
* Rule-based Inference
* Pattern Matching

---

## Limitations

* Static dataset (no dynamic updates)
* No user personalization
* Simple similarity based only on shared tags

---

## Future Improvements

* Add user preference tracking
* Introduce weighted recommendations
* Expand dataset dynamically
* Build a GUI or web interface

---

## Author

Developed as part of an academic project to demonstrate basic AI concepts using Prolog.
