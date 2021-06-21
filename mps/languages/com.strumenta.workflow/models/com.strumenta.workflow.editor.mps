<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ca469f91-7eac-4002-aa6e-a93ea071a975(com.strumenta.workflow.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="o69o" ref="r:24e6972a-8fd6-40f7-9c1a-8b4c6ef40a2d(com.strumenta.workflow.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="5_uB0y3U93o">
    <ref role="1XX52x" to="o69o:5_uB0y3TX6f" resolve="Start" />
    <node concept="3EZMnI" id="5_uB0y3U93q" role="2wV5jI">
      <node concept="3F0ifn" id="5_uB0y3U93x" role="3EZMnx">
        <property role="3F0ifm" value="start:" />
      </node>
      <node concept="3EZMnI" id="5_uB0y3U93F" role="3EZMnx">
        <node concept="VPM3Z" id="5_uB0y3U93H" role="3F10Kt" />
        <node concept="3XFhqQ" id="5_uB0y3U93Z" role="3EZMnx" />
        <node concept="3F2HdR" id="5_uB0y3U93Q" role="3EZMnx">
          <ref role="1NtTu8" to="o69o:5_uB0y3TX6u" resolve="outLinks" />
          <node concept="2iRkQZ" id="5_uB0y3U944" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="5_uB0y3U93K" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="5_uB0y3U949" role="3EZMnx" />
      <node concept="2iRkQZ" id="5_uB0y3U93t" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5_uB0y3UklA">
    <ref role="1XX52x" to="o69o:5_uB0y3TX69" resolve="Workflow" />
    <node concept="3EZMnI" id="5_uB0y3UklC" role="2wV5jI">
      <node concept="3EZMnI" id="5_uB0y3UklM" role="3EZMnx">
        <node concept="2iRfu4" id="5_uB0y3UklN" role="2iSdaV" />
        <node concept="3F0ifn" id="5_uB0y3UklJ" role="3EZMnx">
          <property role="3F0ifm" value="Workflow" />
        </node>
        <node concept="3F0A7n" id="5_uB0y3UklV" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
      <node concept="3F0ifn" id="5_uB0y3UklZ" role="3EZMnx" />
      <node concept="3F2HdR" id="5_uB0y3Ukmc" role="3EZMnx">
        <ref role="1NtTu8" to="o69o:5_uB0y3TX6d" resolve="steps" />
        <node concept="2iRkQZ" id="5_uB0y3Ukme" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="5_uB0y3UklF" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5_uB0y3UmY$">
    <ref role="1XX52x" to="o69o:5_uB0y3UmYq" resolve="Action" />
    <node concept="3EZMnI" id="5_uB0y3Un0l" role="2wV5jI">
      <node concept="3EZMnI" id="5_uB0y3Un0m" role="3EZMnx">
        <node concept="2iRfu4" id="5_uB0y3Un0n" role="2iSdaV" />
        <node concept="PMmxH" id="5_uB0y3UNPU" role="3EZMnx">
          <ref role="PMmxG" node="5_uB0y3UNP$" resolve="IdCell" />
        </node>
        <node concept="3F0ifn" id="5_uB0y3Un0o" role="3EZMnx">
          <property role="3F0ifm" value="action:" />
        </node>
        <node concept="3F0A7n" id="5_uB0y3Un0p" role="3EZMnx">
          <ref role="1NtTu8" to="o69o:5_uB0y3UmYr" resolve="description" />
        </node>
      </node>
      <node concept="3EZMnI" id="5_uB0y3Un0q" role="3EZMnx">
        <node concept="VPM3Z" id="5_uB0y3Un0r" role="3F10Kt" />
        <node concept="3XFhqQ" id="5_uB0y3Un0s" role="3EZMnx" />
        <node concept="3F2HdR" id="5_uB0y3Un0t" role="3EZMnx">
          <ref role="1NtTu8" to="o69o:5_uB0y3TX6u" resolve="outLinks" />
          <node concept="2iRkQZ" id="5_uB0y3Un0u" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="5_uB0y3Un0v" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="5_uB0y3Un0w" role="3EZMnx" />
      <node concept="2iRkQZ" id="5_uB0y3Un0x" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5_uB0y3UmYS">
    <ref role="1XX52x" to="o69o:5_uB0y3TX6l" resolve="Decision" />
    <node concept="3EZMnI" id="5_uB0y3UmYU" role="2wV5jI">
      <node concept="3EZMnI" id="5_uB0y3UmZP" role="3EZMnx">
        <node concept="2iRfu4" id="5_uB0y3UmZQ" role="2iSdaV" />
        <node concept="3F0ifn" id="5_uB0y3UmYV" role="3EZMnx">
          <property role="3F0ifm" value="decision:" />
        </node>
        <node concept="3F0A7n" id="5_uB0y3Un06" role="3EZMnx">
          <ref role="1NtTu8" to="o69o:5_uB0y3TX6o" resolve="description" />
        </node>
      </node>
      <node concept="3EZMnI" id="5_uB0y3UmYW" role="3EZMnx">
        <node concept="VPM3Z" id="5_uB0y3UmYX" role="3F10Kt" />
        <node concept="3XFhqQ" id="5_uB0y3UmYY" role="3EZMnx" />
        <node concept="3F2HdR" id="5_uB0y3UmYZ" role="3EZMnx">
          <ref role="1NtTu8" to="o69o:5_uB0y3TX6u" resolve="outLinks" />
          <node concept="2iRkQZ" id="5_uB0y3UmZ0" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="5_uB0y3UmZ1" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="5_uB0y3UmZ2" role="3EZMnx" />
      <node concept="2iRkQZ" id="5_uB0y3UmZ3" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5_uB0y3UpOc">
    <ref role="1XX52x" to="o69o:5_uB0y3TX6i" resolve="End" />
    <node concept="3EZMnI" id="5_uB0y3UNPY" role="2wV5jI">
      <node concept="2iRfu4" id="5_uB0y3UNPZ" role="2iSdaV" />
      <node concept="PMmxH" id="5_uB0y3UNQ7" role="3EZMnx">
        <ref role="PMmxG" node="5_uB0y3UNP$" resolve="IdCell" />
      </node>
      <node concept="3F0ifn" id="5_uB0y3UpOe" role="3EZMnx">
        <property role="3F0ifm" value="end." />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5_uB0y3UrL6">
    <ref role="1XX52x" to="o69o:5_uB0y3TX6r" resolve="Link" />
    <node concept="3EZMnI" id="5_uB0y3UrL8" role="2wV5jI">
      <node concept="3F0ifn" id="5_uB0y3UrLf" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
      </node>
      <node concept="2iRfu4" id="5_uB0y3UrLb" role="2iSdaV" />
      <node concept="1iCGBv" id="5_uB0y3UrLl" role="3EZMnx">
        <ref role="1NtTu8" to="o69o:5_uB0y3TX6w" resolve="target" />
        <node concept="1sVBvm" id="5_uB0y3UrLn" role="1sWHZn">
          <node concept="3F0A7n" id="5_uB0y3UGtV" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="o69o:5_uB0y3UsZV" resolve="id" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="5_uB0y3UNP$">
    <property role="TrG5h" value="IdCell" />
    <ref role="1XX52x" to="o69o:5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
    <node concept="3F0A7n" id="5_uB0y3UNPC" role="2wV5jI">
      <ref role="1NtTu8" to="o69o:5_uB0y3UsZV" resolve="id" />
      <node concept="Vb9p2" id="5_uB0y3UNPF" role="3F10Kt">
        <property role="Vbekb" value="g1_kEg4/ITALIC" />
      </node>
      <node concept="VechU" id="5_uB0y3UNPK" role="3F10Kt">
        <property role="Vb096" value="fLJRk5B/darkGray" />
      </node>
    </node>
  </node>
</model>

