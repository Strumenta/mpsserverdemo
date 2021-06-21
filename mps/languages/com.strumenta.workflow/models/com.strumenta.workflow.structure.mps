<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:24e6972a-8fd6-40f7-9c1a-8b4c6ef40a2d(com.strumenta.workflow.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="5_uB0y3TX69">
    <property role="EcuMT" value="6439756077573067145" />
    <property role="TrG5h" value="Workflow" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5_uB0y3TX6d" role="1TKVEi">
      <property role="IQ2ns" value="6439756077573067149" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="steps" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
    </node>
    <node concept="PrWs8" id="5_uB0y3TX6a" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="5_uB0y3TX6f">
    <property role="EcuMT" value="6439756077573067151" />
    <property role="TrG5h" value="Start" />
    <ref role="1TJDcQ" node="5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
  </node>
  <node concept="1TIwiD" id="5_uB0y3TX6i">
    <property role="EcuMT" value="6439756077573067154" />
    <property role="TrG5h" value="End" />
    <ref role="1TJDcQ" node="5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
  </node>
  <node concept="1TIwiD" id="5_uB0y3TX6l">
    <property role="EcuMT" value="6439756077573067157" />
    <property role="TrG5h" value="Decision" />
    <ref role="1TJDcQ" node="5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
    <node concept="1TJgyi" id="5_uB0y3TX6o" role="1TKVEl">
      <property role="IQ2nx" value="6439756077573067160" />
      <property role="TrG5h" value="description" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="5_uB0y3TX6q">
    <property role="EcuMT" value="6439756077573067162" />
    <property role="TrG5h" value="AbstractWorkflowStep" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5_uB0y3UsZV" role="1TKVEl">
      <property role="IQ2nx" value="6439756077573197819" />
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="5_uB0y3TX6u" role="1TKVEi">
      <property role="IQ2ns" value="6439756077573067166" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="outLinks" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5_uB0y3TX6r" resolve="Link" />
    </node>
  </node>
  <node concept="1TIwiD" id="5_uB0y3TX6r">
    <property role="EcuMT" value="6439756077573067163" />
    <property role="TrG5h" value="Link" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5_uB0y3TX6w" role="1TKVEi">
      <property role="IQ2ns" value="6439756077573067168" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
    </node>
  </node>
  <node concept="1TIwiD" id="5_uB0y3UmYq">
    <property role="EcuMT" value="6439756077573173146" />
    <property role="TrG5h" value="Action" />
    <ref role="1TJDcQ" node="5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
    <node concept="1TJgyi" id="5_uB0y3UmYr" role="1TKVEl">
      <property role="IQ2nx" value="6439756077573173147" />
      <property role="TrG5h" value="description" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>

