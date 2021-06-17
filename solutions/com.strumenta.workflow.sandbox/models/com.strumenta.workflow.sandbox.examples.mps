<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e533013c-e187-4a44-b636-83614ab62194(com.strumenta.workflow.sandbox.examples)">
  <persistence version="9" />
  <languages>
    <use id="9541690c-0277-4c0b-9732-0f2236f2e9ce" name="com.strumenta.workflow" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="9541690c-0277-4c0b-9732-0f2236f2e9ce" name="com.strumenta.workflow">
      <concept id="6439756077573173146" name="com.strumenta.workflow.structure.Action" flags="ng" index="3qHZei">
        <property id="6439756077573173147" name="description" index="3qHZej" />
      </concept>
      <concept id="6439756077573067145" name="com.strumenta.workflow.structure.Workflow" flags="ng" index="3qIkQ1">
        <child id="6439756077573067149" name="steps" index="3qIkQ5" />
      </concept>
      <concept id="6439756077573067151" name="com.strumenta.workflow.structure.Start" flags="ng" index="3qIkQ7" />
      <concept id="6439756077573067162" name="com.strumenta.workflow.structure.AbstractWorkflowStep" flags="ng" index="3qIkQi">
        <property id="6439756077573197819" name="id" index="3qHPfN" />
        <child id="6439756077573067166" name="outLinks" index="3qIkQm" />
      </concept>
      <concept id="6439756077573067163" name="com.strumenta.workflow.structure.Link" flags="ng" index="3qIkQj">
        <reference id="6439756077573067168" name="target" index="3qIkQC" />
      </concept>
      <concept id="6439756077573067154" name="com.strumenta.workflow.structure.End" flags="ng" index="3qIkQq" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3qIkQ1" id="5_uB0y3U93e">
    <property role="TrG5h" value="PreparingPresentation" />
    <node concept="3qIkQ7" id="5_uB0y3U93f" role="3qIkQ5">
      <node concept="3qIkQj" id="524SvBgnJS8" role="3qIkQm">
        <ref role="3qIkQC" node="5_uB0y3UpNh" />
      </node>
    </node>
    <node concept="3qHZei" id="5_uB0y3UpNh" role="3qIkQ5">
      <property role="3qHZej" value="list topics" />
      <property role="3qHPfN" value="STE-1" />
      <node concept="3qIkQj" id="1U_J2td9ssJ" role="3qIkQm">
        <ref role="3qIkQC" node="5_uB0y3UpNp" />
      </node>
    </node>
    <node concept="3qHZei" id="5_uB0y3UpNp" role="3qIkQ5">
      <property role="3qHZej" value="prepare slides" />
      <node concept="3qIkQj" id="1U_J2td9ssN" role="3qIkQm">
        <ref role="3qIkQC" node="5_uB0y3UpNz" />
      </node>
      <node concept="3qIkQj" id="1U_J2td9ssR" role="3qIkQm">
        <ref role="3qIkQC" node="5_uB0y3UpNJ" />
      </node>
    </node>
    <node concept="3qHZei" id="5_uB0y3UpNz" role="3qIkQ5">
      <property role="3qHZej" value="prepare demos" />
      <node concept="3qIkQj" id="1U_J2td8YP5" role="3qIkQm">
        <ref role="3qIkQC" node="5_uB0y3UpNJ" />
      </node>
    </node>
    <node concept="3qHZei" id="5_uB0y3UpNJ" role="3qIkQ5">
      <property role="3qHZej" value="rehearse" />
      <node concept="3qIkQj" id="5_uB0y3V0xn" role="3qIkQm">
        <ref role="3qIkQC" node="5_uB0y3UpNX" />
      </node>
    </node>
    <node concept="3qIkQq" id="5_uB0y3UpNX" role="3qIkQ5" />
  </node>
</model>

