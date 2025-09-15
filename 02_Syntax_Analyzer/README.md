## 🎯 High-Level Flow: What’s Going On?

You're building a **two-phase compiler front-end** using:
- **Flex (`prog0.l`)** for lexical analysis
- **Bison/Yacc (`prog0.y`)** for syntax analysis

Here’s the sequence of events:

### 1. **User Input**
You run the compiled program and type something like:
```
I eat rice
```

---

### 2. **`main()` Calls `yyparse()`**
```c
int main(void) {
    yyparse(); // Starts syntax analysis
}
```

- `yyparse()` is the **entry point** for Bison’s parser.
- It begins reading tokens to match grammar rules.

---

### 3. **`yyparse()` Internally Calls `yylex()`**
```c
int yylex(void); // Declared in prog0.y
```

- `yyparse()` doesn’t read input directly.
- Instead, it repeatedly calls `yylex()` to get the **next token**.

---

### 4. **`yylex()` Comes from `prog0.l`**
This is your Flex scanner. It reads the input stream and matches patterns:

```c
[Ii]      { printf("Token = %s -> Noun\n", yytext); return N; }
[Ee]at    { printf("Token = %s -> Verb\n", yytext); return V; }
[Rr]ice   { printf("Token = %s -> Object\n", yytext); return O; }
```

- Each match returns a token (`N`, `V`, `O`) to the parser.
- These are defined in `prog0.y` using `%token`.

---

### 5. **Parser Matches Grammar Rule**
```c
S: N V O { printf("Valid Sentence\n"); }
```

- If the token stream matches `N V O`, the rule is accepted.
- Otherwise, it triggers the `error` rule and calls `yyerror()`.

---

### 6. **Output**
You’ll see:
```
Token = I -> Noun
Token = eat -> Verb
Token = rice -> Object
Valid Sentence
```

---

## 🔄 Summary of Control Flow

| Step | Component | Action |
|------|-----------|--------|
| 1 | `main()` | Calls `yyparse()` |
| 2 | `yyparse()` | Requests tokens via `yylex()` |
| 3 | `yylex()` (Flex) | Scans input, returns token |
| 4 | `yyparse()` (Bison) | Matches grammar rule |
| 5 | Output | Prints result or error |

---

## 🧠 Why This Matters

This modular design mirrors real-world compilers:
- **Lexer**: Breaks input into meaningful pieces (tokens)
- **Parser**: Assembles those pieces into valid structures (syntax trees)

You’re already simulating a mini compiler pipeline. Want to take it further with semantic actions or AST generation next?
