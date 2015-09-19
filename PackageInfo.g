#
# zeromq: ZeroMQ bindings for GAP and HPC-GAP
#
# This file contains package meta data. For additional information on
# the meaning and correct usage of these fields, please consult the
# manual of the "Example" package as well as the comments in its
# PackageInfo.g file.
#
SetPackageInfo( rec(

PackageName := "zeromq",
Subtitle := "ZeroMQ bindings for GAP and HPC-GAP",
Version := "0.1",
Date := "19/09/2015", # dd/mm/yyyy format

Persons := [
  rec(
    IsAuthor := true,
    IsMaintainer := true,
    FirstNames := "Markus",
    LastName := "Pfeiffer",
    WWWHome := "http://www.morphism.de/~markusp/",
    Email := "markus.pfeiffer@st-andrews.ac.uk",
    PostalAddress := Concatenation(
               "School of Computer Science\n",
               "University of St Andrews\n",
               "Jack Cole Building, North Haugh\n",
               "St Andrews, Fife, KY16 9SX\n",
               "United Kingdom" ),
    Place := "St Andrews",
    Institution := "University of St Andrews",
  ),
  rec(
    IsAuthor := true,
    IsMaintainer := false,
    FirstNames := "Reimer",
    LastName := "Behrends",
    WWWHome := "http://www.mathematik.uni-kl.de/agag/mitglieder/wissenschaftliche-mitarbeiter/dr-reimer-behrends/",
    Email := "behrends@gmail.com",
    PostalAddress := Concatenation(
               "Technische Universität Kaiserslautern\n",
               "Fachbereich Mathematik\n",
               "Postfach 3049\n",
               "67653 Kaiserslautern\n",
               "Deutschland" ),
    Place := "Kaiserslautern",
    Institution := "Universität Kaiserslautern",
  ),
],

PackageWWWHome := "http://gap-packages.github.io/zeromq/",

ArchiveURL     := Concatenation("https://github.com/gap-packages/zeromq/",
                                "releases/download/v", ~.Version,
                                "/zeromq-", ~.Version),
README_URL     := Concatenation( ~.PackageWWWHome, "README" ),
PackageInfoURL := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),

ArchiveFormats := ".tar.gz",

##  Status information. Currently the following cases are recognized:
##    "accepted"      for successfully refereed packages
##    "submitted"     for packages submitted for the refereeing
##    "deposited"     for packages for which the GAP developers agreed
##                    to distribute them with the core GAP system
##    "dev"           for development versions of packages
##    "other"         for all other packages
##
Status := "dev",

AbstractHTML   :=  "",

PackageDoc := rec(
  BookName  := "zeromq",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "ZeroMQ bindings for GAP and HPC-GAP",
),

Dependencies := rec(
  GAP := ">= 4.6",
  NeededOtherPackages := [ [ "GAPDoc", ">= 1.5" ] ],
  SuggestedOtherPackages := [ ],
  ExternalConditions := [ ],
),

AvailabilityTest := function()
        return true;
    end,

TestFile := "tst/testall.g",

BannerString := Concatenation(
    "----------------------------------------------------------------\n",
    "Loading ZeroMQ ", ~.Version, "\n",
    "by ",
    JoinStringsWithSeparator( List( Filtered( ~.Persons, r -> r.IsAuthor ),
                                    r -> Concatenation(
        r.FirstNames, " ", r.LastName, " (", r.WWWHome, ")\n" ) ), "   " ),
    "For help, type: ?zeromq package \n",
    "----------------------------------------------------------------\n" ),

Keywords := [ "zeromq" ],

));


