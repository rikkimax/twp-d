# Traits
Notable in built (to compiler) traits:

| Name            | Arguments                                               | Purpose |
|---------------------|------------------------------------------------------------|-------------|
| hasMember    | Type or initialized of type, string (name) | Does the given type contain the specific member (method/field). |
| getProtection | Symbol of type function/delegate           | Determine if symbol is public/protected or private. |
| allMembers    | Symbol or module                                   | Get all symbols for a symbol or module  |
| compiles        | D code that should compile                     | Allows to determine if given code should compile against e.g. a type. |

Notable traits in the standard library[^StdTraits].

| Name                     | Arguments                                               | Purpose |
|-----------------------------|------------------------------------------------------------|-------------|
| fullyQualifiedName | Symbol | Full module name (with packages) with type info (.stringof). |
| moduleName | Symbol | The module name of a symbol. |
| ParameterIdentifierTuple | Function or delegate symbol | The arguments names. |
| ParameterTypeTuple | Function or delegate symbol | The arguments types |
| ReturnType | Function or delegate symbol | The return type. |
| isBasicType | Type | Is the type a primitive type? |
| isSomeString | Type | Is the type a string? e.g. string, dstring or wstring. |
| isSomeChar | Type | Is the type a character? e.g. char, dchar or wchar. |
| isArray | Type | Is the type an array. Either static or dynamic |

[^StdTraits]: http://dlang.org/phobos/std_traits.html