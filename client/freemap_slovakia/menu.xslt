<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <xsl:template name="menu">
        <stylemenu id="fmskmenu" defaultvalue="topo" defaultlang="sk">
        <layer id="osmmapper" enabled="false" visible="false">
            <name lang="en" value="OSM mapper" />
            <name lang="sk" value="OSM mapper" />
            <cat id="osmmapper" />
        </layer>
        <layer id="contours" enabled="true" visible="false">
            <name lang="en" value="Contours" />
            <name lang="sk" value="Vrstevnice" />
            <cat id="contours" />
        </layer>
        <layer id="hiking" enabled="true" visible="false">
            <name lang="en" value="Hiking trails" />
            <name lang="sk" value="Turistické značky" />
            <cat id="hiking" />
            <cat id="hikingcycle" />
            <cat id="ol-hiking" />
            <cat id="ol-hikingcycle" />
        </layer>
        <layer id="cycle" enabled="true" visible="false">
            <name lang="en" value="Cycle trails" />
            <name lang="sk" value="Cyklo značky" />
            <cat id="cycle" />
            <cat id="hikingcycle" />
            <cat id="ol-cycle" />
            <cat id="ol-hikingcycle" />
        </layer>
        <layer id="ski" enabled="false" visible="false">
            <name lang="en" value="Ski trails" />
            <name lang="sk" value="Lyžiarske značky" />
            <cat id="ski" />
            <cat id="ol-ski" />
        </layer>
        <layer id="topo" visible="true">
            <name lang="en" value="Topo" />
            <name lang="sk" value="Topo" />
            <cat id="default" />
            <cat id="ol-places" />
            <cat id="topo" />
            <cat id="topo_common" />
            <cat id="ol-topo_common" />
            <overlay id="contours" />
            <overlay id="hiking" />
            <overlay id="cycle" />
            <overlay id="ski" />
            <overlay id="osmmapper" />
        </layer>
        <layer id="default" visible="true">
            <name lang="en" value="Default" />
            <name lang="sk" value="Všeobecná" />
            <cat id="default" />
            <cat id="ol-places" />
            <overlay id="osmmapper" />
        </layer>

        <layer id="ol-places" enabled="true" visible="false">
            <name lang="en" value="Names of places" />
            <name lang="sk" value="Názvy ..." />
            <cat id="ol-places" />
        </layer>
        <layer id="ol-hiking" enabled="false" visible="false">
            <name lang="en" value="Hiking trails" />
            <name lang="sk" value="Turistické značky" />
            <cat id="ol-hiking" />
        </layer>
        <layer id="ol-cycle" enabled="false" visible="false">
            <name lang="en" value="Cycle trails" />
            <name lang="sk" value="Cyklo značky" />
            <cat id="ol-cycle" />
        </layer>
        <layer id="ol-ski" enabled="false" visible="false">
            <name lang="en" value="Ski trails" />
            <name lang="sk" value="Lyžiarske značky" />
            <cat id="ol-ski" />
        </layer>
        <layer id="ol-main" visible="true">
            <name lang="en" value="Overlay" />
            <name lang="sk" value="Overlay" />
            <cat id="ol-main" />
            <cat id="ol-topo_common" />
            <overlay id="ol-places" />
            <overlay id="ol-hiking" />
            <overlay id="ol-cycle" />
            <overlay id="ol-ski" />
        </layer>

        <layer id="hiking_old" visible="true">
            <name lang="en" value="Hiking (old version)" />
            <name lang="sk" value="Turistika (stará verzia)" />
            <cat id="default" />
            <cat id="hiking_old" />
            <cat id="topo_common" />
            <overlay id="contours" />
            <overlay id="osmmapper" />
        </layer>
        <layer id="cycle_old" visible="true">
            <name lang="en" value="Cycle (old version)" />
            <name lang="sk" value="Cyklo (stará verzia)" />
            <cat id="default" />
            <cat id="cycle_old" />
            <cat id="topo_common" />
            <overlay id="contours" />
            <overlay id="osmmapper" />
        </layer>
        </stylemenu>
    </xsl:template>

</xsl:stylesheet>