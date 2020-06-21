
Darkpro theme for LuCI (LEDE/OpenWRT)
=======================================================================================

Darkpro is an alternative HTML5 theme for LuCI that has evolved from
luci-theme-darkmatter, luci-theme-bootstrap & luci-theme-material, 
in an attempt to bring a more concise, clean and visually pleasing UX to LEDE/OpenWRT.


Installation
------------

In time, darkpro may be included upstream by the LEDE/OpenWRT crowd,
to have it always available, for now, please select an installation method
most suited for your case to get it:

### Adding Darkpro to your running LEDE/OpenWRT as ipk package

#### via LuCI

  * Go to System -> Software
  * Paste the following URL into the **Download and install package** field:
    - https://tbd/downloads/luci-theme-darkpro_git-<rev>.ipk
  * Press Enter or click "OK"

#### via shell

    $ cd /tmp
    $ wget https://tbd/downloads/luci-theme-darkpro_git-<rev>.ipk
    $ opkg install luci-theme-darkpro_git-<rev>.ipk

### Adding Darkpro to your own LEDE/OpenWRT Build

Edit your feeds.conf and add the following to it:

    # luci-theme-darkpro
    src-git darkpro git://github.com/kuyokushin/luci-theme-darkpro.git

Update your build environment and install the package:

    $ scripts/feeds update darkpro
    $ scripts/feeds install luci-theme-darkpro
    $ make menuconfig

Create compact css:

    $ uglifycss src/style.css > luci/themes/luci-theme-darkpro/htdocs/luci-static/darkpro/css/style.css

Go to LuCI -> Themes, select luci-theme-darkpro, exit, save and build as usual.

Enable the Theme
----------------

  * Go to System -> System -> Language and Style
  * Choose Darkpro in the Design selectbox

License
-------

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.
