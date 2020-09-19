snippets
========
Language snippets for use with [vim-cheat][].

Creating Snippets
-----------------
Keep the following suggestions in mind when creating snippets:

### Snippets should be task-focused ###
The primary goal of [vim-cheat][] is not to save keystrokes, but rather to
lessen the _mental effort_ required to complete a task. With that said, don't
constrain your snippets in arbitrary ways, like "one function per snippet".
Write as much code as it takes to document a task.

Recalling programming solutions is hard, but deleting boilerplate is easy.
Ensure that your snippets contain the information you need, and work to sever
your reliance on search engines.

### Strive for brevity ###
With that said, do strive for brevity where possible. As an example, prefer
using descriptive variable and function names over code comments.

### Tag snippets liberally ###
Tag snippets with whichever "keywords" you might enter into a search-engine
when researching a problem. Use synonyms as necessary.

Perhaps you're creating a snippet about establishing a database connection. How
might you tag it? Perhaps:

- `connection`
- `create`
- `database`
- `db`
- `establish`
- `open`

Liberal tagging increases the likelihood that you're able to find a snippet
when you need it.

### Be mindful of tag substrings ###
Should you also tag the snippet above with `connect`? No. Be mindful of
substrings.

The purpose of tagging snippets is to give [fzf][] text to match against. That
being the case, avoid using tags that are substrings of other tags. Given that
`connect` is a substring of `connection`, the former will naturally match the
latter, and thus needn't be applied as a tag.

### Strive for consistency among languages
Use the same tags for the same tasks when writing snippets for multiple
languages. Doing so will allow you to develop a "meta-language" that persists
across language boundaries.


[fzf]:       https://github.com/junegunn/fzf.vim
[vim-cheat]: https://github.com/cheat/vim-cheat
