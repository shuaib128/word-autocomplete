
## Why yours looks messed up
Because outside a code block, GitHub Markdown:

- collapses spaces
- uses proportional text
- wraps long lines badly

That destroys ASCII formatting.

## Best way
Open your `readme.md` and replace the top part with something like this:

```md
# word-autocomplete

```text
+--------------------------------------------------+
|              AUTOCOMPLETE ENGINE                 |
|                  Written in C                    |
+--------------------------------------------------+
| > app_                                           |
| Suggestions: apple, application, apply,         |
|              appointment                         |
+--------------------------------------------------+