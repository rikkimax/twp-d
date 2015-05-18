{pagebreak}

## Project versioning
**Summary:**

The versioning scheme of a project is not typically the issue of versions. The real problem with versionings comes from how projects interact with each other and the compatibility between versions.

**Theory:**

Versioning is a crucial part of a project deployment. It is how the software development team can recognise and isolate problems as well as easing deployment to user machines.

Not only does deployment play a key part in how versioning is performed but also the process to which development occurs. For example does your project work with Python 3 and not Python 2? Or is it Python 2 only.

What numbers or name you may give a release is not really the issue. There is a standard called SemVer[^Semver], which defines the way a release is named but also how to specify versions within dependencies. Of course many people/companies do not consider this and run into issues such as Microsoft's famous Widnows 95/98 versus Windows 9 debarcle. The issue occuring because back in 9x days developers would compare the version of the OS to if it starts with 9.

The real issue relates to project dependencies and how they act together.
Generally speaking the issues are solved on a case by case basis. For example a dependency uses version 1 of an API but another works for both 1 and 2. Yet the project is required to work for 1 and 2.

[^Semver]: http://semver.org/

