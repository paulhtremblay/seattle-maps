<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.10.4-A Coruña" simplifyDrawingTol="1" styleCategories="AllStyleCategories" maxScale="0" readOnly="0" simplifyMaxScale="1" simplifyLocal="1" simplifyAlgorithm="0" simplifyDrawingHints="0" hasScaleBasedVisibilityFlag="0" labelsEnabled="0" minScale="1e+08">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="singleSymbol" symbollevels="0" forceraster="0" enableorderby="0">
    <symbols>
      <symbol alpha="1" clip_to_extent="1" force_rhr="0" type="marker" name="0">
        <layer enabled="1" locked="0" pass="0" class="SvgMarker">
          <prop k="angle" v="0"/>
          <prop k="color" v="125,139,143,255"/>
          <prop k="fixedAspectRatio" v="0"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="name" v="symbol/poi_tower_water.svg"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory scaleBasedVisibility="0" lineSizeType="MM" penWidth="0" barWidth="5" sizeScale="3x:0,0,0,0,0,0" backgroundColor="#ffffff" scaleDependency="Area" diagramOrientation="Up" labelPlacementMethod="XHeight" minimumSize="0" height="15" penColor="#000000" enabled="0" opacity="1" width="15" maxScaleDenominator="1e+08" minScaleDenominator="0" sizeType="MM" rotationOffset="270" penAlpha="255" backgroundAlpha="255" lineSizeScale="3x:0,0,0,0,0,0">
      <fontProperties style="" description="Ubuntu,11,-1,5,50,0,0,0,0,0"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings zIndex="0" showAll="1" linePlacementFlags="18" dist="0" priority="0" obstacle="0" placement="0">
    <properties>
      <Option type="Map">
        <Option value="" type="QString" name="name"/>
        <Option name="properties"/>
        <Option value="collection" type="QString" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="name">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="folders">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="description">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="altitude">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="alt_mode">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="time_begin">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="time_end">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="time_when">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="name"/>
    <alias index="1" name="" field="folders"/>
    <alias index="2" name="" field="description"/>
    <alias index="3" name="" field="altitude"/>
    <alias index="4" name="" field="alt_mode"/>
    <alias index="5" name="" field="time_begin"/>
    <alias index="6" name="" field="time_end"/>
    <alias index="7" name="" field="time_when"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" applyOnUpdate="0" field="name"/>
    <default expression="" applyOnUpdate="0" field="folders"/>
    <default expression="" applyOnUpdate="0" field="description"/>
    <default expression="" applyOnUpdate="0" field="altitude"/>
    <default expression="" applyOnUpdate="0" field="alt_mode"/>
    <default expression="" applyOnUpdate="0" field="time_begin"/>
    <default expression="" applyOnUpdate="0" field="time_end"/>
    <default expression="" applyOnUpdate="0" field="time_when"/>
  </defaults>
  <constraints>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" field="name" unique_strength="0"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" field="folders" unique_strength="0"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" field="description" unique_strength="0"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" field="altitude" unique_strength="0"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" field="alt_mode" unique_strength="0"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" field="time_begin" unique_strength="0"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" field="time_end" unique_strength="0"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" field="time_when" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="name"/>
    <constraint desc="" exp="" field="folders"/>
    <constraint desc="" exp="" field="description"/>
    <constraint desc="" exp="" field="altitude"/>
    <constraint desc="" exp="" field="alt_mode"/>
    <constraint desc="" exp="" field="time_begin"/>
    <constraint desc="" exp="" field="time_end"/>
    <constraint desc="" exp="" field="time_when"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column type="field" name="name" hidden="0" width="-1"/>
      <column type="field" name="folders" hidden="0" width="-1"/>
      <column type="field" name="description" hidden="0" width="-1"/>
      <column type="field" name="altitude" hidden="0" width="-1"/>
      <column type="field" name="alt_mode" hidden="0" width="-1"/>
      <column type="field" name="time_begin" hidden="0" width="-1"/>
      <column type="field" name="time_end" hidden="0" width="-1"/>
      <column type="field" name="time_when" hidden="0" width="-1"/>
      <column type="actions" hidden="1" width="-1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field name="alt_mode" editable="1"/>
    <field name="altitude" editable="1"/>
    <field name="description" editable="1"/>
    <field name="folders" editable="1"/>
    <field name="name" editable="1"/>
    <field name="time_begin" editable="1"/>
    <field name="time_end" editable="1"/>
    <field name="time_when" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="alt_mode"/>
    <field labelOnTop="0" name="altitude"/>
    <field labelOnTop="0" name="description"/>
    <field labelOnTop="0" name="folders"/>
    <field labelOnTop="0" name="name"/>
    <field labelOnTop="0" name="time_begin"/>
    <field labelOnTop="0" name="time_end"/>
    <field labelOnTop="0" name="time_when"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>name</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
