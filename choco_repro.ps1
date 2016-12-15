# Can I see my appveyor.yml?
gci *

# Install a package 
cinst apache-solr -y -f

clist -l
# Uninstall the package and it's dependencies
# Note the --force
cuninst apache-solr -y -f -x
# This will fail with an error about not finding the meta package's nupkg file but the package is no longer in `clist -l`


# Rather than kill a user with output, hold off dumping the log until the very end
type "C:\ProgramData\chocolatey\logs\chocolatey.log"

