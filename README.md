# eclipse_installer [![Flattr this][flatter_png]][flatter]

Download and install Eclipse and several of the most
popular plugins available at http://eclipse.org, as well as the following
third party plugins:

* CSSEditor
* EclipseNSIS
* JasperAssistant
* PHPEclipse
* QuantumDB
* RubyEclipse

eclipse_installer adds the installation directory to your PATH environment variable.
On 32-bit systems, this directory is usually `C:\Program Files\Eclipse\eclipse`.
On 64-bit systems, this directory is usually `C:\Program Files(x86)\Eclipse\eclipse`.

eclipse_installer looks in the directory where eclipse_installer.exe is for
any files it needs before attempting to download them. If it does download a
file, it will attempt to save a copy of the file in this same directory.

If you instruct the installer to install in `C:\Program Files`, and then run the
uninstaller, it will blindly delete your entire `C:\Program Files` directory.

eclipse_installer adds an icon to your
`C:\Documents and Settings\%username%\Start Menu\Programs\Eclipse` directory.

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
````

## Verify a Release

To verify a release, download the .zip, .sha256, and .asc files for the release 
(replacing eclipse_installer-1.11-win32.zip with the release you are verifying):

````
$ wget https://github.com/rasa/eclipse_installer/releases/download/v1.11/eclipse_installer-1.11-win32.zip{,.sha256,.asc}
````

Next, check that sha256sum reports "OK":
````
$ sha256sum -c eclipse_installer-1.11-win32.zip.sha256
eclipse_installer-1.11-win32.zip: OK
````

Lastly, check that GPG reports "Good signature":

````
$ gpg --keyserver hkps.pool.sks-keyservers.net --recv-key 0x105a5225b6ab4b22
$ gpg --verify eclipse_installer-1.11-win32.zip.asc eclipse_installer-1.11-win32.zip
gpg:                using RSA key 0xFF914F74B4BB6EF3
gpg: Good signature from "Ross Smith II <ross@smithii.com>" [ultimate]
...
````

## Contributing

To contribute to this project, please see [CONTRIBUTING.md](CONTRIBUTING.md).

## Bugs

To view existing bugs, or report a new bug, please see [issues](../../issues).

## Changelog

To view the version history for this project, please see [CHANGELOG.md](CHANGELOG.md).

## License

This project is [MIT licensed](LICENSE).

## Contact

This project was created and is maintained by [Ross Smith II][] [![endorse][endorse_png]][endorse]

Feedback, suggestions, and enhancements are welcome.

[Ross Smith II]: mailto:ross@smithii.com "ross@smithii.com"
[flatter]: https://flattr.com/submit/auto?user_id=rasa&url=https%3A%2F%2Fgithub.com%2Frasa%2Feclipse_installer
[flatter_png]: http://button.flattr.com/flattr-badge-large.png "Flattr this"
[endorse]: https://coderwall.com/rasa
[endorse_png]: https://api.coderwall.com/rasa/endorsecount.png "endorse"

