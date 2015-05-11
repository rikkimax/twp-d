{pagebreak}

## Scripting
**Summary:**

Scripting languages are used to extend programs. It could be used to produce mods or addons that are reloadable at runtime.

**Theory:**

Scripting language are very different compared to most compiled languages in that they focus heavily on there ability to dynamically execute code at runtime. This includes heavy amount of reflection. Quite often performance is reduced as it is very hard to optimise code being executed. Unlike other kinds of languages instead of executing them they are interpreted. This means other developer code is used to emulate as if it was executed in a given context. Of course this does make them safer generally.

Along with scripting language dynamic nature is the general lack of types. In languages such as PHP types can only be hinted at. Lua for example has types such as a table but not different kinds of integers.