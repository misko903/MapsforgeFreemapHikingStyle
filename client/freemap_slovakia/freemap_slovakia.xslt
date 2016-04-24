<?xml-stylesheet type="text/xsl" href="freemap_slovakia.xslt"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <xsl:variable name="yellow">#C0FFEE00</xsl:variable>
    <xsl:variable name="green">#C0009900</xsl:variable>
    <xsl:variable name="blue">#C03233FF</xsl:variable>
    <xsl:variable name="red">#C0FE0000</xsl:variable>
    <xsl:variable name="alternative">#C0FF00FF</xsl:variable>
    <xsl:variable name="fallback">#C0000000</xsl:variable>

    <xsl:variable name="offset1">2.0</xsl:variable>
    <xsl:variable name="offset2">3.5</xsl:variable>
    <xsl:variable name="offset3">5.0</xsl:variable>
    <xsl:variable name="offset4">6.5</xsl:variable>

    <xsl:variable name="markedTrailWidth">0.95dp</xsl:variable>
    <xsl:variable name="scaleDySize">14,1.45</xsl:variable>

    <xsl:template match="/">

        <rendertheme version="4" map-background="#FBFBF9" map-background-outside="#dddddd">
            <!-- ways -->
            <rule e="way" k="*" v="*">
                <!-- landuse -->
                <rule e="way" k="landuse" v="*">
                    <rule e="way" k="landuse" v="farmyard">
                        <area fill="#80DFCFBC"/>
                    </rule>
                    <rule e="way" k="landuse" v="residential">
                        <area fill="#80E5E1DC"/>
                    </rule>
                    <rule e="way" k="landuse" v="retail">
                        <area fill="#FFEBEB"/>
                    </rule>
                    <rule e="way" k="landuse" v="industrial">
                        <area fill="#80C0C0C0"/>
                    </rule>
                    <rule e="way" k="landuse" v="railway">
                        <area fill="#C0C0C0"/>
                    </rule>
                    <rule e="way" k="landuse" v="brownfield">
                        <area fill="#80B5988B"/>
                    </rule>
                    <rule e="way" k="landuse" v="commercial">
                        <area fill="#80FCFFC9"/>
                    </rule>
                    <rule e="way" k="landuse" v="greenfield">
                        <area fill="#C4E3B1"/>
                    </rule>
                    <rule e="way" k="landuse" v="construction">
                        <area fill="#80d0d0d0"/>
                    </rule>
                    <rule e="way" k="landuse" v="garages">
                        <area fill="#d6d6e4"/>
                    </rule>
                    <rule e="way" k="landuse" v="landfill|quarry">
                        <area fill="#A0e1e1e1"/>
                        <area src="file:/patterns/quarry.png"/>
                    </rule>
                    <rule e="way" k="landuse" v="cemetery">
                        <area fill="#E9F6EE" stroke="#C0C0C0" stroke-width="0.2dp"/>
                        <area src="file:/patterns/cemetery.png"/>
                    </rule>
                    <rule e="way" k="landuse" v="field|farm|farmland">
                        <area fill="#A0FAFAF0"/>
                    </rule>
                    <rule e="way" k="landuse" v="village_green|meadow|grass|recreation_ground|grassland">
                        <area fill="#A0E7FAD7"/>
                    </rule>
                    <rule e="way" k="landuse" v="allotments">
                        <area fill="#FAF1D7"/>
                    </rule>
                    <rule e="way" k="landuse" v="reservoir|basin">
                        <area fill="#b5d6f1"/>
                    </rule>
                    <rule e="way" k="*" v="*" zoom-min="16">
                        <caption k="name" font-style="bold" font-size="10dp" fill="#808080" stroke="#ffffff" stroke-width="2.0dp"/>
                    </rule>
                </rule>
                <!-- landuse -->
                <rule e="way" k="natural|landuse" v="forest|wood|scrub">
                    <rule e="way" k="wood|forest" v="*">
                        <rule e="way" k="wood|forest" v="coniferous">
                            <area fill="#B6D9BE"/>
                        </rule>
                        <rule e="way" k="wood|forest" v="deciduous">
                            <area fill="#D1E5C0"/>
                        </rule>
                        <rule e="way" k="wood|forest" v="mixed">
                            <area fill="#BFDEBA"/>
                        </rule>
                    </rule>
                    <rule e="way" k="wood" v="~">
                        <area fill="#C7DBBB"/>
                    </rule>
                    <rule e="way" k="*" v="*" zoom-min="16">
                        <caption k="name" font-style="bold" font-size="10dp" fill="#40ff40" stroke="#ffffff" stroke-width="2.0dp"/>
                    </rule>
                </rule>
                <rule e="way" k="landuse" v="military">
                    <area src="file:/patterns/military.png"/>
                </rule>
                <!-- amenity -->
                <rule e="way" k="amenity" v="*">
                    <rule e="way" k="amenity" v="kindergarten|school|college|university">
                        <area fill="#DFAFDD" stroke="#e9dd72" stroke-width="0.2dp"/>
                    </rule>
                    <rule e="way" k="amenity" v="grave_yard">
                        <area src="file:/patterns/cemetery.png" stroke="#e4e4e4" stroke-width="0.2dp"/>
                    </rule>
                    <rule e="way" k="amenity" v="parking">
                        <area fill="#F7EFB7" stroke="#E9DD72" stroke-width="0.2dp"/>
                        <rule e="way" k="access" v="private" zoom-min="15">
                            <area src="file:/patterns/access-private.png"/>
                        </rule>
                        <rule e="way" k="*" v="*" zoom-min="17">
                            <symbol src="file:/symbols/parking.svg" symbol-width="12dp"/>
                        </rule>
                    </rule>
                    <rule e="way" k="amenity" v="fountain" closed="yes">
                        <area fill="#b5d6f1" stroke="#000080" stroke-width="0.15dp"/>
                        <rule e="way" k="*" v="*" zoom-min="17">
                            <symbol src="file:/symbols/fountain.png" symbol-width="12dp"/>
                        </rule>
                    </rule>
                    <rule e="way" k="amenity" v="hospital" zoom-min="15">
                        <symbol src="file:/symbols/hospital.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="way" k="amenity" v="theatre" zoom-min="17">
                        <symbol src="file:/symbols/theatre.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="way" k="amenity" v="toilets" zoom-min="17">
                        <symbol src="file:/symbols/toilets.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="way" k="*" v="*" zoom-min="17">
                        <caption k="name" dy="14dp" font-style="bold" font-size="10dp" fill="#4040ff" stroke="#ffffff" stroke-width="2.0dp"/>
                    </rule>
                </rule>
                <!-- natural -->
                <rule e="way" k="natural" v="*">
                    <rule e="way" k="natural" v="coastline">
                        <rule e="way" k="*" v="*" closed="no">
                            <line stroke="#708599" stroke-width="2.0dp"/>
                        </rule>
                        <rule e="way" k="*" v="*" closed="yes">
                            <area fill="#b5d6f1" stroke="#b5d6f1" stroke-width="0.4dp"/>
                        </rule>
                    </rule>
                    <rule e="way" k="natural" v="glacier">
                        <area fill="#fafaff" stroke="#add8e6" stroke-width="0.8dp"/>
                    </rule>
                    <rule e="way" k="natural" v="land">
                        <area fill="#f8f8f8" stroke="#e0e0e0" stroke-width="0.1dp"/>
                    </rule>
                    <rule e="way" k="natural" v="beach">
                        <area fill="#eecc55"/>
                    </rule>
                    <rule e="way" k="natural" v="heath">
                        <area fill="#ffffc0" stroke="#ffff90" stroke-width="0.2dp"/>
                    </rule>
                    <rule e="way" k="natural" v="marsh|wetland">
                        <area src="file:/patterns/marsh.png"/>
                    </rule>
                    <rule e="way" k="natural" v="cliff" zoom-min="14">
                        <line stroke="#555555" stroke-width="0.5dp"/>
                        <lineSymbol src="file:/symbols/way_cliff.svg" align-center="false" repeat="true" repeat-gap="8dp" scale="0.7"/>
                    </rule>
                </rule>
                <!-- leisure -->
                <rule e="way" k="leisure" v="*">
                    <rule e="way" k="leisure" v="park|garden|golf_course|common|green">
                        <area fill="#C7F1A3" stroke="#6FC18E" stroke-width="0.2dp"/>
                    </rule>
                    <rule e="way" k="leisure" v="playground|playing_fields|pitch|dog_park">
                        <area fill="#BDE3CB" stroke="#6FC18E" stroke-width="0.2dp"/>
                        <rule e="way" k="*" v="playground" zoom-min="17">
                            <symbol src="file:/symbols/playground.png" symbol-width="12dp"/>
                        </rule>
                    </rule>
                    <rule e="way" k="leisure" v="nature_reserve">
                        <area src="file:/patterns/nature-reserve.png" stroke="#6fc18e" stroke-width="0.2dp"/>
                    </rule>
                    <rule e="way" k="leisure" v="stadium|sports_centre|water_park">
                        <area fill="#BDE3CB" stroke="#6FC18E" stroke-width="0.2dp"/>
                    </rule>
                    <rule e="way" k="leisure" v="track">
                        <rule e="way" k="area" v="yes|true">
                            <area fill="#bde3cb" stroke="#6fc18e" stroke-width="0.025dp"/>
                        </rule>
                        <rule e="way" k="area" v="~|no|false">
                            <line stroke="#6fc18e" stroke-width="0.75dp"/>
                            <line stroke="#bde3cb" stroke-width="0.7dp"/>
                        </rule>
                    </rule>
                    <rule e="way" k="leisure" v="swimming_pool">
                        <area fill="#b5d6f1" stroke="#6060ff" stroke-width="0.2dp"/>
                    </rule>
                    <rule e="way" k="*" v="*" zoom-min="16">
                        <caption k="name" font-style="bold" font-size="10dp" fill="#4040ff" stroke="#ffffff" stroke-width="2dp"/>
                    </rule>
                </rule>
                <rule e="way" k="admin_level" v="*">
                    <rule e="way" k="admin_level" v="2">
                        <line stroke="#70EDC2EC" stroke-width="8dp" stroke-linecap="butt"/>
                    </rule>
                    <rule e="way" k="admin_level" v="4|5|6">
                        <line stroke="#70EDC2EC" stroke-width="5dp" stroke-linecap="butt"/>
                    </rule>
                </rule>

                <rule e="way" k="contour_ext" v="elevation_major" zoom-min="13" zoom-max="15">
                    <line stroke="#DDA86868" stroke-width="0.13dp" stroke-linecap="butt" curve="cubic"/>
                </rule>
                <rule e="way" k="contour_ext" v="elevation_major" zoom-min="16">
                    <line stroke="#DDA86868" stroke-width="0.15dp" stroke-linecap="butt" curve="cubic"/>
                </rule>
                <rule e="way" k="contour_ext" v="elevation_medium" zoom-min="13" zoom-max="15">
                    <line stroke="#DDC27878" stroke-width="0.13dp" stroke-linecap="butt" curve="cubic"/>
                </rule>
                <rule e="way" k="contour_ext" v="elevation_medium" zoom-min="16">
                    <line stroke="#DDC27878" stroke-width="0.13dp" stroke-linecap="butt" curve="cubic"/>
                </rule>

                <rule e="way" k="contour_ext" v="elevation_minor" zoom-min="14" zoom-max="15">
                    <line stroke="#DDDB8888" stroke-width="0.08dp" stroke-linecap="butt" curve="cubic"/>
                </rule>
                <rule e="way" k="contour_ext" v="elevation_minor" zoom-min="16">
                    <line stroke="#DDDB8888" stroke-width="0.10dp" stroke-linecap="butt" curve="cubic"/>
                </rule>

                <!-- tunnel -->
                <rule e="way" k="tunnel" v="true|yes" zoom-min="12">
                    <!-- highway tunnels -->
                    <rule e="way" k="highway" v="*">
                        <!-- highway tunnel casings -->
                        <rule e="way" k="highway" v="steps|footway|path">
                            <line stroke="#707070" stroke-width="0.6dp" stroke-dasharray="5,5" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="highway" v="track|cycleway|bridleway|service" zoom-min="12">
                            <line stroke="#707070" stroke-width="1.0dp" stroke-dasharray="5,5" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="highway" v="construction">
                            <line stroke="#707070" stroke-width="1.1dp" stroke-dasharray="5,5" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="highway" v="road">
                            <line stroke="#707070" stroke-width="1.3dp" stroke-dasharray="5,5" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="highway" v="pedestrian|unclassified|residential|living_street|byway">
                            <line stroke="#707070" stroke-width="1.5dp" stroke-dasharray="5,5" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="highway" v="tertiary|secondary_link|primary_link|trunk_link|motorway_link|secondary|primary|trunk">
                            <line stroke="#707070" stroke-width="1.8dp" stroke-dasharray="5,5" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="highway" v="motorway">
                            <line stroke="#707070" stroke-width="2.0dp" stroke-dasharray="5,5" stroke-linecap="butt"/>
                        </rule>
                        <!-- highway tunnel cores -->
                        <rule e="way" k="highway" v="steps|footway|path">
                            <line stroke="#ffffff" stroke-width="0.45dp" stroke-dasharray="5,5" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="highway" v="track">
                            <line stroke="#ffffff" stroke-width="0.7dp" stroke-dasharray="5,5" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="highway" v="cycleway|bridleway|service" zoom-min="12">
                            <line stroke="#ffffff" stroke-width="0.85dp" stroke-dasharray="5,5" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="highway" v="construction">
                            <line stroke="#ffffff" stroke-width="1.0dp" stroke-dasharray="5,5" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="highway" v="road">
                            <line stroke="#ffffff" stroke-width="1.25dp" stroke-dasharray="5,5" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="highway" v="pedestrian|unclassified|residential|living_street|byway">
                            <line stroke="#ffffff" stroke-width="1.35dp" stroke-dasharray="5,5" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="highway" v="tertiary|secondary_link|primary_link|trunk_link|motorway_link|secondary|primary|trunk">
                            <line stroke="#ffffff" stroke-width="1.5dp" stroke-dasharray="5,5" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="highway" v="motorway">
                            <line stroke="#ffffff" stroke-width="1.7dp" stroke-dasharray="5,5" stroke-linecap="butt"/>
                        </rule>
                    </rule>
                    <!-- railway tunnel -->
                    <rule e="way" k="railway" v="*">
                        <rule e="way" k="railway" v="tram|subway|light_rail|narrow_gauge">
                            <line stroke="#880f0f4c" stroke-width="0.25dp" stroke-dasharray="4,4" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="railway" v="rail">
                            <line stroke="#aa333333" stroke-width="0.4dp" stroke-dasharray="4,4" stroke-linecap="butt"/>
                        </rule>
                    </rule>
                </rule>
                <!-- waterways -->
                <rule e="way" k="waterway" v="*">
                    <!-- waterway casings -->
                    <rule e="way" k="waterway" v="drain" zoom-min="13">
                        <rule e="way" k="tunnel" v="yes|culvert">
                            <line stroke="#647FC5" stroke-dasharray="5,5" stroke-width="1.0dp"/>
                        </rule>
                        <rule e="way" k="tunnel" v="~|no">
                            <line stroke="#647FC5" stroke-width="1.0dp"/>
                        </rule>
                    </rule>
                    <rule e="way" k="waterway" v="canal" zoom-min="13">
                        <line stroke="#647FC5" stroke-width="1.0dp"/>
                    </rule>
                    <!-- waterway cores -->
                    <rule e="way" k="waterway" v="ditch">
                        <line stroke="#8DB0DD" stroke-width="0.1dp" zoom-min="13"/>
                        <rule e="way" k="*" v="*" zoom-min="16">
                            <lineSymbol src="file:/symbols/waterflow.svg" align-center="true" repeat="true" symbol-width="7dp" repeat-gap="50dp"/>
                        </rule>
                    </rule>
                    <rule e="way" k="waterway" v="drain">
                        <line stroke="#8DB0DD" stroke-width="0.8dp" zoom-min="13"/>
                        <rule e="way" k="*" v="*" zoom-min="16">
                            <lineSymbol src="file:/symbols/waterflow.svg" align-center="true" repeat="true" symbol-width="7dp" repeat-gap="50dp"/>
                        </rule>
                    </rule>
                    <rule e="way" k="waterway" v="canal">
                        <line stroke="#8DB0DD" stroke-width="0.8dp" zoom-min="13"/>
                        <rule e="way" k="*" v="*" zoom-min="16">
                            <lineSymbol src="file:/symbols/waterflow.svg" align-center="true" repeat="true" symbol-width="7dp" repeat-gap="50dp"/>
                        </rule>
                    </rule>
                    <rule e="way" k="waterway" v="stream" zoom-min="14">
                        <pathText k="name" font-style="bold_italic" font-size="8dp" fill="#8DB0DD" stroke="#ffffff" stroke-width="2dp"/>
                        <rule e="way" k="tunnel" v="yes|culvert">
                            <line stroke="#8DB0DD" stroke-dasharray="5,15" stroke-width="0.3dp"/>
                        </rule>
                        <rule e="way" k="tunnel" v="~|no">
                            <line stroke="#8DB0DD" stroke-width="0.3dp"/>
                        </rule>
                        <rule e="way" k="*" v="*" zoom-min="15">
                            <lineSymbol src="file:/symbols/waterflow.svg" align-center="true" repeat="true" symbol-width="7dp" repeat-gap="50dp"/>
                        </rule>
                    </rule>
                    <rule e="way" k="waterway" v="river">
                        <pathText k="name" font-style="bold_italic" font-size="9dp" fill="#8DB0DD" stroke="#ffffff" stroke-width="2.6dp"/>
                        <rule e="way" k="tunnel" v="yes|culvert">
                            <line stroke="#8DB0DD" stroke-dasharray="5,15" stroke-width="1.0dp"/>
                        </rule>
                        <rule e="way" k="tunnel" v="~|no">
                            <line stroke="#8DB0DD" stroke-width="1.5dp"/>
                        </rule>
                        <rule e="way" k="*" v="*" zoom-min="13">
                            <lineSymbol src="file:/symbols/waterflow.svg" align-center="true" repeat="true" symbol-width="7dp" scale-icon-size="16,1.1" repeat-gap="50dp"/>
                        </rule>
                    </rule>
                    <rule e="way" k="waterway" v="dock">
                        <area fill="#b5d6f1"/>
                    </rule>
                    <rule e="way" k="waterway" v="riverbank">
                        <area fill="#8DB0DD"/>
                    </rule>
                    <rule e="way" k="waterway" v="weir">
                        <line stroke="#000044" stroke-width="0.375dp"/>
                    </rule>
                    <rule e="way" k="waterway" v="dam">
                        <line stroke="#000000" stroke-width="0.5dp"/>
                    </rule>
                    <rule e="way" k="lock" v="yes|true">
                        <line stroke="#000000" stroke-width="2.0dp" stroke-linecap="butt"/>
                        <line stroke="#f8f8f8" stroke-width="1.5dp" stroke-linecap="butt"/>
                    </rule>
                </rule>
                <!-- military -->
                <rule e="way" k="military" v="*">
                    <area src="file:/patterns/military.png" stroke="#e4e4e4" stroke-width="0.2dp"/>
                </rule>
                <!-- historic -->
                <rule e="any" k="historic" v="ruins" zoom-min="16">
                    <symbol src="file:/symbols/ruins.png" symbol-width="16dp"/>
                    <caption dy="12dp" k="name" font-style="bold" font-size="10dp" fill="#000000" stroke="#ffffff" stroke-width="2dp"/>
                </rule>
                <rule e="any" k="ruins" v="yes" zoom-min="16">
                    <symbol src="file:/symbols/ruins.png" symbol-width="16dp"/>
                    <caption dy="12dp" k="name" font-style="bold" font-size="10dp" fill="#000000" stroke="#ffffff" stroke-width="2dp"/>
                </rule>
                <rule e="any" k="historic" v="castle" zoom-min="15">
                    <rule e="any" k="ruins" v="~" zoom-min="15">
                        <caption k="name" dy="12dp" font-style="bold" font-family="serif" font-size="10dp" fill="#760000" stroke="#ffffff" stroke-width="2dp"/>
                    </rule>
                </rule>
                <!-- sport -->
                <rule e="way" k="sport" v="*">
                    <rule e="way" k="sport" v="soccer" zoom-min="17">
                        <symbol src="file:/symbols/soccer-borderless.png"/>
                    </rule>
                    <rule e="way" k="sport" v="swimming|canoe|diving|scuba_diving">
                        <area fill="#b5d6f1" stroke="#6060ff" stroke-width="0.2dp"/>
                    </rule>
                    <rule e="way" k="sport" v="tennis">
                        <area fill="#d18a6a" stroke="#b36c4c" stroke-width="0.2dp"/>
                        <rule e="way" k="*" v="*" zoom-min="17">
                            <symbol src="file:/symbols/tennis.png"/>
                        </rule>
                    </rule>
                </rule>
                <!-- tourism areas -->
                <rule e="way" k="tourism" v="*">
                    <rule e="way" k="tourism" v="attraction">
                        <area fill="#F2CAEA"/>
                    </rule>
                    <rule e="way" k="tourism" v="zoo|picnic_site|caravan_site|camp_site">
                        <area fill="#90c7f1a3" stroke="#6fc18e" stroke-width="0.2dp"/>
                    </rule>
                    <rule e="way" k="*" v="*" zoom-min="16">
                        <caption k="name" font-style="bold" font-size="10dp" fill="#4040ff" stroke="#ffffff" stroke-width="2.0dp"/>
                    </rule>
                </rule>
                <rule e="way" k="natural" v="water">
                    <area fill="#8DB0DD"/>
                    <rule e="way" k="*" v="*" zoom-min="13">
                        <caption k="name" font-style="bold_italic" font-size="8dp" fill="#4040ff" stroke="#ffffff" stroke-width="2dp"/>
                    </rule>
                </rule>

                <!-- highway area -->
                <rule e="way" k="area" v="yes|true">
                    <rule e="way" k="highway" v="*">
                        <rule e="way" k="highway" v="footway|footpath" zoom-min="12">
                            <area fill="#e5e0c2" stroke="#707070" stroke-width="0.15dp"/>
                        </rule>
                        <rule e="way" k="highway" v="pedestrian" zoom-min="11">
                            <area fill="#e5e0c2" stroke="#707070" stroke-width="0.15dp"/>
                        </rule>
                        <rule e="way" k="highway" v="path" zoom-min="12">
                            <area fill="#d0d0d0" stroke="#d0d0d0" stroke-width="0.45dp"/>
                        </rule>
                        <rule e="way" k="highway" v="service" zoom-min="12">
                            <area fill="#ffffff" stroke="#707070" stroke-width="0.15dp"/>
                        </rule>
                        <rule e="way" k="highway" v="unclassified" zoom-min="11">
                            <area fill="#ffffff" stroke="#707070" stroke-width="0.3dp"/>
                        </rule>
                        <rule e="way" k="highway" v="residential" zoom-min="11">
                            <area fill="#ffffff" stroke="#707070" stroke-width="0.15dp"/>
                        </rule>
                        <rule e="way" k="highway" v="road" zoom-min="11">
                            <area fill="#d0d0d0"/>
                        </rule>
                        <rule e="way" k="highway" v="living_street" zoom-min="11">
                            <area fill="#ffffff" stroke="#ffffff" stroke-width="0.15dp"/>
                        </rule>
                    </rule>
                </rule>
                <!-- platform cores -->
                <rule e="way" k="highway|railway|public_transport" v="platform">
                    <rule e="way" k="*" v="*" closed="yes">
                        <area fill="#9b9b79"/>
                    </rule>
                    <rule e="way" k="*" v="*" closed="no">
                        <line stroke="#9b9b79" stroke-width="0.3dp"/>
                    </rule>
                </rule>
                <!-- runways casings and areas -->
                <rule e="way" k="aeroway" v="*" zoom-min="11">
                    <rule e="way" k="aeroway" v="aerodrome" closed="yes">
                        <area fill="#d8dcce" stroke="#000000" stroke-width="0.5dp"/>
                    </rule>
                    <rule e="way" k="aeroway" v="apron">
                        <area fill="#f0f0f0"/>
                    </rule>
                    <rule e="way" k="aeroway" v="terminal">
                        <area fill="#f3d6b6" stroke="#6a5a8e" stroke-width="0.2dp"/>
                    </rule>
                    <rule e="way" k="aeroway" v="runway">
                        <line stroke="#000000" stroke-width="7dp" stroke-linecap="square"/>
                    </rule>
                    <rule e="way" k="aeroway" v="taxiway">
                        <line stroke="#000000" stroke-width="3dp" stroke-linecap="butt"/>
                    </rule>
                    <rule e="way" k="*" v="*" zoom-min="16">
                        <caption k="name" font-style="bold" font-size="9dp" fill="#4040ff" stroke="#ffffff" stroke-width="2.0dp"/>
                    </rule>
                </rule>
            </rule>
            <!-- turning circles -->
            <rule e="node" k="highway" v="turning_circle">
                <circle r="1.5" scale-radius="true" fill="#707070"/>
            </rule>
            <!-- ways -->
            <rule e="way" k="*" v="*">
                <!-- no tunnel -->
                <rule e="way" k="tunnel" v="~|no|false">
                    <!-- no area -->
                    <rule e="way" k="area" v="~|no|false">
                        <!-- highway -->
                        <rule e="way" k="highway" v="*">
                            <!-- no bridge -->
                            <rule e="way" k="bridge" v="~|no|false">
                                <!-- highway casings -->
                                <rule e="way" k="highway" v="steps" zoom-min="14">
                                    <line stroke="#707070" stroke-width="0.6dp"/>
                                </rule>
                                <rule e="way" k="highway" v="footway|path" zoom-min="13">
                                    <line stroke="#c2b5a3" stroke-width="0.4dp"/>
                                </rule>
                                <rule e="way" k="highway" v="track" zoom-min="13">
                                    <line stroke="#c2b5a3" stroke-width="0.7dp"/>
                                </rule>
                                <rule e="way" k="highway" v="cycleway|bridleway|service" zoom-min="12">
                                    <line stroke="#707070" stroke-width="0.7dp"/>
                                </rule>
                                <rule e="way" k="highway" v="byway" zoom-min="12">
                                    <line stroke="#707070" stroke-width="1.5dp" stroke-dasharray="7,2" stroke-linecap="butt"/>
                                </rule>
                                <rule e="way" k="highway" v="pedestrian|unclassified|residential|living_street" zoom-min="12">
                                    <line stroke="#707070" stroke-width="0.9dp"/>
                                </rule>
                                <rule e="way" k="highway" v="tertiary|secondary_link|secondary" zoom-min="10">
                                    <line stroke="#707070" stroke-width="1.1dp" stroke-linecap="butt"/>
                                </rule>
                                <rule e="way" k="highway" v="primary_link|primary">
                                    <line stroke="#707070" stroke-width="1.2dp" stroke-linecap="butt"/>
                                </rule>
                                <rule e="way" k="highway" v="trunk_link">
                                    <line stroke="#7fc97f" stroke-width="0.8dp" stroke-linecap="butt"/>
                                </rule>
                                <rule e="way" k="highway" v="trunk">
                                    <line stroke="#7fc97f" stroke-width="1.8dp" stroke-linecap="butt"/>
                                </rule>
                                <rule e="way" k="highway" v="motorway_link">
                                    <line stroke="#ff0000" stroke-width="0.8dp" stroke-linecap="butt"/>
                                </rule>
                                <rule e="way" k="highway" v="motorway">
                                    <line stroke="#ff0000" stroke-width="2dp" stroke-linecap="butt"/>
                                </rule>

                            </rule>
                            <!-- bridge -->
                            <rule e="way" k="bridge" v="yes|true" zoom-min="15">
                                <!-- highway casings -->
                                <rule e="way" k="highway" v="steps|footway|path">
                                    <line stroke="#000000" stroke-width="0.5dp" stroke-linecap="butt"/>
                                </rule>
                                <rule e="way" k="highway" v="track|cycleway|bridleway|service">
                                    <line stroke="#000000" stroke-width="0.6dp" stroke-linecap="butt"/>
                                </rule>
                                <rule e="way" k="highway" v="construction">
                                    <line stroke="#000000" stroke-width="0.6dp" stroke-linecap="butt"/>
                                </rule>
                                <rule e="way" k="highway" v="road">
                                    <line stroke="#000000" stroke-width="0.6dp" stroke-linecap="butt"/>
                                </rule>
                                <rule e="way" k="highway" v="pedestrian|unclassified|residential|living_street|byway">
                                    <line stroke="#000000" stroke-width="0.7dp" stroke-linecap="butt"/>
                                </rule>
                                <rule e="way" k="highway" v="secondary|secondary_link|tertiary">
                                    <line stroke="#000000" stroke-width="1.3dp" stroke-linecap="butt"/>
                                </rule>
                                <rule e="way" k="highway" v="primary|primary_link">
                                    <line stroke="#000000" stroke-width="1.4dp" stroke-linecap="butt"/>
                                </rule>
                                <rule e="way" k="highway" v="trunk_link|motorway_link">
                                    <line stroke="#000000" stroke-width="1.2dp" stroke-linecap="butt"/>
                                </rule>
                                <rule e="way" k="highway" v="trunk|motorway">
                                    <line stroke="#000000" stroke-width="2.2dp" stroke-linecap="butt"/>
                                </rule>
                            </rule>
                        </rule>
                    </rule>
                </rule>
                <!-- building -->
                <rule e="way" k="building" v="*" zoom-min="14">
                    <area fill="#CBCBCB" stroke="#8F8F8F" stroke-width="0.2dp"/>
                </rule>
                <rule e="way" k="highway" v="*">
                    <!-- no tunnel -->
                    <rule e="way" k="tunnel" v="~|no|false">
                        <!-- no area -->
                        <rule e="way" k="area" v="~|no|false">
                            <!-- highway cores -->
                            <rule e="way" k="highway" v="steps" zoom-min="14">
                                <line stroke="#e5e0c2" stroke-width="0.45dp" stroke-dasharray="3,1" stroke-linecap="butt"/>
                                <rule e="way" k="*" v="*" zoom-min="15">
                                    <pathText k="name" font-style="bold" font-size="10dp" stroke="#e5e0c2" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="footway" zoom-min="13">
                                <line stroke="#e5e0c2" stroke-width="0.4dp"/>
                                <rule e="way" k="*" v="*" zoom-min="15">
                                    <pathText k="name" font-style="bold" font-size="10dp" stroke="#e5e0c2" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="path" zoom-min="13">
                                <line stroke="#6A5B47" stroke-width="0.3dp" stroke-dasharray="5,5" stroke-linecap="butt"/>
                                <rule e="way" k="*" v="*" zoom-min="15">
                                    <pathText k="name" font-style="bold" font-size="10dp" stroke="#d0d0d0" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="track" zoom-min="11">
                                <rule e="way" k="tracktype" v="grade1">
                                    <line stroke="#6A5B47" stroke-width="0.5dp"/>
                                    <rule e="way" k="*" v="*" zoom-min="15">
                                        <pathText k="name" font-style="bold" font-size="10dp" stroke="#fffaf2" stroke-width="2.0dp"/>
                                    </rule>
                                </rule>
                                <rule e="way" k="tracktype" v="grade2">
                                    <line stroke="#6A5B47" stroke-width="0.5dp" stroke-dasharray="18,4" stroke-linecap="butt"/>
                                    <rule e="way" k="*" v="*" zoom-min="15">
                                        <pathText k="name" font-style="bold" font-size="10dp" stroke="#fff2de" stroke-width="2.0dp"/>
                                    </rule>
                                </rule>
                                <rule e="way" k="tracktype" v="grade3">
                                    <line stroke="#6A5B47" stroke-width="0.5dp" stroke-dasharray="12,8" stroke-linecap="butt"/>
                                    <rule e="way" k="*" v="*" zoom-min="15">
                                        <pathText k="name" font-style="bold" font-size="10dp" stroke="#fff2de" stroke-width="2.0dp"/>
                                    </rule>
                                </rule>
                                <rule e="way" k="tracktype" v="grade4">
                                    <line stroke="#6A5B47" stroke-width="0.5dp" stroke-dasharray="8,12" stroke-linecap="butt"/>
                                    <rule e="way" k="*" v="*" zoom-min="15">
                                        <pathText k="name" font-style="bold" font-size="10dp" stroke="#fff2de" stroke-width="2.0dp"/>
                                    </rule>
                                </rule>
                                <rule e="way" k="tracktype" v="grade5">
                                    <line stroke="#6A5B47" stroke-width="0.5dp" stroke-dasharray="4,16" stroke-linecap="butt"/>
                                    <rule e="way" k="*" v="*" zoom-min="15">
                                        <pathText k="name" font-style="bold" font-size="10dp" stroke="#fff2de" stroke-width="2.0dp"/>
                                    </rule>
                                </rule>
                                <rule e="way" k="tracktype" v="~|no|false">
                                    <line stroke="#6A5B47" stroke-width="0.5dp" stroke-dasharray="18,4,8,12" stroke-linecap="butt"/>
                                    <rule e="way" k="*" v="*" zoom-min="15">
                                        <pathText k="name" font-style="bold" font-size="10dp" stroke="#fff2de" stroke-width="2.0dp"/>
                                    </rule>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="cycleway" zoom-min="11">
                                <line stroke="#d1fad1" stroke-width="0.85dp"/>
                                <rule e="way" k="*" v="*" zoom-min="15">
                                    <pathText k="name" font-style="bold" font-size="10dp" stroke="#d1fad1" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="bridleway" zoom-min="11">
                                <line stroke="#d3cb98" stroke-width="0.85dp"/>
                                <rule e="way" k="*" v="*" zoom-min="15">
                                    <pathText k="name" font-style="bold" font-size="10dp" stroke="#d3cb98" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="service" zoom-min="12">
                                <line stroke="#F0F0F0" stroke-width="0.45dp"/>
                                <rule e="way" k="*" v="*" zoom-min="15">
                                    <pathText k="name" font-style="bold" font-size="10dp" stroke="#ffffff" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="construction">
                                <line stroke="#d0d0d0" stroke-width="1.0dp"/>
                                <rule e="way" k="*" v="*" zoom-min="15">
                                    <pathText k="name" font-style="bold" font-size="10dp" stroke="#d0d0d0" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="road" zoom-min="11">
                                <line stroke="#d0d0d0" stroke-width="1.25dp"/>
                                <rule e="way" k="*" v="*" zoom-min="15">
                                    <pathText k="name" font-style="bold" font-size="10dp" stroke="#d0d0d0" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="pedestrian" zoom-min="11">
                                <line stroke="#e5e0c2" stroke-width="1.35dp"/>
                                <rule e="way" k="*" v="*" zoom-min="15">
                                    <pathText k="name" font-style="bold" font-size="11dp" stroke="#e5e0c2" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="unclassified|residential|living_street" zoom-min="11">
                                <line stroke="#F8F8F8" stroke-width="0.75dp"/>
                                <rule e="way" k="*" v="*" zoom-min="15">
                                    <pathText k="name" font-style="bold" font-size="10dp" stroke="#ffffff" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="byway" zoom-min="11">
                                <line stroke="#efadaa" stroke-width="1.35dp"/>
                                <rule e="way" k="*" v="*" zoom-min="15">
                                    <pathText k="name" font-style="bold" font-size="10dp" stroke="#efadaa" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="tertiary" zoom-min="9">
                                <line stroke="#FEF9B9" stroke-width="0.9dp"/>
                                <rule e="way" k="*" v="*" zoom-min="15">
                                    <caption k="ref" font-style="bold" font-size="6dp" fill="#000000" stroke="#ffff90" stroke-width="1dp" bg-rect-fill="#ffff90" bg-rect-over="2dp"/>
                                    <pathText k="name" font-style="bold" font-size="10dp" stroke="#ffff90" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="secondary_link">
                                <line stroke="#FDBF6F" stroke-width="0.9dp"/>
                                <rule e="way" k="*" v="*" zoom-min="14">
                                    <pathText k="name" font-style="bold" font-size="10dp" stroke="#fdbf6f" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="secondary">
                                <line stroke="#FDBF6F" stroke-width="0.9dp"/>
                                <rule e="way" k="*" v="*" zoom-min="14">
                                    <caption k="ref" font-style="bold" scale-font-size="17,1.1" font-size="6dp" stroke="#fdbf6f" stroke-width="1dp" bg-rect-fill="#fdbf6f" bg-rect-over="2dp"/>
                                    <pathText k="name" font-style="bold" font-size="11dp" stroke="#fdbf6f" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="primary_link">
                                <line stroke="#FF9988" stroke-width="1dp"/>
                                <rule e="way" k="*" v="*" zoom-min="14">
                                    <pathText k="name" font-style="bold" font-size="10dp" stroke="#e46d71" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="primary">
                                <line stroke="#FF9988" stroke-width="1dp"/>
                                <rule e="way" k="*" v="*" zoom-min="14">
                                    <caption k="ref" font-style="bold" scale-font-size="17,1.1" font-size="6dp" fill="#ffffff" bg-rect-fill="#e46d71" bg-rect-over="2dp"/>
                                    <pathText k="name" font-style="bold" font-size="11dp" stroke="#ffffff" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="trunk_link">
                                <line stroke="#FFFF00" stroke-width="1.5dp"/>
                                <rule e="way" k="*" v="*" zoom-min="14">
                                    <pathText k="name" font-style="bold" font-size="11dp" stroke="#7fc97f" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="trunk">
                                <line stroke="#FFFF00" stroke-width="1.5dp"/>
                                <rule e="way" k="*" v="*" zoom-min="11">
                                    <caption k="ref" font-style="bold" scale-font-size="17,1.2" font-size="7dp" fill="#FFFFFF" stroke="#000000" stroke-width="1dp" bg-rect-fill="#7fc97f" bg-rect-over="3" bg-rect-rounded="2"/>
                                </rule>
                                <rule e="way" k="*" v="*" zoom-min="14">
                                    <pathText k="name" font-style="bold" font-size="11dp" stroke="#7fc97f" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="motorway_link">
                                <line stroke="#FFFF00" stroke-width="1.5dp"/>
                                <rule e="way" k="*" v="*" zoom-min="14">
                                    <pathText k="name" font-style="bold" font-size="11dp" stroke="#809bc0" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="motorway">
                                <line stroke="#FFFF00" stroke-width="1.6dp"/>
                                <rule e="way" k="*" v="*" zoom-min="11">
                                    <caption k="ref" font-style="bold" scale-font-size="17,1.2" font-size="7dp" fill="#FFFFFF" stroke="#000000" stroke-width="1dp" bg-rect-fill="#809bc0" bg-rect-over="3" bg-rect-rounded="2"/>
                                </rule>
                                <rule e="way" k="*" v="*" zoom-min="14">
                                    <pathText k="name" font-style="bold" font-size="11dp" stroke="#809bc0" stroke-width="2.0dp"/>
                                </rule>
                            </rule>
                            <rule e="way" k="highway" v="*" zoom-min="16">
                                <rule e="way" k="access" v="destination">
                                    <line src="file:/patterns/access-destination.png" stroke-width="1.5dp"/>
                                </rule>
                                <rule e="way" k="access" v="private">
                                    <line src="file:/patterns/access-private.png" stroke-width="1.5dp"/>
                                </rule>
                            </rule>
                        </rule>
                    </rule>
                </rule>
                <!-- runways cores -->
                <rule e="way" k="aeroway" v="*" zoom-min="11">
                    <rule e="way" k="aeroway" v="runway">
                        <line stroke="#d4dcbd" stroke-width="5dp" stroke-linecap="square"/>
                    </rule>
                    <rule e="way" k="aeroway" v="taxiway">
                        <line stroke="#d4dcbd" stroke-width="2dp" stroke-linecap="butt"/>
                    </rule>
                </rule>
                <!-- man_made features -->
                <rule e="way" k="man_made" v="pier">
                    <rule e="way" k="*" v="*" closed="no">
                        <line stroke="#d0d0d0" stroke-width="0.4dp" stroke-linecap="butt"/>
                        <line stroke="#e4e4e4" stroke-width="0.3dp" stroke-linecap="butt"/>
                    </rule>
                    <rule e="way" k="*" v="*" closed="yes">
                        <area fill="#e4e4e4" stroke="#d0d0d0" stroke-width="0.05dp"/>
                    </rule>
                </rule>
                <!-- barriers -->
                <rule e="way" k="barrier" v="*">
                    <rule e="way" k="barrier" v="fence|wall|city_wall">
                        <line stroke="#000000" stroke-width="0.1dp" stroke-linecap="butt"/>
                        <lineSymbol src="file:/symbols/fence.svg" align-center="true" repeat="true" symbol-width="8dp" repeat-gap="8dp" scale-icon-size="14,1.1"/>
                    </rule>
                    <rule e="way" k="barrier" v="retaining_wall">
                        <line stroke="#888888" stroke-width="0.1dp" stroke-linecap="butt"/>
                    </rule>
                </rule>
                <!-- non-physical routes -->
                <rule e="way" k="route" v="ferry">
                    <line stroke="#707070" stroke-width="0.3dp" stroke-dasharray="15,10" stroke-linecap="butt"/>
                </rule>
                <!-- highway one-way markers -->
                <rule e="way" k="area" v="~|false|no">
                    <rule e="way" k="highway" v="*">
                        <rule e="way" k="oneway" v="yes|true" zoom-min="16">
                            <lineSymbol src="file:/symbols/oneway.svg" align-center="true" repeat="true" symbol-width="16dp"/>
                        </rule>
                        <rule e="way" k="junction" v="roundabout" zoom-min="16">
                            <lineSymbol src="file:/symbols/oneway.svg" align-center="true" repeat="true" symbol-width="16dp" repeat-gap="16dp"/>
                        </rule>
                    </rule>
                </rule>
                <!-- pistes -->
                <rule e="way" k="piste:type" v="*" zoom-min="11">
                    <!-- piste areas -->
                    <rule e="way" k="piste:type" v="downhill" closed="yes">
                        <rule e="way" k="piste:difficulty" v="novice">
                            <area fill="#5540ff40" stroke="#5540ff40" stroke-width="5.0dp"/>
                        </rule>
                        <rule e="way" k="piste:difficulty" v="easy">
                            <area fill="#554040ff" stroke="#554040ff" stroke-width="5.0dp"/>
                        </rule>
                        <rule e="way" k="piste:difficulty" v="intermediate">
                            <area fill="#55ff4040" stroke="#55ff4040" stroke-width="5.0dp"/>
                        </rule>
                        <rule e="way" k="piste:difficulty" v="advanced">
                            <area fill="#55000000" stroke="#55000000" stroke-width="5.0dp"/>
                        </rule>
                        <rule e="way" k="piste:difficulty" v="expert">
                            <area fill="#55f6800a" stroke="#55f6800a" stroke-width="5.0dp"/>
                        </rule>
                        <rule e="way" k="piste:difficulty" v="freeride">
                            <area fill="#55f6dd0a" stroke="#55f6dd0a" stroke-width="5.0dp"/>
                        </rule>
                        <rule e="way" k="piste:difficulty" v="~">
                            <area fill="#55505050" stroke="#55505050" stroke-width="5.0dp"/>
                        </rule>
                        <rule e="way" k="*" v="*" zoom-min="16">
                            <caption k="name" font-style="bold" font-size="10dp" fill="#000000" stroke="#ffffff" stroke-width="2.0dp"/>
                        </rule>
                    </rule>
                    <!-- piste ways -->
                    <rule e="way" k="piste:type" v="downhill" closed="no">
                        <rule e="way" k="piste:difficulty" v="novice">
                            <line stroke="#5540ff40" stroke-width="5.0dp"/>
                        </rule>
                        <rule e="way" k="piste:difficulty" v="easy">
                            <line stroke="#554040ff" stroke-width="5.0dp"/>
                        </rule>
                        <rule e="way" k="piste:difficulty" v="intermediate">
                            <line stroke="#55ff4040" stroke-width="5.0dp"/>
                        </rule>
                        <rule e="way" k="piste:difficulty" v="advanced">
                            <line stroke="#55000000" stroke-width="5.0dp"/>
                        </rule>
                        <rule e="way" k="piste:difficulty" v="expert">
                            <line stroke="#55f6800a" stroke-width="5.0dp"/>
                        </rule>
                        <rule e="way" k="piste:difficulty" v="freeride">
                            <line stroke="#55f6dd0a" stroke-width="5.0dp"/>
                        </rule>
                        <rule e="way" k="piste:difficulty" v="~">
                            <line stroke="#55505050" stroke-width="5.0dp"/>
                        </rule>
                        <rule e="way" k="*" v="*" zoom-min="14">
                            <pathText k="name" font-style="bold" font-size="10dp" fill="#000000" stroke="#ffffff" stroke-width="2.0dp"/>
                        </rule>
                    </rule>
                    <rule e="way" k="piste:type" v="sled">
                        <line stroke="#cdabde" stroke-width="2.5dp"/>
                    </rule>
                    <rule e="way" k="piste:type" v="nordic">
                        <line stroke="#c00000" stroke-width="1.0dp" stroke-dasharray="30,5" stroke-linecap="butt"/>
                    </rule>
                </rule>
                <!-- aerial ways -->
                <rule e="way" k="aerialway" v="*">
                    <line stroke="#202020" stroke-width="0.4dp" stroke-linecap="butt"/>
                    <line stroke="#202020" stroke-width="4.0dp" stroke-dasharray="2,200" stroke-linecap="butt"/>
                    <rule e="way" k="aerialway" v="cable_car">
                        <lineSymbol src="file:/symbols/cable_car.png"/>
                    </rule>
                    <rule e="way" k="aerialway" v="chair_lift">
                        <lineSymbol src="file:/symbols/chair_lift_2.png"/>
                    </rule>
                    <rule e="way" k="aerialway" v="gondola">
                        <lineSymbol src="file:/symbols/gondola.png"/>
                    </rule>
                    <rule e="way" k="*" v="*" zoom-min="14">
                        <pathText k="name" font-style="bold" font-size="10dp" fill="#606060" stroke="#ffffff" stroke-width="2.0dp"/>
                    </rule>
                </rule>
                <!-- railway (no tunnel) -->
                <rule e="way" k="railway" v="*">
                    <rule e="way" k="tunnel" v="~|false|no">
                        <rule e="way" k="railway" v="station">
                            <area fill="#9b9b79" stroke="#707070" stroke-width="0.3dp"/>
                        </rule>
                        <!-- railway bridge casings -->
                        <rule e="way" k="bridge" v="yes|true">
                            <rule e="way" k="railway" v="tram">
                                <line stroke="#000000" stroke-width="0.4dp" stroke-linecap="butt"/>
                            </rule>
                            <rule e="way" k="railway" v="subway|light_rail|narrow_gauge">
                                <line stroke="#000000" stroke-width="0.6dp" stroke-linecap="butt"/>
                            </rule>
                            <rule e="way" k="railway" v="rail">
                                <line stroke="#000000" stroke-width="0.8dp" stroke-linecap="butt"/>
                            </rule>
                        </rule>
                        <!-- railway casings and cores -->
                        <rule e="way" k="railway" v="tram">
                            <line stroke="#e6b7e6" stroke-width="0.25dp" stroke-linecap="butt"/>
                            <line stroke="#4c0f4c" stroke-width="0.25dp" stroke-dasharray="12,18" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="railway" v="subway">
                            <line stroke="#0f0f4c" stroke-width="0.4dp" stroke-linecap="butt"/>
                            <line stroke="#b7b7e6" stroke-width="0.25dp" stroke-dasharray="12,18" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="railway" v="light_rail">
                            <line stroke="#0f4c0f" stroke-width="0.4dp" stroke-linecap="butt"/>
                            <line stroke="#b7e6e6" stroke-width="0.25dp" stroke-linecap="butt"/>
                            <line stroke="#0f4c0f" stroke-width="0.25dp" stroke-dasharray="12,18" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="railway" v="narrow_gauge">
                            <line stroke="#333333" stroke-width="0.4dp" stroke-linecap="butt"/>
                            <line stroke="#e6e6e6" stroke-width="0.25dp" stroke-linecap="butt"/>
                            <line stroke="#333333" stroke-width="0.25dp" stroke-dasharray="18,18" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="railway" v="rail" zoom-max="16">
                            <line stroke="#333333" stroke-width="0.55dp" stroke-linecap="butt"/>
                            <line stroke="#e6e6e6" stroke-width="0.4dp" stroke-linecap="butt"/>
                            <line stroke="#333333" stroke-width="0.4dp" stroke-dasharray="15,15" stroke-linecap="butt"/>
                        </rule>
                        <rule e="way" k="railway" v="rail" zoom-min="17">
                            <line stroke="#333333" stroke-width="0.35dp" stroke-linecap="butt"/>
                            <line stroke="#e6e6e6" stroke-width="0.25dp" stroke-linecap="butt"/>
                            <line stroke="#333333" stroke-width="0.25dp" stroke-dasharray="25,25" stroke-linecap="butt"/>
                        </rule>
                    </rule>
                </rule>
                <!-- non-physical boundaries -->
                <rule e="way" k="boundary" v="protected_area">
                    <rule e="way" k="protect_class" v="2|5">
                        <line stroke="#404ef94b" stroke-width="2.4dp" stroke-dasharray="15,5,5,5"/>
                        <rule e="way" k="*" v="*" zoom-min="14">
                            <pathText k="name" font-style="bold" font-size="15dp" fill="#12D51C" stroke="#ffffff" stroke-width="4.0dp"/>
                        </rule>
                    </rule>
                    <rule e="way" k="protect_class" v="1|3|4">
                        <line stroke="#404ef94b" stroke-width="1.8dp" stroke-dasharray="10,5,10,5"/>
                        <rule e="way" k="*" v="*" zoom-min="14">
                            <pathText k="name" font-style="bold" font-size="15dp" fill="#12D51C" stroke="#ffffff" stroke-width="4.0dp"/>
                        </rule>
                    </rule>
                </rule>
                <rule e="way" k="admin_level" v="*">
                    <rule e="way" k="admin_level" v="11">
                        <line stroke="#9A3996" stroke-width="0.1dp" stroke-dasharray="1,5"/>
                    </rule>
                    <rule e="way" k="admin_level" v="10">
                        <line stroke="#9A3996" stroke-width="0.1dp" stroke-dasharray="5,25"/>
                    </rule>
                    <rule e="way" k="admin_level" v="9">
                        <line stroke="#9A3996" stroke-width="0.1dp" stroke-dasharray="15,15"/>
                    </rule>
                    <rule e="way" k="admin_level" v="8">
                        <line stroke="#9A3996" stroke-width="0.1dp" stroke-dasharray="15, 5, 5, 5"/>
                    </rule>
                    <rule e="way" k="admin_level" v="7">
                        <line stroke="#9A3996" stroke-width="0.1dp"/>
                    </rule>
                    <rule e="way" k="admin_level" v="6">
                        <line stroke="#9A3996" stroke-width="0.25dp" stroke-dasharray="5, 5"/>
                    </rule>
                    <rule e="way" k="admin_level" v="5">
                        <line stroke="#9A3996" stroke-width="0.25dp" stroke-dasharray="15, 15"/>
                    </rule>
                    <rule e="way" k="admin_level" v="4">
                        <line stroke="#9A3996" stroke-width="0.25dp" stroke-dasharray="15, 5, 5, 5"/>
                    </rule>
                    <rule e="way" k="admin_level" v="3">
                        <line stroke="#9A3996" stroke-width="0.25dp"/>
                    </rule>
                    <rule e="way" k="admin_level" v="2">
                        <line stroke="#9A3996" stroke-width="0.25dp" stroke-dasharray="15, 15"/>
                    </rule>
                    <rule e="way" k="admin_level" v="1">
                        <line stroke="#9A3996" stroke-width="0.25dp" stroke-dasharray="15, 5, 5, 5"/>
                    </rule>
                </rule>
            </rule>

            <rule e="way" k="addr:housenumber" v="*" zoom-min="18">
                <caption k="addr:housenumber" font-style="bold" font-size="8dp" fill="#606060" stroke="#ffffff" stroke-width="2.0dp"/>
            </rule>
            <!-- nodes -->
            <rule e="node" k="*" v="*">
                <rule e="node" k="tourism" v="information">
                    <rule e="node" k="information" v="guidepost" zoom-min="13">
                        <rule e="node" k="bicycle" v="yes" zoom-min="13" zoom-max="13" style="cycle">
                            <caption dy="-8dp" k="name" font-style="bold" force-draw="1" font-size="8dp" fill="#000000" stroke="#90ffffff" stroke-width="2dp"/>
                            <symbol src="file:/symbols/guidepost_cycle.svg" force-draw="1" symbol-width="12dp"/>
                        </rule>
                        <rule e="node" k="bicycle" v="yes" zoom-min="14" style="cycle">
                            <caption dy="-11dp" k="name" font-style="bold" force-draw="1" font-size="10dp" fill="#000000" stroke="#90ffffff" stroke-width="3dp"/>
                            <caption dy="18dp" k="ele" font-style="normal" force-draw="1" font-size="10dp" fill="#000000" stroke="#90ffffff" stroke-width="3dp"/>
                            <symbol src="file:/symbols/guidepost_cycle.svg" force-draw="1" symbol-width="18dp"/>
                        </rule>
                        <rule e="node" k="bicycle" v="~" zoom-min="14" style="cycle">
                            <caption dy="-8dp" k="name" font-style="bold" font-size="8dp" fill="#000000" stroke="#90ffffff" stroke-width="2dp"/>
                            <caption dy="15dp" k="ele" font-style="normal" font-size="8dp" fill="#000000" stroke="#90ffffff" stroke-width="2dp"/>
                            <symbol src="file:/symbols/guidepost.svg" symbol-width="18dp"/>
                        </rule>
                        <rule e="node" k="hiking" v="yes" zoom-min="13" zoom-max="13" style="hiking">
                            <caption dy="-8dp" k="name" font-style="bold" force-draw="1" font-size="8dp" fill="#000000" stroke="#90ffffff" stroke-width="2dp"/>
                            <symbol src="file:/symbols/guidepost_hiking.svg" force-draw="1" symbol-width="12dp"/>
                        </rule>
                        <rule e="node" k="hiking" v="yes" zoom-min="14" style="hiking">
                            <caption dy="-11dp" k="name" font-style="bold" force-draw="1" font-size="10dp" fill="#000000" stroke="#90ffffff" stroke-width="3dp"/>
                            <caption dy="18dp" k="ele" font-style="normal" force-draw="1" font-size="10dp" fill="#000000" stroke="#90ffffff" stroke-width="3dp"/>
                            <symbol src="file:/symbols/guidepost_hiking.svg" force-draw="1" symbol-width="18dp"/>
                        </rule>
                        <rule e="node" k="hiking" v="~" zoom-min="14" style="hiking">
                            <caption dy="-8dp" k="name" font-style="bold" font-size="8dp" fill="#000000" stroke="#90ffffff" stroke-width="2dp"/>
                            <caption dy="15dp" k="ele" font-style="normal" font-size="8dp" fill="#000000" stroke="#90ffffff" stroke-width="2dp"/>
                            <symbol src="file:/symbols/guidepost.svg" symbol-width="18dp"/>
                        </rule>
                    </rule>
                </rule>
                <!-- aeroway -->
                <rule e="node" k="aeroway" v="*">
                    <rule e="node" k="aeroway" v="helipad" zoom-min="17">
                        <symbol src="file:/symbols/helipad.png"/>
                    </rule>
                    <rule e="node" k="aeroway" v="aerodrome|airport" zoom-max="13">
                        <symbol src="file:/symbols/airport.png"/>
                    </rule>
                </rule>
                <!-- amenity -->
                <rule e="node" k="amenity" v="*">
                    <rule e="node" k="amenity" v="atm" zoom-min="17">
                        <symbol src="file:/symbols/atm.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="bank" zoom-min="17">
                        <symbol src="file:/symbols/bank.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="bench" zoom-min="17">
                        <symbol src="file:/symbols/bench.svg" symbol-width="12dp" scale-icon-size="18,1.2"/>
                    </rule>
                    <rule e="node" k="amenity" v="bicycle_rental" zoom-min="17">
                        <symbol src="file:/symbols/bicycle_rental.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="bus_station" zoom-min="14">
                        <symbol src="file:/symbols/bus_station.png" symbol-width="22dp"/>
                    </rule>
                    <rule e="node" k="railway" v="station" zoom-min="14">
                        <symbol src="file:/symbols/bus_station.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="cafe" zoom-min="17">
                        <symbol src="file:/symbols/cafe.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="cinema" zoom-min="17">
                        <symbol src="file:/symbols/cinema.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="fast_food" zoom-min="17">
                        <symbol src="file:/symbols/fastfood.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="fire_station" zoom-min="17">
                        <symbol src="file:/symbols/firebrigade.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="fountain" zoom-min="17">
                        <symbol src="file:/symbols/fountain.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="fuel" zoom-min="17">
                        <symbol src="file:/symbols/petrolStation.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="hospital" zoom-min="15">
                        <symbol src="file:/symbols/hospital.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="kindergarten" zoom-min="17">
                        <symbol src="file:/symbols/kindergarten.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="library" zoom-min="17">
                        <symbol src="file:/symbols/library.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="parking" zoom-min="17">
                        <symbol src="file:/symbols/parking.svg" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="pharmacy" zoom-min="17">
                        <symbol src="file:/symbols/pharmacy.svg" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="place_of_worship" zoom-min="17">
                        <rule e="node" k="denomination|religion" v="jewish">
                            <symbol src="file:/symbols/synagogue.png" symbol-width="12dp"/>
                        </rule>
                        <rule e="node" k="denomination|religion" v="muslim|moslem">
                            <symbol src="file:/symbols/mosque.png" symbol-width="12dp"/>
                        </rule>
                        <rule e="node" k="denomination|religion" v="christian">
                            <symbol src="file:/symbols/church.png" symbol-width="12dp"/>
                        </rule>
                    </rule>
                    <rule e="node" k="amenity" v="post_box" zoom-min="17">
                        <symbol src="file:/symbols/postbox.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="post_office" zoom-min="17">
                        <symbol src="file:/symbols/postoffice.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="pub|bar" zoom-min="17">
                        <symbol src="file:/symbols/pub.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="recycling" zoom-min="17">
                        <symbol src="file:/symbols/recycling.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="restaurant" zoom-min="17">
                        <symbol src="file:/symbols/restaurant.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="school" zoom-min="17">
                        <symbol src="file:/symbols/school.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="shelter" zoom-min="17">
                        <symbol src="file:/symbols/shelter.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="telephone" zoom-min="17">
                        <symbol src="file:/symbols/telephone.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="theatre" zoom-min="17">
                        <symbol src="file:/symbols/theatre.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="toilets" zoom-min="17">
                        <symbol src="file:/symbols/toilets.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="amenity" v="university|college" zoom-min="17">
                        <symbol src="file:/symbols/university.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="*" v="*" zoom-min="17">
                        <rule e="node" k="information" v="~">
                            <caption k="name" dy="12dp" font-style="bold" font-size="10dp" fill="#4040ff" stroke="#ffffff" stroke-width="3.0dp"/>
                        </rule>
                    </rule>
                </rule>
                <!-- barrier -->
                <rule e="node" k="barrier" v="bollard">
                    <circle r="1.5" fill="#707070"/>
                </rule>
                <!-- highway -->
                <rule e="node" k="highway" v="*">
                    <rule e="node" k="highway" v="bus_stop" zoom-min="16">
                        <symbol src="file:/symbols/bus.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="highway" v="traffic_signals" zoom-min="17">
                        <symbol src="file:/symbols/traffic_signal.png" symbol-width="6dp"/>
                    </rule>
                    <rule e="node" k="highway" v="turning_circle">
                        <circle r="1.4" scale-radius="true" fill="#ffffff"/>
                    </rule>
                </rule>
                <!-- historic -->
                <rule e="node" k="historic" v="*">
                    <circle r="3" fill="#4040ff" stroke="#606060" stroke-width="1.5dp"/>
                    <rule e="node" k="*" v="*" zoom-min="17">
                        <caption k="name" dy="-10dp" font-style="bold" font-size="10dp" fill="#4040ff" stroke="#ffffff" stroke-width="2.0dp"/>
                    </rule>
                </rule>
                <!-- house numbers -->
                <rule e="node" k="addr:housenumber" v="*" zoom-min="18">
                    <caption k="addr:housenumber" font-style="bold" font-size="8dp" fill="#606060" stroke="#ffffff" stroke-width="2.0dp"/>
                </rule>
                <!-- leisure -->
                <rule e="node" k="leisure" v="playground" zoom-min="17">
                    <symbol src="file:/symbols/playground.png" symbol-width="12dp"/>
                </rule>
                <!-- man_made -->
                <rule e="node" k="man_made" v="windmill" zoom-min="17">
                    <symbol src="file:/symbols/windmill.png"/>
                </rule>
                <rule e="node" k="man_made" v="adit" zoom-min="14">
                    <rule e="node" k="disused" v="yes" zoom-min="14">
                        <symbol src="file:/symbols/adit2.svg" symbol-width="16dp"/>
                        <rule e="node" k="*" v="*" zoom-min="16">
                            <caption k="name" dy="15dp" font-style="bold" font-size="10dp" fill="#000000" stroke="#ffffff" stroke-width="2.0dp"/>
                        </rule>
                    </rule>
                    <rule e="node" k="disused" v="~|no" zoom-min="14">
                        <symbol src="file:/symbols/adit.svg" symbol-width="16dp"/>
                        <rule e="node" k="*" v="*" zoom-min="16">
                            <caption k="name" dy="15dp" font-style="bold" font-size="10dp" fill="#000000" stroke="#ffffff" stroke-width="2.0dp"/>
                        </rule>
                    </rule>
                </rule>
                <rule e="node" k="man_made" v="mineshaft" zoom-min="14">
                    <symbol src="file:/symbols/mine.png" symbol-width="12dp"/>
                    <rule e="node" k="*" v="*" zoom-min="16">
                        <caption k="name" dy="15dp" font-style="bold" font-size="10dp" fill="#000000" stroke="#ffffff" stroke-width="2.0dp"/>
                    </rule>
                </rule>
                <!-- natural -->
                <rule e="node" k="natural" v="*">
                    <rule e="node" k="natural" v="cave_entrance" zoom-min="14">
                        <symbol src="file:/symbols/cave_entrance.png" symbol-width="16dp"/>
                        <rule e="node" k="*" v="*" zoom-min="16">
                            <caption k="name" dy="12dp" font-style="bold" font-family="serif" font-size="8dp" fill="#000000" stroke="#ffffff" stroke-width="2dp"/>
                        </rule>
                    </rule>
                    <rule e="node" k="natural" v="spring" zoom-min="14">
                        <symbol src="file:/symbols/spring.svg" symbol-width="10dp"/>
                        <rule e="node" k="*" v="*" zoom-min="16">
                            <caption k="name" dy="12dp" font-style="bold" font-size="10dp" fill="#0092da" stroke="#ffffff" stroke-width="2dp"/>
                        </rule>
                    </rule>
                    <rule e="node" k="natural" v="peak" zoom-min="11">
                        <symbol src="file:/symbols/peak.png" symbol-width="12dp" force-draw="1"/>
                        <rule e="any" k="*" v="*" zoom-min="12">
                            <caption k="name" dy="-6dp" font-style="bold_italic" font-family="serif" font-size="8dp" scale-font-size="14,1.1" fill="#760000" stroke="#e9dca2" stroke-width="1.8dp"/>
                            <rule e="any" k="*" v="*" zoom-min="15">
                                <caption k="ele" dy="12dp" font-style="italic" font-size="9dp" scale-font-size="16,1.1" fill="#000000" stroke="#ffffff" stroke-width="1.4dp"/>
                            </rule>
                        </rule>
                    </rule>
                    <rule e="node" k="natural" v="tree" zoom-min="16">
                        <symbol src="file:/symbols/tree.png"/>
                        <rule e="node" k="*" v="*" zoom-min="17">
                            <caption k="name" font-style="bold" font-size="10dp" fill="#000000" stroke="#ffffff" stroke-width="2.0dp"/>
                        </rule>
                    </rule>
                    <rule e="node" k="natural" v="volcano" zoom-min="12">
                        <symbol src="file:/symbols/vulcan.png"/>
                        <rule e="node" k="*" v="*" zoom-min="17">
                            <caption k="name" font-style="bold" font-size="10dp" fill="#000000" stroke="#ffffff" stroke-width="2.0dp"/>
                        </rule>
                    </rule>
                </rule>
                <rule e="node" k="amenity" v="hunting_stand" zoom-min="14">
                    <symbol src="file:/symbols/hunting_stand.svg" symbol-width="14dp"/>
                </rule>
                <rule e="node" k="man_made" v="mast" zoom-min="14">
                    <symbol src="file:/symbols/tower_comm.svg" symbol-width="14dp"/>
                </rule>
                <rule e="node" k="man_made" v="tower" zoom-min="14">
                    <rule e="node" k="tower:type" v="communication">
                        <symbol src="file:/symbols/tower_comm.svg" symbol-width="14dp"/>
                    </rule>
                    <rule e="node" k="tower:type" v="observation" zoom-min="14">
                        <symbol src="file:/symbols/tower_obs.svg" symbol-width="14dp"/>
                    </rule>
                </rule>
                <!-- place -->
                <rule e="node" k="place" v="*">
                    <rule e="node" k="place" v="city" zoom-max="14">
                        <caption k="name" font-style="bold" font-size="16dp" fill="#000000" stroke="#ffffff" stroke-width="3dp"/>
                    </rule>
                    <rule e="node" k="place" v="town" zoom-min="8" zoom-max="10">
                        <caption k="name" font-style="bold" font-size="9dp" fill="#000000" stroke="#ffffff" stroke-width="2dp"/>
                    </rule>
                    <rule e="node" k="place" v="town" zoom-min="11" zoom-max="15">
                        <caption k="name" font-style="bold" font-size="14dp" fill="#000000" stroke="#ffffff" stroke-width="2dp"/>
                    </rule>
                    <rule e="node" k="place" v="suburb" zoom-min="12" zoom-max="16">
                        <caption k="name" font-style="bold" font-size="12dp" fill="#6C6C6C" stroke="#ffffff" stroke-width="2dp"/>
                    </rule>
                    <rule e="node" k="place" v="village" zoom-min="11" zoom-max="12">
                        <caption k="name" font-style="normal" font-size="7dp" fill="#000000" stroke="#ffffff" stroke-width="2dp"/>
                    </rule>
                    <rule e="node" k="place" v="village" zoom-min="13" zoom-max="18">
                        <caption k="name" font-style="normal" font-size="12dp" fill="#000000" stroke="#ffffff" stroke-width="2dp"/>
                    </rule>
                    <rule e="node" k="place" v="hamlet" zoom-min="13" zoom-max="18">
                        <caption k="name" font-style="normal" font-size="11dp" fill="#000000" stroke="#ffffff" stroke-width="1dp"/>
                    </rule>
                    <rule e="node" k="place" v="locality" zoom-min="15" zoom-max="16">
                        <caption k="name" font-style="bold" font-size="7dp" fill="#A0666666" stroke="#ffffff" stroke-width="2.0dp"/>
                    </rule>
                    <rule e="node" k="place" v="locality" zoom-min="17">
                        <caption k="name" font-style="bold" font-size="10dp" fill="#A0666666" stroke="#ffffff" stroke-width="2.0dp"/>
                    </rule>
                    <rule e="node" k="place" v="island" zoom-min="10">
                        <caption k="name" font-style="bold" font-size="20dp" fill="#000000" stroke="#ffffff" stroke-width="3.0dp"/>
                    </rule>
                    <rule e="node" k="place" v="country" zoom-max="6">
                        <caption k="name" font-style="bold" font-size="35dp" fill="#000000" stroke="#ffffff" stroke-width="4.0dp"/>
                    </rule>
                </rule>
                <!-- railway -->
                <rule e="node" k="railway" v="*">
                    <rule e="node" k="railway" v="crossing" zoom-min="16">
                        <symbol src="file:/symbols/railway-crossing-small.png"/>
                    </rule>
                    <rule e="node" k="railway" v="level_crossing" zoom-min="16">
                        <symbol src="file:/symbols/railway-crossing.png" symbol-width="16dp"/>
                        <rule e="node" k="*" v="*" zoom-min="18">
                            <caption k="ref" dy="10dp" font-style="bold" font-size="8dp" fill="#000000" stroke="#ffffff" stroke-width="2.0dp"/>
                        </rule>
                    </rule>
                    <rule e="node" k="railway" v="station" zoom-min="14">
                        <circle r="6" fill="#ec2d2d" stroke="#606060" stroke-width="1.5dp"/>
                        <caption k="name" dy="-10dp" font-style="bold" font-size="10dp" fill="#ec2d2d" stroke="#ffffff" stroke-width="2dp"/>
                    </rule>
                    <rule e="node" k="railway" v="halt|tram_stop" zoom-min="16">
                        <circle r="4" fill="#ec2d2d" stroke="#606060" stroke-width="1.5dp"/>
                        <caption k="name" dy="-10dp" font-style="bold" font-size="10dp" fill="#ec2d2d" stroke="#ffffff" stroke-width="1.5dp"/>
                    </rule>
                </rule>
                <!-- shop -->
                <rule e="node" k="shop" v="*">
                    <rule e="node" k="shop" v="bakery" zoom-min="17">
                        <symbol src="file:/symbols/bakery.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="shop" v="florist" zoom-min="17">
                        <symbol src="file:/symbols/florist.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="shop" v="supermarket|organic" zoom-min="17">
                        <symbol src="file:/symbols/supermarket.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="*" v="*" zoom-min="17">
                        <caption k="name" dy="12dp" font-style="bold" font-size="10dp" fill="#4040ff" stroke="#ffffff" stroke-width="2.0dp"/>
                    </rule>
                </rule>
                <rule e="way" k="shop" v="*" zoom-min="16">
                    <caption k="name" dy="12dp" font-style="bold" font-size="10dp" fill="#4040ff" stroke="#ffffff" stroke-width="2.0dp"/>
                </rule>
                <!-- tourism -->
                <rule e="node" k="tourism" v="*">
                    <rule e="node" k="tourism" v="camp_site" zoom-min="17">
                        <symbol src="file:/symbols/campSite.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="tourism" v="hostel" zoom-min="17">
                        <symbol src="file:/symbols/hostel.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="tourism" v="hotel" zoom-min="17">
                        <symbol src="file:/symbols/hotel.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="tourism" v="information" zoom-min="17">
                        <symbol src="file:/symbols/information.png" symbol-width="12dp"/>
                    </rule>
                    <rule e="node" k="tourism" v="viewpoint" zoom-min="15">
                        <symbol src="file:/symbols/viewpoint.png" symbol-width="12dp"/>
                    </rule>
                </rule>
            </rule>
            <rule e="way" k="power" v="*">
                <rule e="way" k="power" v="line" zoom-min="13">
                    <line stroke="#80000000" stroke-width="0.2dp"/>
                    <lineSymbol src="file:/symbols/way_powerline.svg" align-center="true" repeat="true" symbol-width="16dp" repeat-gap="35dp"/>
                </rule>
                <!--
        <rule e="way" k="power" v="minor_line" zoom-min="17">
        <line stroke="#80000000" stroke-width="0.4dp" />
      </rule>
    -->
            </rule>

            <rule e="way" k="contour_ext" v="*">
                <rule e="way" k="contour_ext" v="elevation_major" zoom-min="13">
                    <pathText k="ele" font-size="8dp" font-style="bold" fill="#A86868" stroke="#FFFFFF" stroke-width="1dp" curve="cubic"/>
                </rule>
                <rule e="way" k="contour_ext" v="elevation_medium" zoom-min="14">
                    <pathText k="ele" font-size="8dp" font-style="bold" fill="#A86868" stroke="#FFFFFF" stroke-width="1dp" curve="cubic"/>
                </rule>
                <rule e="way" k="contour_ext" v="elevation_minor" zoom-min="16">
                    <pathText k="ele" font-size="5dp" font-style="bold" fill="#A86868" stroke="#FFFFFF" stroke-width="1dp" curve="cubic"/>
                </rule>
            </rule>

            <!-- turistika -->
            <rule e="way" k="highway" v="*" style="hiking" zoom-min="11">
                <!-- CZT -->
                <rule e="way" k="fmrelbicyclered|fmrelbicycleblue|fmrelbicyclegreen|fmrelbicycleyellow|fmrelbicyclewhite|fmrelbicycleblack|fmrelbicycledefault" v="*">
                    <line stroke="{$alternative}" dy="{concat(-1 * $offset1, 'dp')}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                </rule>

                <!-- TZT -->
                <xsl:call-template name="markedTrails">
                    <xsl:with-param name="redKey" select="'fmrelhikingred'"/>
                    <xsl:with-param name="blueKey" select="'fmrelhikingblue'"/>
                    <xsl:with-param name="greenKey" select="'fmrelhikinggreen|fmreleducation'"/>
                    <xsl:with-param name="yellowKey" select="'fmrelhikingyellow'"/>
                    <xsl:with-param name="fallbackKey" select="'fmrelhikingwhite|fmrelhikingblack|fmrelhikingdefault'"/>
                    <xsl:with-param name="side" select="1"/>
                </xsl:call-template>
            </rule>

            <!-- cyklistika -->
            <rule e="way" k="highway" v="*" style="cycle" zoom-min="11">
                <!-- TZT -->
                <rule e="way" k="fmrelhikingred|fmrelhikingblue|fmrelhikinggreen|fmrelhikingyellow|fmrelhikingwhite|fmrelhikingblack|fmrelhikingdefault|fmreleducation" v="*">
                    <line stroke="{$alternative}" dy="{concat($offset1, 'dp')}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                </rule>

                <!-- CZT -->
                <xsl:call-template name="markedTrails">
                    <xsl:with-param name="redKey" select="'fmrelbicyclered'"/>
                    <xsl:with-param name="blueKey" select="'fmrelbicycleblue'"/>
                    <xsl:with-param name="greenKey" select="'fmrelbicyclegreen'"/>
                    <xsl:with-param name="yellowKey" select="'fmrelbicycleyellow'"/>
                    <xsl:with-param name="fallbackKey" select="'fmrelbicyclewhite|fmrelbicycleblack|fmrelbicycledefault'"/>
                    <xsl:with-param name="side" select="-1"/>
                </xsl:call-template>
            </rule>

        </rendertheme>
    </xsl:template>

    <xsl:template name="markedTrails">
        <xsl:param name="redKey" />
        <xsl:param name="blueKey" />
        <xsl:param name="greenKey" />
        <xsl:param name="yellowKey" />
        <xsl:param name="fallbackKey" />

        <xsl:param name="side" />

        <xsl:variable name="off1"><xsl:value-of select="concat($side * $offset1, 'dp')"/></xsl:variable>
        <xsl:variable name="off2"><xsl:value-of select="concat($side * $offset2, 'dp')"/></xsl:variable>
        <xsl:variable name="off3"><xsl:value-of select="concat($side * $offset3, 'dp')"/></xsl:variable>
        <xsl:variable name="off4"><xsl:value-of select="concat($side * $offset4, 'dp')"/></xsl:variable>

        <rule e="way" k="{$redKey}" v="*">
            <rule e="way" k="{$blueKey}" v="*">
                <rule e="way" k="{$greenKey}" v="*">
                    <rule e="way" k="{$yellowKey}" v="*">
                        <line stroke="{$red}" dy="{$off1}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$blue}" dy="{$off2}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$green}" dy="{$off3}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$yellow}" dy="{$off4}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                    </rule>

                    <rule e="way" k="{$yellowKey}" v="~">
                        <line stroke="{$red}" dy="{$off1}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$blue}" dy="{$off2}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$green}" dy="{$off3}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                    </rule>
                </rule>

                <rule e="way" k="{$greenKey}" v="~">
                    <rule e="way" k="{$yellowKey}" v="*">
                        <line stroke="{$red}" dy="{$off1}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$blue}" dy="{$off2}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$yellow}" dy="{$off3}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                    </rule>

                    <rule e="way" k="{$yellowKey}" v="~">
                        <line stroke="{$red}" dy="{$off1}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$blue}" dy="{$off2}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                    </rule>
                </rule>
            </rule>

            <rule e="way" k="{$blueKey}" v="~">
                <rule e="way" k="{$greenKey}" v="*">
                    <rule e="way" k="{$yellowKey}" v="*">
                        <line stroke="{$red}" dy="{$off1}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$green}" dy="{$off2}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$yellow}" dy="{$off3}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                    </rule>

                    <rule e="way" k="{$yellowKey}" v="~">
                        <line stroke="{$red}" dy="{$off1}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$green}" dy="{$off2}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                    </rule>
                </rule>

                <rule e="way" k="{$greenKey}" v="~">
                    <rule e="way" k="{$yellowKey}" v="*">
                        <line stroke="{$red}" dy="{$off1}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$yellow}" dy="{$off2}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                    </rule>

                    <rule e="way" k="{$yellowKey}" v="~">
                        <line stroke="{$red}" dy="{$off1}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                    </rule>
                </rule>
            </rule>
        </rule>

        <rule e="way" k="{$redKey}" v="~">
            <rule e="way" k="{$blueKey}" v="*">
                <rule e="way" k="{$greenKey}" v="*">
                    <rule e="way" k="{$yellowKey}" v="*">
                        <line stroke="{$blue}" dy="{$off1}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$green}" dy="{$off2}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$yellow}" dy="{$off3}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                    </rule>

                    <rule e="way" k="{$yellowKey}" v="~">
                        <line stroke="{$blue}" dy="{$off1}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$green}" dy="{$off2}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                    </rule>
                </rule>

                <rule e="way" k="{$greenKey}" v="~">
                    <rule e="way" k="{$yellowKey}" v="*">
                        <line stroke="{$blue}" dy="{$off1}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$yellow}" dy="{$off2}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                    </rule>

                    <rule e="way" k="{$yellowKey}" v="~">
                        <line stroke="{$blue}" dy="{$off1}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                    </rule>
                </rule>
            </rule>

            <rule e="way" k="{$blueKey}" v="~">
                <rule e="way" k="{$greenKey}" v="*">
                    <rule e="way" k="{$yellowKey}" v="*">
                        <line stroke="{$green}" dy="{$off1}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        <line stroke="{$yellow}" dy="{$off2}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                    </rule>

                    <rule e="way" k="{$yellowKey}" v="~">
                        <line stroke="{$green}" dy="{$off1}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                    </rule>
                </rule>

                <rule e="way" k="{$greenKey}" v="~">
                    <rule e="way" k="{$yellowKey}" v="*">
                        <line stroke="{$yellow}" dy="{$off1}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                    </rule>

                    <rule e="way" k="{$yellowKey}" v="~">
                        <rule e="way" k="{$fallbackKey}" v="*">
                            <line stroke="{$fallback}" dy="{$off1}" scale-dy-size="{$scaleDySize}" stroke-width="{$markedTrailWidth}"/>
                        </rule>
                    </rule>
                </rule>
            </rule>
        </rule>

    </xsl:template>
</xsl:stylesheet>
