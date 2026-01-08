# mulle-markdown Library Documentation for AI

## 1. Introduction & Purpose

**mulle-markdown** is a C library providing Markdown parsing and conversion. It can parse Markdown syntax and convert to HTML, forming the basis for markdown processing in both C and Objective-C projects (via MulleHoedown wrapper).

This library is particularly useful for:
- Markdown processing in C applications
- Building documentation generators
- Content conversion pipelines
- Embedding Markdown in C projects

## 2. Key Concepts & Design Philosophy

- **Pure C**: Standalone C library
- **Fast Parsing**: Efficient single-pass parsing
- **Flexible Output**: Support for HTML and custom backends
- **Embedded**: Designed for integration

## 3. Core API & Data Structures

### Parser

- `markdown_parser_t *markdown_parser_new()`
  - Create parser instance

- `int markdown_parse(markdown_parser_t *parser, const char *text, size_t length)`
  - Parse Markdown text

- `char *markdown_to_html(markdown_parser_t *parser, const char *markdown, size_t length)`
  - Convert Markdown to HTML

## 4. Performance Characteristics

- **Parsing**: O(n) streaming parse
- **Memory**: Minimal allocation overhead
- **Throughput**: Typical 10-100 MB/s

## 5. Integration Examples

### Example 1: Simple Conversion
```c
char *markdown = "# Heading\n\nParagraph with **bold**.";
char *html = markdown_to_html(markdown, strlen(markdown));
printf("%s\n", html);
free(html);
```

### Example 2: File Processing
```c
FILE *in = fopen("document.md", "r");
char buffer[4096];
size_t n = fread(buffer, 1, sizeof(buffer), in);

char *html = markdown_to_html(buffer, n);
// Process html
free(html);
fclose(in);
```

## 6. Dependencies

- Standard C library

## 7. Standards & References

- CommonMark specification
- GFM (GitHub Flavored Markdown)

## 8. Version Information

mulle-markdown version macro: `MULLE_MARKDOWN_VERSION`
