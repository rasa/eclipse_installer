# eclipse_installer

eclipse_installer downloads and installs Eclipse and several of the most
popular plugins available at http://eclipse.org, as well as the following
third party plugins:

* CSSEditor
* EclipseNSIS
* JasperAssistant
* PHPEclipse
* QuantumDB
* RubyEclipse

If you would like to see your favorite plugin included in the next version of
the eclipse_installer, visit http://smithii.com and let me know.

eclipse_installer adds the installation directory (typically
`C:\Program Files\Eclipse\eclipse`) to your PATH environment variable.

eclipse_installer looks in the directory where eclipse_installer.exe is for
any files it needs before attempting to download them. If it does download a
file, it will attempt to save a copy of the file in this same directory.

If you instruct the installer to install in `C:\Program Files`, and then run the
uninstaller, it will blindly delete your entire `C:\Program Files` directory.

eclipse_installer adds an icon to your
`C:\Documents and Settings\%username%\Start Menu\Programs\Eclipse` directory.

Note: you are responsible to verify that each program you install using
eclipse_installer is designed to work in your environment.
If you are unsure, then please visit http://eclipse.org for more information.

## Usage

````
eclipse_installer [options]

Options:
/S         Install the application silently with the default options selected
/D=path    Install into the directory 'path' (default is
           %ProgramFiles%\Eclipse\eclipse)
/INSTYPE n Where n is a number between 0 and 4:
           0: 3.2.1 - Typical (Latest Release) (Default)
           1: 3.2.1 - All + Third Party Plugins (Latest Release)
           2: None
/RETRIES n Number of times to retry each download before reporting failure
           (default: 5) (NOT YET IMPLEMENTED)
/PROXY     Set proxy settings (NOT YET IMPLEMENTED)
/ALLUSERS  Install icons for all users (NOT YET IMPLEMENTED)
           This is the default if the user is an administrator
/USER      Install icons for the current user only (NOT YET IMPLEMENTED)
           This is the default if the user is not an administrator
/VERSION   Show the version and quit (NOT YET IMPLEMENTED)
/?         Show this help message and quit (NOT YET IMPLEMENTED)

````

## Contributing

To contribute to this project, please see [CONTRIBUTING.md](CONTRIBUTING.md).

## Bugs

To view existing bugs, or report a new bug, please see the [issues](/issues) page for this project.

## License

This project is [MIT licensed](LICENSE).

## Changelog

Please see [CHANGELOG.md](CHANGELOG.md) for the version history for this project.

## Contact

This project was originally developed by [Ross Smith II](mailto:ross@smithii.com).
Any enhancements and suggestions are welcome.
