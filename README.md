# ActiveRecord Playground

A minimal environment to practice ActiveRecord queries, associations and performance — without Rails magic.

## Why this exists
ActiveRecord is often learned by memorizing methods, not by understanding SQL behavior. This playground encourages experimentation and observation.

## Features
- ActiveRecord without Rails
- SQLite database
- Faker-seeded data
- Interactive console
- Progressive query exercises

## Setup
```bash
ruby scripts/setup.rb
```

## Start the console
```bash
ruby playground.rb
```

## Exercises
Exercises are organized by difficulty:

- exercises/level_1_basic_queries.md
- exercises/level_2_associations.md
- exercises/level_3_joins_includes.md
- exercises/level_4_aggregations.md
- exercises/level_5_performance.md

Open a level file and run queries in the console.

## Reset data
```bash
ruby scripts/reset_db.rb
```
