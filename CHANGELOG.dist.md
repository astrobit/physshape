# Changes
## [1.0.0] - 2020/01/22
- Initial version
## [1.0.1] - 2020/01/25
### Added
- A changelog
- A readme
- `make localinstall` to install in texmf local
- `make distinstall` to install in texmf local
- `make localuninstall` to uninstall in texmf local
- `make distuninstall` to uninstall in texmf local
- `make dist` to create distributable tarball and zip
- line in .ins to force generation of the .sty
- nicer index entries (and some associated code in .cpp to generate them)
### Changed
- Modified the makefile to split up generation of the .sty, and .pdf
- Added a newline in the middle of the title declaration (in .cpp)
- Added a newline in the middle of the \DoNotIndex declaration (in .cpp)
- fixed makefile install options to correctly find TEXMF path
## [1.0.2] - 2020/01/25
### Changed
- Switch compression of tarball to gzip to match requirement for CTAN
## [1.1.0] - 2020/03/24
- Added bulbH and bulbV, based on resistorH and resitorV


