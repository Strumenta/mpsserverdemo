<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6b91e8b5-829a-475b-bc35-17fa4d79c418(com.strumenta.workflow.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="o69o" ref="r:24e6972a-8fd6-40f7-9c1a-8b4c6ef40a2d(com.strumenta.workflow.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="13h7C7" id="5_uB0y3Up99">
    <ref role="13h7C2" to="o69o:5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
    <node concept="13i0hz" id="5_uB0y3Up9k" role="13h7CS">
      <property role="TrG5h" value="canHaveManyOutLinks" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="5_uB0y3Up9l" role="1B3o_S" />
      <node concept="10P_77" id="5_uB0y3Up9$" role="3clF45" />
      <node concept="3clFbS" id="5_uB0y3Up9n" role="3clF47">
        <node concept="3cpWs6" id="5_uB0y3Upan" role="3cqZAp">
          <node concept="3clFbT" id="5_uB0y3UpaE" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5_uB0y3UrLS" role="13h7CS">
      <property role="TrG5h" value="defaultId" />
      <node concept="3Tm1VV" id="5_uB0y3UtID" role="1B3o_S" />
      <node concept="17QB3L" id="5_uB0y3UrMe" role="3clF45" />
      <node concept="3clFbS" id="5_uB0y3UrLV" role="3clF47">
        <node concept="3cpWs6" id="5_uB0y3UsdR" role="3cqZAp">
          <node concept="3cpWs3" id="5_uB0y3Uszi" role="3cqZAk">
            <node concept="2OqwBi" id="5_uB0y3UsJ3" role="3uHU7w">
              <node concept="13iPFW" id="5_uB0y3Uszp" role="2Oq$k0" />
              <node concept="2bSWHS" id="5_uB0y3UsQa" role="2OqNvi" />
            </node>
            <node concept="Xl_RD" id="5_uB0y3Usf9" role="3uHU7B">
              <property role="Xl_RC" value="STEP-" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="524SvBgnd$2" role="13h7CS">
      <property role="TrG5h" value="linkTo" />
      <node concept="37vLTG" id="524SvBgnd_r" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="524SvBgnd_D" role="1tU5fm">
          <ref role="ehGHo" to="o69o:5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
        </node>
      </node>
      <node concept="3Tm1VV" id="524SvBgnd$3" role="1B3o_S" />
      <node concept="10P_77" id="524SvBgnvy0" role="3clF45" />
      <node concept="3clFbS" id="524SvBgnd$5" role="3clF47">
        <node concept="3clFbJ" id="524SvBgnw2L" role="3cqZAp">
          <node concept="3clFbS" id="524SvBgnw2N" role="3clFbx">
            <node concept="3cpWs6" id="524SvBgnwlO" role="3cqZAp">
              <node concept="3clFbT" id="524SvBgnwlU" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="524SvBgnwdI" role="3clFbw">
            <node concept="13iPFW" id="524SvBgnwa8" role="2Oq$k0" />
            <node concept="1mIQ4w" id="524SvBgnwfh" role="2OqNvi">
              <node concept="chp4Y" id="524SvBgnwhA" role="cj9EA">
                <ref role="cht4Q" to="o69o:5_uB0y3TX6i" resolve="End" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="524SvBgne57" role="3cqZAp">
          <node concept="2OqwBi" id="524SvBgnf_9" role="3clFbG">
            <node concept="2OqwBi" id="524SvBgnec5" role="2Oq$k0">
              <node concept="13iPFW" id="524SvBgne56" role="2Oq$k0" />
              <node concept="3Tsc0h" id="524SvBgnedl" role="2OqNvi">
                <ref role="3TtcxE" to="o69o:5_uB0y3TX6u" resolve="outLinks" />
              </node>
            </node>
            <node concept="TSZUe" id="524SvBgngNs" role="2OqNvi">
              <node concept="2pJPEk" id="524SvBgngW4" role="25WWJ7">
                <node concept="2pJPED" id="524SvBgnh7p" role="2pJPEn">
                  <ref role="2pJxaS" to="o69o:5_uB0y3TX6r" resolve="Link" />
                  <node concept="2pIpSj" id="524SvBgnhnP" role="2pJxcM">
                    <ref role="2pIpSl" to="o69o:5_uB0y3TX6w" resolve="target" />
                    <node concept="36biLy" id="524SvBgnhws" role="28nt2d">
                      <node concept="37vLTw" id="524SvBgnhyr" role="36biLW">
                        <ref role="3cqZAo" node="524SvBgnd_r" resolve="target" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="524SvBgnvOC" role="3cqZAp">
          <node concept="3clFbT" id="524SvBgnvOT" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="524SvBgnwDO" role="13h7CS">
      <property role="TrG5h" value="unlinkFrom" />
      <node concept="37vLTG" id="524SvBgnwDP" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="524SvBgnwDQ" role="1tU5fm">
          <ref role="ehGHo" to="o69o:5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
        </node>
      </node>
      <node concept="3Tm1VV" id="524SvBgnwDR" role="1B3o_S" />
      <node concept="10P_77" id="524SvBgnwDS" role="3clF45" />
      <node concept="3clFbS" id="524SvBgnwDT" role="3clF47">
        <node concept="2Gpval" id="524SvBgnxL9" role="3cqZAp">
          <node concept="2GrKxI" id="524SvBgnxLb" role="2Gsz3X">
            <property role="TrG5h" value="link" />
          </node>
          <node concept="2OqwBi" id="524SvBgnxPS" role="2GsD0m">
            <node concept="13iPFW" id="524SvBgnxLY" role="2Oq$k0" />
            <node concept="3Tsc0h" id="524SvBgnxR0" role="2OqNvi">
              <ref role="3TtcxE" to="o69o:5_uB0y3TX6u" resolve="outLinks" />
            </node>
          </node>
          <node concept="3clFbS" id="524SvBgnxLf" role="2LFqv$">
            <node concept="3clFbJ" id="524SvBgnxTw" role="3cqZAp">
              <node concept="3clFbC" id="524SvBgnzdo" role="3clFbw">
                <node concept="37vLTw" id="524SvBgnzn5" role="3uHU7w">
                  <ref role="3cqZAo" node="524SvBgnwDP" resolve="target" />
                </node>
                <node concept="2OqwBi" id="524SvBgny2$" role="3uHU7B">
                  <node concept="2GrUjf" id="524SvBgnxTQ" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="524SvBgnxLb" resolve="link" />
                  </node>
                  <node concept="3TrEf2" id="524SvBgnyaE" role="2OqNvi">
                    <ref role="3Tt5mk" to="o69o:5_uB0y3TX6w" resolve="target" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="524SvBgnxTy" role="3clFbx">
                <node concept="3clFbF" id="524SvBgnznB" role="3cqZAp">
                  <node concept="2OqwBi" id="524SvBgnzus" role="3clFbG">
                    <node concept="2GrUjf" id="524SvBgnznA" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="524SvBgnxLb" resolve="link" />
                    </node>
                    <node concept="3YRAZt" id="524SvBgnzK6" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3cpWs6" id="524SvBgnzMf" role="3cqZAp">
                  <node concept="3clFbT" id="524SvBgnzMD" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="524SvBgnwEd" role="3cqZAp">
          <node concept="3clFbT" id="524SvBgnwEe" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="5_uB0y3Up9a" role="13h7CW">
      <node concept="3clFbS" id="5_uB0y3Up9b" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="5_uB0y3UJrR">
    <ref role="13h7C2" to="o69o:5_uB0y3UmYq" resolve="Action" />
    <node concept="13hLZK" id="5_uB0y3UJrS" role="13h7CW">
      <node concept="3clFbS" id="5_uB0y3UJrT" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5_uB0y3UJs2" role="13h7CS">
      <property role="TrG5h" value="getPresentation" />
      <ref role="13i0hy" to="tpcu:hEwIMiw" resolve="getPresentation" />
      <node concept="3Tm1VV" id="5_uB0y3UJst" role="1B3o_S" />
      <node concept="3clFbS" id="5_uB0y3UJsu" role="3clF47">
        <node concept="3cpWs6" id="5_uB0y3UJwI" role="3cqZAp">
          <node concept="3cpWs3" id="5_uB0y3UKDd" role="3cqZAk">
            <node concept="Xl_RD" id="5_uB0y3UKE3" role="3uHU7w">
              <property role="Xl_RC" value="&gt;" />
            </node>
            <node concept="3cpWs3" id="5_uB0y3UKc$" role="3uHU7B">
              <node concept="Xl_RD" id="5_uB0y3UJUo" role="3uHU7B">
                <property role="Xl_RC" value="action &lt;" />
              </node>
              <node concept="2OqwBi" id="5_uB0y3UKoZ" role="3uHU7w">
                <node concept="13iPFW" id="5_uB0y3UKcF" role="2Oq$k0" />
                <node concept="3TrcHB" id="5_uB0y3UKxW" role="2OqNvi">
                  <ref role="3TsBF5" to="o69o:5_uB0y3UmYr" resolve="description" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5_uB0y3UJsv" role="3clF45" />
    </node>
  </node>
</model>

