<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:606b38cf-fac8-4bb4-a513-b29dd429ae99(com.strumenta.workflow.mpsserverextensions.extensions)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="e4as" ref="r:0b41bd2a-d72e-4e3a-8bde-c68965ce30dd(com.strumenta.mpsserver.extensionkit.code)" />
    <import index="o69o" ref="r:24e6972a-8fd6-40f7-9c1a-8b4c6ef40a2d(com.strumenta.workflow.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="io0c" ref="r:6b91e8b5-829a-475b-bc35-17fa4d79c418(com.strumenta.workflow.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1168401810208" name="jetbrains.mps.baseLanguage.logging.structure.PrintStatement" flags="nn" index="abc8K">
        <child id="1168401864803" name="textExpression" index="abp_N" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
    </language>
  </registry>
  <node concept="312cEu" id="hu$DhQg_5z">
    <property role="TrG5h" value="MyExtension" />
    <node concept="3Tm1VV" id="hu$DhQg_5$" role="1B3o_S" />
    <node concept="3uibUv" id="hu$DhQgCk9" role="EKbjA">
      <ref role="3uigEE" to="e4as:2OkDVTX2Kdi" resolve="MPSServerExtension" />
    </node>
    <node concept="3clFb_" id="hu$DhQgCl0" role="jymVt">
      <property role="TrG5h" value="activate" />
      <node concept="3Tm1VV" id="hu$DhQgCl2" role="1B3o_S" />
      <node concept="3cqZAl" id="hu$DhQgCl3" role="3clF45" />
      <node concept="37vLTG" id="hu$DhQgCl4" role="3clF46">
        <property role="TrG5h" value="server" />
        <node concept="3uibUv" id="hu$DhQgCl5" role="1tU5fm">
          <ref role="3uigEE" to="e4as:4JnP3TVzc4K" resolve="ExtendableServer" />
        </node>
      </node>
      <node concept="3clFbS" id="hu$DhQgClb" role="3clF47">
        <node concept="abc8K" id="2jT6WJ_BRdb" role="3cqZAp">
          <node concept="Xl_RD" id="2jT6WJ_BRne" role="abp_N">
            <property role="Xl_RC" value="ADDING MY EXTENSION" />
          </node>
        </node>
        <node concept="3clFbF" id="hu$DhQgCrh" role="3cqZAp">
          <node concept="2OqwBi" id="hu$DhQgCuf" role="3clFbG">
            <node concept="37vLTw" id="hu$DhQgCrg" role="2Oq$k0">
              <ref role="3cqZAo" node="hu$DhQgCl4" resolve="server" />
            </node>
            <node concept="liA8E" id="hu$DhQgCyf" role="2OqNvi">
              <ref role="37wK5l" to="e4as:i07tI0JL0g" resolve="registerConceptSpecificAction" />
              <node concept="2OqwBi" id="hu$DhQgG4Y" role="37wK5m">
                <node concept="35c_gC" id="hu$DhQgFtV" role="2Oq$k0">
                  <ref role="35c_gD" to="o69o:5_uB0y3TX69" resolve="Workflow" />
                </node>
                <node concept="liA8E" id="3JXcRSpiN3Q" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getQualifiedName()" resolve="getQualifiedName" />
                </node>
              </node>
              <node concept="Xl_RD" id="hu$DhQgGnu" role="37wK5m">
                <property role="Xl_RC" value="link" />
              </node>
              <node concept="2ShNRf" id="hu$DhQgGOX" role="37wK5m">
                <node concept="YeOm9" id="hu$DhQgI1E" role="2ShVmc">
                  <node concept="1Y3b0j" id="hu$DhQgI1H" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="e4as:i07tI0JCFB" resolve="Action" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="hu$DhQgI1I" role="1B3o_S" />
                    <node concept="3clFb_" id="hu$DhQgI1N" role="jymVt">
                      <property role="TrG5h" value="execute" />
                      <node concept="3Tm1VV" id="hu$DhQgI1P" role="1B3o_S" />
                      <node concept="3uibUv" id="hu$DhQgI1Q" role="3clF45">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="37vLTG" id="hu$DhQgI1R" role="3clF46">
                        <property role="TrG5h" value="node" />
                        <node concept="3uibUv" id="hu$DhQgI1S" role="1tU5fm">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="hu$DhQgI1T" role="3clF46">
                        <property role="TrG5h" value="params" />
                        <node concept="3uibUv" id="hu$DhQgI1U" role="1tU5fm">
                          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                          <node concept="3uibUv" id="hu$DhQgI1V" role="11_B2D">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                          <node concept="3uibUv" id="hu$DhQgI1W" role="11_B2D">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="hu$DhQgI1X" role="3clF47">
                        <node concept="3cpWs8" id="3JXcRSpipju" role="3cqZAp">
                          <node concept="3cpWsn" id="3JXcRSpipjv" role="3cpWs9">
                            <property role="TrG5h" value="sourceId" />
                            <node concept="17QB3L" id="3JXcRSpipjw" role="1tU5fm" />
                            <node concept="2OqwBi" id="3JXcRSpipjx" role="33vP2m">
                              <node concept="37vLTw" id="3JXcRSpipjy" role="2Oq$k0">
                                <ref role="3cqZAo" node="hu$DhQgI1T" resolve="params" />
                              </node>
                              <node concept="liA8E" id="3JXcRSpipjz" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                                <node concept="Xl_RD" id="3JXcRSpipj$" role="37wK5m">
                                  <property role="Xl_RC" value="sourceId" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="hu$DhQgNVE" role="3cqZAp">
                          <node concept="3cpWsn" id="hu$DhQgNVH" role="3cpWs9">
                            <property role="TrG5h" value="targetId" />
                            <node concept="17QB3L" id="hu$DhQgNVD" role="1tU5fm" />
                            <node concept="2OqwBi" id="hu$DhQgOhT" role="33vP2m">
                              <node concept="37vLTw" id="hu$DhQgNZe" role="2Oq$k0">
                                <ref role="3cqZAo" node="hu$DhQgI1T" resolve="params" />
                              </node>
                              <node concept="liA8E" id="hu$DhQgOKv" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                                <node concept="Xl_RD" id="hu$DhQgOTy" role="37wK5m">
                                  <property role="Xl_RC" value="targetId" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="abc8K" id="3JXcRSpiqp6" role="3cqZAp">
                          <node concept="Xl_RD" id="3JXcRSpiqEY" role="abp_N">
                            <property role="Xl_RC" value="linking " />
                          </node>
                          <node concept="37vLTw" id="3JXcRSpir3N" role="abp_N">
                            <ref role="3cqZAo" node="3JXcRSpipjv" resolve="sourceId" />
                          </node>
                          <node concept="Xl_RD" id="3JXcRSpir8d" role="abp_N">
                            <property role="Xl_RC" value=" and " />
                          </node>
                          <node concept="37vLTw" id="3JXcRSpirax" role="abp_N">
                            <ref role="3cqZAo" node="hu$DhQgNVH" resolve="targetId" />
                          </node>
                        </node>
                        <node concept="3cpWs8" id="524SvBgn51d" role="3cqZAp">
                          <node concept="3cpWsn" id="524SvBgn51g" role="3cpWs9">
                            <property role="TrG5h" value="workflow" />
                            <node concept="3Tqbb2" id="524SvBgn51b" role="1tU5fm">
                              <ref role="ehGHo" to="o69o:5_uB0y3TX69" resolve="Workflow" />
                            </node>
                            <node concept="1PxgMI" id="524SvBgn5xd" role="33vP2m">
                              <node concept="chp4Y" id="524SvBgn5zH" role="3oSUPX">
                                <ref role="cht4Q" to="o69o:5_uB0y3TX69" resolve="Workflow" />
                              </node>
                              <node concept="37vLTw" id="524SvBgn5gl" role="1m5AlR">
                                <ref role="3cqZAo" node="hu$DhQgI1R" resolve="node" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="524SvBgn4zZ" role="3cqZAp">
                          <node concept="3cpWsn" id="524SvBgn4$2" role="3cpWs9">
                            <property role="TrG5h" value="source" />
                            <node concept="3Tqbb2" id="524SvBgn4zX" role="1tU5fm">
                              <ref role="ehGHo" to="o69o:5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
                            </node>
                            <node concept="1PxgMI" id="524SvBgnbhx" role="33vP2m">
                              <node concept="chp4Y" id="524SvBgnbxa" role="3oSUPX">
                                <ref role="cht4Q" to="o69o:5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
                              </node>
                              <node concept="2OqwBi" id="524SvBgn6Kh" role="1m5AlR">
                                <node concept="2OqwBi" id="524SvBgn5IK" role="2Oq$k0">
                                  <node concept="37vLTw" id="524SvBgn5_G" role="2Oq$k0">
                                    <ref role="3cqZAo" node="524SvBgn51g" resolve="workflow" />
                                  </node>
                                  <node concept="32TBzR" id="524SvBgn5S4" role="2OqNvi" />
                                </node>
                                <node concept="1z4cxt" id="524SvBgn7Dr" role="2OqNvi">
                                  <node concept="1bVj0M" id="524SvBgn7Dt" role="23t8la">
                                    <node concept="3clFbS" id="524SvBgn7Du" role="1bW5cS">
                                      <node concept="3clFbF" id="524SvBgn7K5" role="3cqZAp">
                                        <node concept="17R0WA" id="524SvBgnatY" role="3clFbG">
                                          <node concept="37vLTw" id="524SvBgnaGr" role="3uHU7w">
                                            <ref role="3cqZAo" node="3JXcRSpipjv" resolve="sourceId" />
                                          </node>
                                          <node concept="2OqwBi" id="524SvBgn8Os" role="3uHU7B">
                                            <node concept="2OqwBi" id="524SvBgn8wQ" role="2Oq$k0">
                                              <node concept="2JrnkZ" id="524SvBgn8d$" role="2Oq$k0">
                                                <node concept="37vLTw" id="524SvBgn7K4" role="2JrQYb">
                                                  <ref role="3cqZAo" node="524SvBgn7Dv" resolve="it" />
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="524SvBgn8EO" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="524SvBgn94N" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Rh6nW" id="524SvBgn7Dv" role="1bW2Oz">
                                      <property role="TrG5h" value="it" />
                                      <node concept="2jxLKc" id="524SvBgn7Dw" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="524SvBgnbBk" role="3cqZAp">
                          <node concept="3cpWsn" id="524SvBgnbBl" role="3cpWs9">
                            <property role="TrG5h" value="target" />
                            <node concept="3Tqbb2" id="524SvBgnbBm" role="1tU5fm">
                              <ref role="ehGHo" to="o69o:5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
                            </node>
                            <node concept="1PxgMI" id="524SvBgnbBn" role="33vP2m">
                              <node concept="chp4Y" id="524SvBgnbBo" role="3oSUPX">
                                <ref role="cht4Q" to="o69o:5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
                              </node>
                              <node concept="2OqwBi" id="524SvBgnbBp" role="1m5AlR">
                                <node concept="2OqwBi" id="524SvBgnbBq" role="2Oq$k0">
                                  <node concept="37vLTw" id="524SvBgnbBr" role="2Oq$k0">
                                    <ref role="3cqZAo" node="524SvBgn51g" resolve="workflow" />
                                  </node>
                                  <node concept="32TBzR" id="524SvBgnbBs" role="2OqNvi" />
                                </node>
                                <node concept="1z4cxt" id="524SvBgnbBt" role="2OqNvi">
                                  <node concept="1bVj0M" id="524SvBgnbBu" role="23t8la">
                                    <node concept="3clFbS" id="524SvBgnbBv" role="1bW5cS">
                                      <node concept="3clFbF" id="524SvBgnbBw" role="3cqZAp">
                                        <node concept="17R0WA" id="524SvBgnbBx" role="3clFbG">
                                          <node concept="37vLTw" id="524SvBgncpd" role="3uHU7w">
                                            <ref role="3cqZAo" node="hu$DhQgNVH" resolve="targetId" />
                                          </node>
                                          <node concept="2OqwBi" id="524SvBgnbBz" role="3uHU7B">
                                            <node concept="2OqwBi" id="524SvBgnbB$" role="2Oq$k0">
                                              <node concept="2JrnkZ" id="524SvBgnbB_" role="2Oq$k0">
                                                <node concept="37vLTw" id="524SvBgnbBA" role="2JrQYb">
                                                  <ref role="3cqZAo" node="524SvBgnbBD" resolve="it" />
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="524SvBgnbBB" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="524SvBgnbBC" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Rh6nW" id="524SvBgnbBD" role="1bW2Oz">
                                      <property role="TrG5h" value="it" />
                                      <node concept="2jxLKc" id="524SvBgnbBE" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="abc8K" id="524SvBgnrCe" role="3cqZAp">
                          <node concept="Xl_RD" id="524SvBgnrVP" role="abp_N">
                            <property role="Xl_RC" value="source " />
                          </node>
                          <node concept="37vLTw" id="524SvBgns1U" role="abp_N">
                            <ref role="3cqZAo" node="524SvBgn4$2" resolve="source" />
                          </node>
                        </node>
                        <node concept="abc8K" id="524SvBgnsgK" role="3cqZAp">
                          <node concept="Xl_RD" id="524SvBgnsC7" role="abp_N">
                            <property role="Xl_RC" value="target " />
                          </node>
                          <node concept="37vLTw" id="524SvBgnsIp" role="abp_N">
                            <ref role="3cqZAo" node="524SvBgnbBl" resolve="target" />
                          </node>
                        </node>
                        <node concept="3clFbF" id="524SvBgncQW" role="3cqZAp">
                          <node concept="2OqwBi" id="524SvBgnd8m" role="3clFbG">
                            <node concept="37vLTw" id="524SvBgncQU" role="2Oq$k0">
                              <ref role="3cqZAo" node="524SvBgn4$2" resolve="source" />
                            </node>
                            <node concept="2qgKlT" id="524SvBgndSL" role="2OqNvi">
                              <ref role="37wK5l" to="io0c:524SvBgnd$2" resolve="linkTo" />
                              <node concept="37vLTw" id="524SvBgndYo" role="37wK5m">
                                <ref role="3cqZAo" node="524SvBgnbBl" resolve="target" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="hu$DhQgPZI" role="3cqZAp">
                          <node concept="3cpWsn" id="hu$DhQgPZL" role="3cpWs9">
                            <property role="TrG5h" value="result" />
                            <node concept="10P_77" id="hu$DhQgPZG" role="1tU5fm" />
                            <node concept="3clFbT" id="hu$DhQgQp3" role="33vP2m" />
                          </node>
                        </node>
                        <node concept="3cpWs6" id="hu$DhQgPgx" role="3cqZAp">
                          <node concept="37vLTw" id="hu$DhQgQad" role="3cqZAk">
                            <ref role="3cqZAo" node="hu$DhQgPZL" resolve="result" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="hu$DhQgI1Z" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="524SvBgn$rd" role="3cqZAp">
          <node concept="2OqwBi" id="524SvBgn$re" role="3clFbG">
            <node concept="37vLTw" id="524SvBgn$rf" role="2Oq$k0">
              <ref role="3cqZAo" node="hu$DhQgCl4" resolve="server" />
            </node>
            <node concept="liA8E" id="524SvBgn$rg" role="2OqNvi">
              <ref role="37wK5l" to="e4as:i07tI0JL0g" resolve="registerConceptSpecificAction" />
              <node concept="2OqwBi" id="524SvBgn$rh" role="37wK5m">
                <node concept="35c_gC" id="524SvBgn$ri" role="2Oq$k0">
                  <ref role="35c_gD" to="o69o:5_uB0y3TX69" resolve="Workflow" />
                </node>
                <node concept="liA8E" id="524SvBgn$rj" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getQualifiedName()" resolve="getQualifiedName" />
                </node>
              </node>
              <node concept="Xl_RD" id="524SvBgn$rk" role="37wK5m">
                <property role="Xl_RC" value="unlink" />
              </node>
              <node concept="2ShNRf" id="524SvBgn$rl" role="37wK5m">
                <node concept="YeOm9" id="524SvBgn$rm" role="2ShVmc">
                  <node concept="1Y3b0j" id="524SvBgn$rn" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="e4as:i07tI0JCFB" resolve="Action" />
                    <node concept="3Tm1VV" id="524SvBgn$ro" role="1B3o_S" />
                    <node concept="3clFb_" id="524SvBgn$rp" role="jymVt">
                      <property role="TrG5h" value="execute" />
                      <node concept="3Tm1VV" id="524SvBgn$rq" role="1B3o_S" />
                      <node concept="3uibUv" id="524SvBgn$rr" role="3clF45">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="37vLTG" id="524SvBgn$rs" role="3clF46">
                        <property role="TrG5h" value="node" />
                        <node concept="3uibUv" id="524SvBgn$rt" role="1tU5fm">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="524SvBgn$ru" role="3clF46">
                        <property role="TrG5h" value="params" />
                        <node concept="3uibUv" id="524SvBgn$rv" role="1tU5fm">
                          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                          <node concept="3uibUv" id="524SvBgn$rw" role="11_B2D">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                          <node concept="3uibUv" id="524SvBgn$rx" role="11_B2D">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="524SvBgn$ry" role="3clF47">
                        <node concept="3cpWs8" id="524SvBgn$rz" role="3cqZAp">
                          <node concept="3cpWsn" id="524SvBgn$r$" role="3cpWs9">
                            <property role="TrG5h" value="sourceId" />
                            <node concept="17QB3L" id="524SvBgn$r_" role="1tU5fm" />
                            <node concept="2OqwBi" id="524SvBgn$rA" role="33vP2m">
                              <node concept="37vLTw" id="524SvBgn$rB" role="2Oq$k0">
                                <ref role="3cqZAo" node="524SvBgn$ru" resolve="params" />
                              </node>
                              <node concept="liA8E" id="524SvBgn$rC" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                                <node concept="Xl_RD" id="524SvBgn$rD" role="37wK5m">
                                  <property role="Xl_RC" value="sourceId" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="524SvBgn$rE" role="3cqZAp">
                          <node concept="3cpWsn" id="524SvBgn$rF" role="3cpWs9">
                            <property role="TrG5h" value="targetId" />
                            <node concept="17QB3L" id="524SvBgn$rG" role="1tU5fm" />
                            <node concept="2OqwBi" id="524SvBgn$rH" role="33vP2m">
                              <node concept="37vLTw" id="524SvBgn$rI" role="2Oq$k0">
                                <ref role="3cqZAo" node="524SvBgn$ru" resolve="params" />
                              </node>
                              <node concept="liA8E" id="524SvBgn$rJ" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                                <node concept="Xl_RD" id="524SvBgn$rK" role="37wK5m">
                                  <property role="Xl_RC" value="targetId" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="abc8K" id="524SvBgn$rL" role="3cqZAp">
                          <node concept="Xl_RD" id="524SvBgn$rM" role="abp_N">
                            <property role="Xl_RC" value="linking " />
                          </node>
                          <node concept="37vLTw" id="524SvBgn$rN" role="abp_N">
                            <ref role="3cqZAo" node="524SvBgn$r$" resolve="sourceId" />
                          </node>
                          <node concept="Xl_RD" id="524SvBgn$rO" role="abp_N">
                            <property role="Xl_RC" value=" and " />
                          </node>
                          <node concept="37vLTw" id="524SvBgn$rP" role="abp_N">
                            <ref role="3cqZAo" node="524SvBgn$rF" resolve="targetId" />
                          </node>
                        </node>
                        <node concept="3cpWs8" id="524SvBgn$rQ" role="3cqZAp">
                          <node concept="3cpWsn" id="524SvBgn$rR" role="3cpWs9">
                            <property role="TrG5h" value="workflow" />
                            <node concept="3Tqbb2" id="524SvBgn$rS" role="1tU5fm">
                              <ref role="ehGHo" to="o69o:5_uB0y3TX69" resolve="Workflow" />
                            </node>
                            <node concept="1PxgMI" id="524SvBgn$rT" role="33vP2m">
                              <node concept="chp4Y" id="524SvBgn$rU" role="3oSUPX">
                                <ref role="cht4Q" to="o69o:5_uB0y3TX69" resolve="Workflow" />
                              </node>
                              <node concept="37vLTw" id="524SvBgn$rV" role="1m5AlR">
                                <ref role="3cqZAo" node="524SvBgn$rs" resolve="node" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="524SvBgn$rW" role="3cqZAp">
                          <node concept="3cpWsn" id="524SvBgn$rX" role="3cpWs9">
                            <property role="TrG5h" value="source" />
                            <node concept="3Tqbb2" id="524SvBgn$rY" role="1tU5fm">
                              <ref role="ehGHo" to="o69o:5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
                            </node>
                            <node concept="1PxgMI" id="524SvBgn$rZ" role="33vP2m">
                              <node concept="chp4Y" id="524SvBgn$s0" role="3oSUPX">
                                <ref role="cht4Q" to="o69o:5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
                              </node>
                              <node concept="2OqwBi" id="524SvBgn$s1" role="1m5AlR">
                                <node concept="2OqwBi" id="524SvBgn$s2" role="2Oq$k0">
                                  <node concept="37vLTw" id="524SvBgn$s3" role="2Oq$k0">
                                    <ref role="3cqZAo" node="524SvBgn$rR" resolve="workflow" />
                                  </node>
                                  <node concept="32TBzR" id="524SvBgn$s4" role="2OqNvi" />
                                </node>
                                <node concept="1z4cxt" id="524SvBgn$s5" role="2OqNvi">
                                  <node concept="1bVj0M" id="524SvBgn$s6" role="23t8la">
                                    <node concept="3clFbS" id="524SvBgn$s7" role="1bW5cS">
                                      <node concept="3clFbF" id="524SvBgn$s8" role="3cqZAp">
                                        <node concept="17R0WA" id="524SvBgn$s9" role="3clFbG">
                                          <node concept="37vLTw" id="524SvBgn$sa" role="3uHU7w">
                                            <ref role="3cqZAo" node="524SvBgn$r$" resolve="sourceId" />
                                          </node>
                                          <node concept="2OqwBi" id="524SvBgn$sb" role="3uHU7B">
                                            <node concept="2OqwBi" id="524SvBgn$sc" role="2Oq$k0">
                                              <node concept="2JrnkZ" id="524SvBgn$sd" role="2Oq$k0">
                                                <node concept="37vLTw" id="524SvBgn$se" role="2JrQYb">
                                                  <ref role="3cqZAo" node="524SvBgn$sh" resolve="it" />
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="524SvBgn$sf" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="524SvBgn$sg" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Rh6nW" id="524SvBgn$sh" role="1bW2Oz">
                                      <property role="TrG5h" value="it" />
                                      <node concept="2jxLKc" id="524SvBgn$si" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="524SvBgn$sj" role="3cqZAp">
                          <node concept="3cpWsn" id="524SvBgn$sk" role="3cpWs9">
                            <property role="TrG5h" value="target" />
                            <node concept="3Tqbb2" id="524SvBgn$sl" role="1tU5fm">
                              <ref role="ehGHo" to="o69o:5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
                            </node>
                            <node concept="1PxgMI" id="524SvBgn$sm" role="33vP2m">
                              <node concept="chp4Y" id="524SvBgn$sn" role="3oSUPX">
                                <ref role="cht4Q" to="o69o:5_uB0y3TX6q" resolve="AbstractWorkflowStep" />
                              </node>
                              <node concept="2OqwBi" id="524SvBgn$so" role="1m5AlR">
                                <node concept="2OqwBi" id="524SvBgn$sp" role="2Oq$k0">
                                  <node concept="37vLTw" id="524SvBgn$sq" role="2Oq$k0">
                                    <ref role="3cqZAo" node="524SvBgn$rR" resolve="workflow" />
                                  </node>
                                  <node concept="32TBzR" id="524SvBgn$sr" role="2OqNvi" />
                                </node>
                                <node concept="1z4cxt" id="524SvBgn$ss" role="2OqNvi">
                                  <node concept="1bVj0M" id="524SvBgn$st" role="23t8la">
                                    <node concept="3clFbS" id="524SvBgn$su" role="1bW5cS">
                                      <node concept="3clFbF" id="524SvBgn$sv" role="3cqZAp">
                                        <node concept="17R0WA" id="524SvBgn$sw" role="3clFbG">
                                          <node concept="37vLTw" id="524SvBgn$sx" role="3uHU7w">
                                            <ref role="3cqZAo" node="524SvBgn$rF" resolve="targetId" />
                                          </node>
                                          <node concept="2OqwBi" id="524SvBgn$sy" role="3uHU7B">
                                            <node concept="2OqwBi" id="524SvBgn$sz" role="2Oq$k0">
                                              <node concept="2JrnkZ" id="524SvBgn$s$" role="2Oq$k0">
                                                <node concept="37vLTw" id="524SvBgn$s_" role="2JrQYb">
                                                  <ref role="3cqZAo" node="524SvBgn$sC" resolve="it" />
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="524SvBgn$sA" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="524SvBgn$sB" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Rh6nW" id="524SvBgn$sC" role="1bW2Oz">
                                      <property role="TrG5h" value="it" />
                                      <node concept="2jxLKc" id="524SvBgn$sD" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="abc8K" id="524SvBgn$sE" role="3cqZAp">
                          <node concept="Xl_RD" id="524SvBgn$sF" role="abp_N">
                            <property role="Xl_RC" value="source " />
                          </node>
                          <node concept="37vLTw" id="524SvBgn$sG" role="abp_N">
                            <ref role="3cqZAo" node="524SvBgn$rX" resolve="source" />
                          </node>
                        </node>
                        <node concept="abc8K" id="524SvBgn$sH" role="3cqZAp">
                          <node concept="Xl_RD" id="524SvBgn$sI" role="abp_N">
                            <property role="Xl_RC" value="target " />
                          </node>
                          <node concept="37vLTw" id="524SvBgn$sJ" role="abp_N">
                            <ref role="3cqZAo" node="524SvBgn$sk" resolve="target" />
                          </node>
                        </node>
                        <node concept="3clFbF" id="524SvBgn$sK" role="3cqZAp">
                          <node concept="2OqwBi" id="524SvBgn$sL" role="3clFbG">
                            <node concept="37vLTw" id="524SvBgn$sM" role="2Oq$k0">
                              <ref role="3cqZAo" node="524SvBgn$rX" resolve="source" />
                            </node>
                            <node concept="2qgKlT" id="524SvBgn$sN" role="2OqNvi">
                              <ref role="37wK5l" to="io0c:524SvBgnwDO" resolve="unlinkFrom" />
                              <node concept="37vLTw" id="524SvBgn$sO" role="37wK5m">
                                <ref role="3cqZAo" node="524SvBgn$sk" resolve="target" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="524SvBgn$sP" role="3cqZAp">
                          <node concept="3cpWsn" id="524SvBgn$sQ" role="3cpWs9">
                            <property role="TrG5h" value="result" />
                            <node concept="10P_77" id="524SvBgn$sR" role="1tU5fm" />
                            <node concept="3clFbT" id="524SvBgn$sS" role="33vP2m" />
                          </node>
                        </node>
                        <node concept="3cpWs6" id="524SvBgn$sT" role="3cqZAp">
                          <node concept="37vLTw" id="524SvBgn$sU" role="3cqZAk">
                            <ref role="3cqZAo" node="524SvBgn$sQ" resolve="result" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="524SvBgn$sV" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="hu$DhQgClc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

