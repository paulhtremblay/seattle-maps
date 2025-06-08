<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyMaxScale="1" simplifyAlgorithm="0" styleCategories="AllStyleCategories" simplifyDrawingHints="1" labelsEnabled="0" hasScaleBasedVisibilityFlag="0" maxScale="0" simplifyDrawingTol="1" readOnly="0" minScale="1e+08" simplifyLocal="1" version="3.10.4-A Coruña">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="singleSymbol" enableorderby="0" symbollevels="0" forceraster="0">
    <symbols>
      <symbol alpha="1" type="line" name="0" force_rhr="0" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="51,160,44,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.86"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="ring_filter" v="0"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
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
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory maxScaleDenominator="1e+08" lineSizeType="MM" lineSizeScale="3x:0,0,0,0,0,0" width="15" enabled="0" barWidth="5" height="15" penWidth="0" rotationOffset="270" penColor="#000000" sizeScale="3x:0,0,0,0,0,0" penAlpha="255" minScaleDenominator="0" diagramOrientation="Up" backgroundAlpha="255" backgroundColor="#ffffff" labelPlacementMethod="XHeight" scaleDependency="Area" minimumSize="0" sizeType="MM" opacity="1" scaleBasedVisibility="0">
      <fontProperties description="Ubuntu,11,-1,5,50,0,0,0,0,0" style=""/>
      <attribute color="#000000" label="" field=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" placement="2" obstacle="0" priority="0" dist="0" showAll="1" zIndex="0">
    <properties>
      <Option type="Map">
        <Option type="QString" name="name" value=""/>
        <Option name="properties"/>
        <Option type="QString" name="type" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
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
    <default applyOnUpdate="0" field="name" expression=""/>
    <default applyOnUpdate="0" field="folders" expression=""/>
    <default applyOnUpdate="0" field="description" expression=""/>
    <default applyOnUpdate="0" field="altitude" expression=""/>
    <default applyOnUpdate="0" field="alt_mode" expression=""/>
    <default applyOnUpdate="0" field="time_begin" expression=""/>
    <default applyOnUpdate="0" field="time_end" expression=""/>
    <default applyOnUpdate="0" field="time_when" expression=""/>
  </defaults>
  <constraints>
    <constraint unique_strength="0" constraints="0" exp_strength="0" field="name" notnull_strength="0"/>
    <constraint unique_strength="0" constraints="0" exp_strength="0" field="folders" notnull_strength="0"/>
    <constraint unique_strength="0" constraints="0" exp_strength="0" field="description" notnull_strength="0"/>
    <constraint unique_strength="0" constraints="0" exp_strength="0" field="altitude" notnull_strength="0"/>
    <constraint unique_strength="0" constraints="0" exp_strength="0" field="alt_mode" notnull_strength="0"/>
    <constraint unique_strength="0" constraints="0" exp_strength="0" field="time_begin" notnull_strength="0"/>
    <constraint unique_strength="0" constraints="0" exp_strength="0" field="time_end" notnull_strength="0"/>
    <constraint unique_strength="0" constraints="0" exp_strength="0" field="time_when" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="name"/>
    <constraint exp="" desc="" field="folders"/>
    <constraint exp="" desc="" field="description"/>
    <constraint exp="" desc="" field="altitude"/>
    <constraint exp="" desc="" field="alt_mode"/>
    <constraint exp="" desc="" field="time_begin"/>
    <constraint exp="" desc="" field="time_end"/>
    <constraint exp="" desc="" field="time_when"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column width="-1" type="field" name="name" hidden="0"/>
      <column width="-1" type="field" name="folders" hidden="0"/>
      <column width="-1" type="field" name="description" hidden="0"/>
      <column width="-1" type="field" name="altitude" hidden="0"/>
      <column width="-1" type="field" name="alt_mode" hidden="0"/>
      <column width="-1" type="field" name="time_begin" hidden="0"/>
      <column width="-1" type="field" name="time_end" hidden="0"/>
      <column width="-1" type="field" name="time_when" hidden="0"/>
      <column width="-1" type="actions" hidden="1"/>
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
    <field editable="1" name="alt_mode"/>
    <field editable="1" name="altitude"/>
    <field editable="1" name="description"/>
    <field editable="1" name="folders"/>
    <field editable="1" name="name"/>
    <field editable="1" name="time_begin"/>
    <field editable="1" name="time_end"/>
    <field editable="1" name="time_when"/>
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
  <layerGeometryType>1</layerGeometryType>
</qgis>
