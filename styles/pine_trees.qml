<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyLocal="1" styleCategories="AllStyleCategories" readOnly="0" version="3.10.4-A Coruña" maxScale="0" labelsEnabled="0" simplifyDrawingTol="1" hasScaleBasedVisibilityFlag="0" minScale="1e+08" simplifyDrawingHints="1" simplifyAlgorithm="0" simplifyMaxScale="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 forceraster="0" type="singleSymbol" enableorderby="0" symbollevels="0">
    <symbols>
      <symbol clip_to_extent="1" name="0" force_rhr="0" type="fill" alpha="1">
        <layer locked="0" class="SVGFill" enabled="1" pass="0">
          <prop k="angle" v="0"/>
          <prop k="color" v="0,0,255,255"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="pattern_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="pattern_width_unit" v="MM"/>
          <prop k="svgFile" v="svg/separate-grove-pinaceae_25k.svg"/>
          <prop k="svg_outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="svg_outline_width_unit" v="MM"/>
          <prop k="width" v="5"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol clip_to_extent="1" name="@0@0" force_rhr="0" type="line" alpha="1">
            <layer locked="0" class="SimpleLine" enabled="1" pass="0">
              <prop k="capstyle" v="square"/>
              <prop k="customdash" v="5;2"/>
              <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="customdash_unit" v="MM"/>
              <prop k="draw_inside_polygon" v="0"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="line_color" v="35,35,35,255"/>
              <prop k="line_style" v="solid"/>
              <prop k="line_width" v="0.26"/>
              <prop k="line_width_unit" v="MM"/>
              <prop k="offset" v="0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="ring_filter" v="0"/>
              <prop k="use_custom_dash" v="0"/>
              <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
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
  <layerOpacity>0.212</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory rotationOffset="270" minScaleDenominator="0" penAlpha="255" maxScaleDenominator="1e+08" sizeScale="3x:0,0,0,0,0,0" barWidth="5" scaleBasedVisibility="0" scaleDependency="Area" height="15" lineSizeScale="3x:0,0,0,0,0,0" penWidth="0" diagramOrientation="Up" sizeType="MM" enabled="0" minimumSize="0" width="15" backgroundColor="#ffffff" opacity="1" lineSizeType="MM" penColor="#000000" backgroundAlpha="255" labelPlacementMethod="XHeight">
      <fontProperties style="" description="Ubuntu,11,-1,5,50,0,0,0,0,0"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" placement="1" linePlacementFlags="18" dist="0" zIndex="0" priority="0" showAll="1">
    <properties>
      <Option type="Map">
        <Option value="" name="name" type="QString"/>
        <Option name="properties"/>
        <Option value="collection" name="type" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option name="QgsGeometryGapCheck" type="Map">
        <Option value="0" name="allowedGapsBuffer" type="double"/>
        <Option value="false" name="allowedGapsEnabled" type="bool"/>
        <Option value="" name="allowedGapsLayer" type="QString"/>
      </Option>
    </checkConfiguration>
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
    <alias index="0" field="name" name=""/>
    <alias index="1" field="folders" name=""/>
    <alias index="2" field="description" name=""/>
    <alias index="3" field="altitude" name=""/>
    <alias index="4" field="alt_mode" name=""/>
    <alias index="5" field="time_begin" name=""/>
    <alias index="6" field="time_end" name=""/>
    <alias index="7" field="time_when" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" field="name" applyOnUpdate="0"/>
    <default expression="" field="folders" applyOnUpdate="0"/>
    <default expression="" field="description" applyOnUpdate="0"/>
    <default expression="" field="altitude" applyOnUpdate="0"/>
    <default expression="" field="alt_mode" applyOnUpdate="0"/>
    <default expression="" field="time_begin" applyOnUpdate="0"/>
    <default expression="" field="time_end" applyOnUpdate="0"/>
    <default expression="" field="time_when" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint unique_strength="0" notnull_strength="0" field="name" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="folders" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="description" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="altitude" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="alt_mode" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="time_begin" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="time_end" constraints="0" exp_strength="0"/>
    <constraint unique_strength="0" notnull_strength="0" field="time_when" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="name" desc="" exp=""/>
    <constraint field="folders" desc="" exp=""/>
    <constraint field="description" desc="" exp=""/>
    <constraint field="altitude" desc="" exp=""/>
    <constraint field="alt_mode" desc="" exp=""/>
    <constraint field="time_begin" desc="" exp=""/>
    <constraint field="time_end" desc="" exp=""/>
    <constraint field="time_when" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column width="-1" hidden="0" name="name" type="field"/>
      <column width="-1" hidden="0" name="folders" type="field"/>
      <column width="-1" hidden="0" name="description" type="field"/>
      <column width="-1" hidden="0" name="altitude" type="field"/>
      <column width="-1" hidden="0" name="alt_mode" type="field"/>
      <column width="-1" hidden="0" name="time_begin" type="field"/>
      <column width="-1" hidden="0" name="time_end" type="field"/>
      <column width="-1" hidden="0" name="time_when" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
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
    <field name="alt_mode" labelOnTop="0"/>
    <field name="altitude" labelOnTop="0"/>
    <field name="description" labelOnTop="0"/>
    <field name="folders" labelOnTop="0"/>
    <field name="name" labelOnTop="0"/>
    <field name="time_begin" labelOnTop="0"/>
    <field name="time_end" labelOnTop="0"/>
    <field name="time_when" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>name</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
