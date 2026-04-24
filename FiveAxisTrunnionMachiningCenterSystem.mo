within FiveAxisMachineHardware;
model FiveAxisTrunnionMachiningCenterSystem
  Modelica.Mechanics.Rotational.Sources.Torque spindleDriveTorque 
    annotation(Placement(transformation(origin={-306,370},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.Inertia spindleMotor(J=0.035) 
    annotation(Placement(transformation(origin={-278,370},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.SpringDamper spindleShaft(c=18000, d=40) 
    annotation(Placement(transformation(origin={-236,370},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.Inertia spindleHead(J=0.42) 
    annotation(Placement(transformation(origin={-194,370},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.Damper spindleBearing(d=6) 
    annotation(Placement(transformation(origin={-194,406},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.Fixed spindleFixed 
    annotation(Placement(transformation(origin={-152,406},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Sources.Torque spindleCutTorque 
    annotation(Placement(transformation(origin={-152,370},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Sensors.SpeedSensor spindleSpeedSensor 
    annotation(Placement(transformation(origin={-152,338},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Step spindleRef(height=900, startTime=0.2) 
    annotation(Placement(transformation(origin={-646,336},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add spindleErr(k1=1, k2=-1) 
    annotation(Placement(transformation(origin={-478,376},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Step cuttingTorque(height=-220, startTime=5) 
    annotation(Placement(transformation(origin={-536,294},
extent={{-10,-10},{10,10}})));

  Modelica.Mechanics.Rotational.Sources.Torque xMotorTorque 
    annotation(Placement(transformation(origin={-316,210},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.Inertia xMotor(J=0.012) 
    annotation(Placement(transformation(origin={-278,210},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.IdealGear xGear(ratio=2) 
    annotation(Placement(transformation(origin={-236,210},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.IdealGearR2T xScrew(ratio=314.159265) 
    annotation(Placement(transformation(origin={-194,210},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.SpringDamper xCompliance(c=7e6, d=8000) 
    annotation(Placement(transformation(origin={-152,210},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.Mass xTable(m=260) 
    annotation(Placement(transformation(origin={-110,210},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.Damper xGuide(d=3200) 
    annotation(Placement(transformation(origin={-110,246},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.Fixed xFixed 
    annotation(Placement(transformation(origin={-68,246},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Sources.Force xCutForce 
    annotation(Placement(transformation(origin={-68,210},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Sensors.PositionSensor xPosSensor 
    annotation(Placement(transformation(origin={-68,180},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Step xRef(height=0.22, startTime=0.6) 
    annotation(Placement(transformation(origin={-640,218},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Step xLoad(height=-3200, startTime=5) 
    annotation(Placement(transformation(origin={-490,170},
extent={{-10,-10},{10,10}})));

  Modelica.Mechanics.Rotational.Sources.Torque yMotorTorque 
    annotation(Placement(transformation(origin={-316,44},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.Inertia yMotor(J=0.011) 
    annotation(Placement(transformation(origin={-278,44},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.IdealGear yGear(ratio=2) 
    annotation(Placement(transformation(origin={-236,44},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.IdealGearR2T yScrew(ratio=314.159265) 
    annotation(Placement(transformation(origin={-194,44},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.SpringDamper yCompliance(c=6.5e6, d=7500) 
    annotation(Placement(transformation(origin={-152,44},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.Mass ySaddle(m=220) 
    annotation(Placement(transformation(origin={-110,44},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.Damper yGuide(d=2900) 
    annotation(Placement(transformation(origin={-110,80},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.Fixed yFixed 
    annotation(Placement(transformation(origin={-68,80},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Sources.Force yCutForce 
    annotation(Placement(transformation(origin={-68,44},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Sensors.PositionSensor yPosSensor 
    annotation(Placement(transformation(origin={-68,10},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Step yRef(height=0.16, startTime=0.9) 
    annotation(Placement(transformation(origin={-658,28},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Step yLoad(height=-2500, startTime=5) 
    annotation(Placement(transformation(origin={-626,-8},
extent={{-10,-10},{10,10}})));

  Modelica.Mechanics.Rotational.Sources.Torque zMotorTorque 
    annotation(Placement(transformation(origin={-326,-138},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.Inertia zMotor(J=0.010) 
    annotation(Placement(transformation(origin={-288,-138},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.IdealGear zGear(ratio=2) 
    annotation(Placement(transformation(origin={-246,-138},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.IdealGearR2T zScrew(ratio=314.159265) 
    annotation(Placement(transformation(origin={-204,-138},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.SpringDamper zCompliance(c=6e6, d=7000) 
    annotation(Placement(transformation(origin={-162,-138},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.Mass zRam(m=180) 
    annotation(Placement(transformation(origin={-120,-138},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.Damper zGuide(d=2600) 
    annotation(Placement(transformation(origin={-120,-102},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.Fixed zFixed 
    annotation(Placement(transformation(origin={-78,-102},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Sources.Force zCutForce 
    annotation(Placement(transformation(origin={-78,-138},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Sensors.PositionSensor zPosSensor 
    annotation(Placement(transformation(origin={-78,-172},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Step zRef(height=0.12, startTime=1.2) 
    annotation(Placement(transformation(origin={-654,-154},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Step zLoad(height=-2200, startTime=5) 
    annotation(Placement(transformation(origin={-696,-188},
extent={{-10,-10},{10,10}})));

  Modelica.Mechanics.Rotational.Sources.Torque aMotorTorque 
    annotation(Placement(transformation(origin={-274,-344},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.Inertia aMotor(J=0.008) 
    annotation(Placement(transformation(origin={-236,-344},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.SpringDamper aDrive(c=8000, d=25) 
    annotation(Placement(transformation(origin={-194,-344},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.Inertia aTable(J=0.16) 
    annotation(Placement(transformation(origin={-152,-344},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.Damper aFriction(d=2.5) 
    annotation(Placement(transformation(origin={-152,-308},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.Fixed aFixed 
    annotation(Placement(transformation(origin={-110,-308},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Sources.Torque aLoadTorque 
    annotation(Placement(transformation(origin={-110,-344},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor aAngleSensor 
    annotation(Placement(transformation(origin={-110,-376},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Step aRef(height=0.35, startTime=1.5) 
    annotation(Placement(transformation(origin={-628,-360},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Step aDist(height=-8, startTime=5) 
    annotation(Placement(transformation(origin={-696,-424},
extent={{-10,-10},{10,10}})));

  Modelica.Mechanics.Rotational.Sources.Torque cMotorTorque 
    annotation(Placement(transformation(origin={-274,-562},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.Inertia cMotor(J=0.010) 
    annotation(Placement(transformation(origin={-236,-562},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.SpringDamper cDrive(c=8500, d=28) 
    annotation(Placement(transformation(origin={-194,-562},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.Inertia cTable(J=0.24) 
    annotation(Placement(transformation(origin={-152,-562},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.Damper cFriction(d=3.0) 
    annotation(Placement(transformation(origin={-152,-526},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.Fixed cFixed 
    annotation(Placement(transformation(origin={-110,-526},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Sources.Torque cLoadTorque 
    annotation(Placement(transformation(origin={-110,-562},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor cAngleSensor 
    annotation(Placement(transformation(origin={-110,-594},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Step cRef(height=1.4, startTime=1.8) 
    annotation(Placement(transformation(origin={-606,-574},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Step cDist(height=-12, startTime=5) 
    annotation(Placement(transformation(origin={-707,-605},
extent={{-7,-7},{7,7}})));

  Modelica.Blocks.Interfaces.RealOutput spindle_w 
    annotation(Placement(transformation(origin={-90,370},
extent={{-10,-10},{10,10}}),
iconTransformation(origin={-90,260},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Interfaces.RealOutput x_pos 
    annotation(Placement(transformation(origin={2,180},
extent={{-10,-10},{10,10}}),
iconTransformation(origin={-30,152},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Interfaces.RealOutput y_pos 
    annotation(Placement(transformation(origin={-30,44},
extent={{-10,-10},{10,10}}),
iconTransformation(origin={-30,44},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Interfaces.RealOutput z_pos 
    annotation(Placement(transformation(origin={-40,-138},
extent={{-10,-10},{10,10}}),
iconTransformation(origin={-30,-64},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Interfaces.RealOutput a_angle 
    annotation(Placement(transformation(origin={-48,-344},
extent={{-10,-10},{10,10}}),
iconTransformation(origin={-90,-176},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Interfaces.RealOutput c_angle 
    annotation(Placement(transformation(origin={-48,-562},
extent={{-10,-10},{10,10}}),
iconTransformation(origin={-90,-288},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.PI PI1(k=-10,T=0.1) 
    annotation (Placement(transformation(origin={-436,376},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.PI PI2(k=16,T=0.05) 
    annotation (Placement(transformation(origin={-362,368},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.Derivative derivative 
    annotation (Placement(transformation(origin={-558,380},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter(uMax=9000000) 
    annotation (Placement(transformation(origin={-334,368},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.Derivative derivative1 
    annotation (Placement(transformation(origin={-558,348},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add3 add3_1(k3=-1) 
    annotation (Placement(transformation(origin={-394,368},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add3 add3_2(k3=-1) 
    annotation (Placement(transformation(origin={-422,238},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter1(uMax=9000000) 
    annotation (Placement(transformation(origin={-362,238},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.PI PI3(k=20,T=0.5) 
    annotation (Placement(transformation(origin={-390,238},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.PI PI4(k=-6,T=0.5) 
    annotation (Placement(transformation(origin={-464,246},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.Derivative derivative2 
    annotation (Placement(transformation(origin={-586,218},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.Derivative derivative3 
    annotation (Placement(transformation(origin={-586,252},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add spindleErr1(k1=1, k2=-1) 
    annotation(Placement(transformation(origin={-506,246},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add spindleErr2(k1=1, k2=-1) 
    annotation(Placement(transformation(origin={-490,52},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.Derivative derivative4 
    annotation (Placement(transformation(origin={-570,58},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.PI PI5(k=-6,T=0.5) 
    annotation (Placement(transformation(origin={-448,52},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.PI PI6(k=20,T=0.5) 
    annotation (Placement(transformation(origin={-374,44},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter2(uMax=9000000) 
    annotation (Placement(transformation(origin={-346,44},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add3 add3_3(k3=-1) 
    annotation (Placement(transformation(origin={-406,44},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.Derivative derivative5 
    annotation (Placement(transformation(origin={-570,28},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.Derivative derivative6 
    annotation (Placement(transformation(origin={-586,-154},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add3 add3_4(k3=-1) 
    annotation (Placement(transformation(origin={-422,-138},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter3(uMax=9000000) 
    annotation (Placement(transformation(origin={-362,-138},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.PI PI7(k=20,T=0.5) 
    annotation (Placement(transformation(origin={-390,-138},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.PI PI8(k=-6,T=0.5) 
    annotation (Placement(transformation(origin={-464,-130},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.Derivative derivative7 
    annotation (Placement(transformation(origin={-586,-124},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add spindleErr3(k1=1, k2=-1) 
    annotation(Placement(transformation(origin={-506,-130},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add spindleErr4(k1=1, k2=-1) 
    annotation(Placement(transformation(origin={-464,-336},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.Derivative derivative8 
    annotation (Placement(transformation(origin={-544,-330},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter4(uMax=900) 
    annotation (Placement(transformation(origin={-320,-344},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add3 add3_5(k3=-1,k1=1) 
    annotation (Placement(transformation(origin={-380,-344},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.Derivative derivative9 
    annotation (Placement(transformation(origin={-544,-360},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.PI PI11(k=-0.1,T=0.1) 
    annotation (Placement(transformation(origin={-422,-336},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.PI PI9(k=120,T=0.1) 
    annotation (Placement(transformation(origin={-350,-344},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter5(uMax=900) 
    annotation (Placement(transformation(origin={-504,-330},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter6(uMax=900) 
    annotation (Placement(transformation(origin={-504,-544},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.PI PI10(k=120,T=0.1) 
    annotation (Placement(transformation(origin={-350,-558},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.PI PI12(k=-0.1,T=0.1) 
    annotation (Placement(transformation(origin={-422,-550},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.Derivative derivative10 
    annotation (Placement(transformation(origin={-544,-574},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add3 add3_6(k3=-1,k1=1) 
    annotation (Placement(transformation(origin={-380,-558},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter7(uMax=900) 
    annotation (Placement(transformation(origin={-320,-558},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.Derivative derivative11 
    annotation (Placement(transformation(origin={-544,-544},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add spindleErr5(k1=1, k2=-1) 
    annotation(Placement(transformation(origin={-464,-550},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add clampForceCmd(k1=1, k2=1) 
    annotation(Placement(transformation(origin={-862,-895},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Step clampLeak1(height=-1800, startTime=5) 
    annotation(Placement(transformation(origin={-970,-901},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.FirstOrder clampValve(k=1, T=0.012) 
    annotation(Placement(transformation(origin={-824,-852},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add clampPI(k1=1, k2=1) 
    annotation(Placement(transformation(origin={-862,-859},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.Integrator clampI(k=25) 
    annotation(Placement(transformation(origin={-900,-869},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Gain clampP(k=0.25) 
    annotation(Placement(transformation(origin={-900,-837},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add clampErr(k1=1, k2=-1) 
    annotation(Placement(transformation(origin={-936,-863},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Step clampRef1(height=18000, startTime=0.5) 
    annotation(Placement(transformation(origin={-970,-863},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.Fixed clampFixed1 
    annotation(Placement(transformation(origin={-632,-877},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.SpringDamper clampSpring1(c=5.5e6, d=2.4e4) 
    annotation(Placement(transformation(origin={-674,-877},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Sensors.ForceSensor clampForceSensor1 
    annotation(Placement(transformation(origin={-716,-877},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Components.Mass drawbar1(m=12) 
    annotation(Placement(transformation(origin={-758,-877},
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Translational.Sources.Force clampCylinder1 
    annotation(Placement(transformation(origin={-796,-877},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Interfaces.RealOutput clamp_force1 
    annotation(Placement(transformation(origin={-570,-877},
extent={{-10,-10},{10,10}}),
iconTransformation(origin={-90,-404},
extent={{-10,-10},{10,10}})));
  equation
  connect(spindleDriveTorque.flange, spindleMotor.flange_a) annotation(Line(origin={0,110},
points={{-296,260},{-288,260}},
color={95,95,95}));
  connect(spindleMotor.flange_b, spindleShaft.flange_a) annotation(Line(origin={0,110},
points={{-268,260},{-246,260}},
color={95,95,95}));
  connect(spindleShaft.flange_b, spindleHead.flange_a) annotation(Line(origin={0,110},
points={{-226,260},{-204,260}},
color={95,95,95}));
  connect(spindleHead.flange_b, spindleCutTorque.flange) annotation(Line(origin={0,110},
points={{-184,260},{-142,260}},
color={95,95,95}));
  connect(spindleHead.flange_b, spindleBearing.flange_a) annotation(Line(origin={0,110},
points={{-184,260},{-174,260},{-174,296},{-204,296}},
color={95,95,95}));
  connect(spindleBearing.flange_b, spindleFixed.flange) annotation(Line(origin={0,110},
points={{-184,296},{-152,296}},
color={95,95,95}));
  connect(spindleHead.flange_b, spindleSpeedSensor.flange) annotation(Line(origin={0,110},
points={{-184,260},{-174,260},{-174,228},{-162,228}},
color={95,95,95}));
  connect(spindleSpeedSensor.w, spindle_w) annotation(Line(origin={0,110},
points={{-141,228},{-122,228},{-122,260},{-90,260}},
color={0,0,127}));

  connect(xMotorTorque.flange, xMotor.flange_a) annotation(Line(origin={0,58},
points={{-306,152},{-288,152}},
color={95,95,95}));
  connect(xMotor.flange_b, xGear.flange_a) annotation(Line(origin={0,58},
points={{-268,152},{-246,152}},
color={95,95,95}));
  connect(xGear.flange_b, xScrew.flangeR) annotation(Line(origin={0,58},
points={{-226,152},{-204,152}},
color={95,95,95}));
  connect(xScrew.flangeT, xCompliance.flange_a) annotation(Line(origin={0,58},
points={{-184,152},{-162,152}},
color={95,95,95}));
  connect(xCompliance.flange_b, xTable.flange_a) annotation(Line(origin={0,58},
points={{-142,152},{-120,152}},
color={95,95,95}));
  connect(xTable.flange_b, xCutForce.flange) annotation(Line(origin={0,58},
points={{-100,152},{-58,152}},
color={95,95,95}));
  connect(xTable.flange_b, xGuide.flange_a) annotation(Line(origin={0,58},
points={{-100,152},{-90,152},{-90,188},{-120,188}},
color={95,95,95}));
  connect(xGuide.flange_b, xFixed.flange) annotation(Line(origin={0,58},
points={{-100,188},{-68,188}},
color={95,95,95}));
  connect(xTable.flange_b, xPosSensor.flange) annotation(Line(origin={0,58},
points={{-100,152},{-90,152},{-90,122},{-78,122}},
color={95,95,95}));
  connect(xLoad.y, xCutForce.f) annotation(Line(origin={0,58},
points={{-479,112},{-84,112},{-84,152},{-80,152}},
color={0,0,127}));
  connect(xPosSensor.s, x_pos) annotation(Line(origin={0,58},
points={{-57,122},{2,122}},
color={0,0,127}));

  connect(yMotorTorque.flange, yMotor.flange_a) annotation(Line(points={{-306,44},{-288,44}}, color={95,95,95}));
  connect(yMotor.flange_b, yGear.flange_a) annotation(Line(points={{-268,44},{-246,44}}, color={95,95,95}));
  connect(yGear.flange_b, yScrew.flangeR) annotation(Line(points={{-226,44},{-204,44}}, color={95,95,95}));
  connect(yScrew.flangeT, yCompliance.flange_a) annotation(Line(points={{-184,44},{-162,44}}, color={95,95,95}));
  connect(yCompliance.flange_b, ySaddle.flange_a) annotation(Line(points={{-142,44},{-120,44}}, color={95,95,95}));
  connect(ySaddle.flange_b, yCutForce.flange) annotation(Line(points={{-100,44},{-78,44}}, color={95,95,95}));
  connect(ySaddle.flange_b, yGuide.flange_a) annotation(Line(points={{-100,44},{-90,44},{-90,80},{-120,80}}, color={95,95,95}));
  connect(yGuide.flange_b, yFixed.flange) annotation(Line(points={{-100,80},{-78,80}}, color={95,95,95}));
  connect(ySaddle.flange_b, yPosSensor.flange) annotation(Line(points={{-100,44},{-90,44},{-90,10},{-78,10}}, color={95,95,95}));
  connect(yLoad.y, yCutForce.f) annotation(Line(origin={0,0},
points={{-615,-8},{-84,-8},{-84,44},{-80,44}},
color={0,0,127}));
  connect(yPosSensor.s, y_pos) annotation(Line(points={{-57,10},{-44,10},{-44,44},{-30,44}}, color={0,0,127}));

  connect(zMotorTorque.flange, zMotor.flange_a) annotation(Line(origin={-10,-74},
points={{-306,-64},{-288,-64}},
color={95,95,95}));
  connect(zMotor.flange_b, zGear.flange_a) annotation(Line(origin={-10,-74},
points={{-268,-64},{-246,-64}},
color={95,95,95}));
  connect(zGear.flange_b, zScrew.flangeR) annotation(Line(origin={-10,-74},
points={{-226,-64},{-204,-64}},
color={95,95,95}));
  connect(zScrew.flangeT, zCompliance.flange_a) annotation(Line(origin={-10,-74},
points={{-184,-64},{-162,-64}},
color={95,95,95}));
  connect(zCompliance.flange_b, zRam.flange_a) annotation(Line(origin={-10,-74},
points={{-142,-64},{-120,-64}},
color={95,95,95}));
  connect(zRam.flange_b, zCutForce.flange) annotation(Line(origin={-10,-74},
points={{-100,-64},{-58,-64}},
color={95,95,95}));
  connect(zRam.flange_b, zGuide.flange_a) annotation(Line(origin={-10,-74},
points={{-100,-64},{-90,-64},{-90,-28},{-120,-28}},
color={95,95,95}));
  connect(zGuide.flange_b, zFixed.flange) annotation(Line(origin={-10,-74},
points={{-100,-28},{-68,-28}},
color={95,95,95}));
  connect(zRam.flange_b, zPosSensor.flange) annotation(Line(origin={-10,-74},
points={{-100,-64},{-90,-64},{-90,-98},{-78,-98}},
color={95,95,95}));
  connect(zPosSensor.s, z_pos) annotation(Line(origin={-10,-74},
points={{-57,-98},{-44,-98},{-44,-64},{-30,-64}},
color={0,0,127}));

  connect(aMotorTorque.flange, aMotor.flange_a) annotation(Line(origin={42,-168},
points={{-306,-176},{-288,-176}},
color={95,95,95}));
  connect(aMotor.flange_b, aDrive.flange_a) annotation(Line(origin={42,-168},
points={{-268,-176},{-246,-176}},
color={95,95,95}));
  connect(aDrive.flange_b, aTable.flange_a) annotation(Line(origin={42,-168},
points={{-226,-176},{-204,-176}},
color={95,95,95}));
  connect(aTable.flange_b, aLoadTorque.flange) annotation(Line(origin={42,-168},
points={{-184,-176},{-142,-176}},
color={95,95,95}));
  connect(aTable.flange_b, aFriction.flange_a) annotation(Line(origin={42,-168},
points={{-184,-176},{-174,-176},{-174,-140},{-204,-140}},
color={95,95,95}));
  connect(aFriction.flange_b, aFixed.flange) annotation(Line(origin={42,-168},
points={{-184,-140},{-152,-140}},
color={95,95,95}));
  connect(aTable.flange_b, aAngleSensor.flange) annotation(Line(origin={42,-168},
points={{-184,-176},{-174,-176},{-174,-208},{-162,-208}},
color={95,95,95}));
  connect(aDist.y, aLoadTorque.tau) annotation(Line(origin={42,-168},
points={{-727,-256},{-168,-256},{-168,-176},{-164,-176}},
color={0,0,127}));
  connect(aAngleSensor.phi, a_angle) annotation(Line(origin={42,-168},
points={{-141,-208},{-128,-208},{-128,-176},{-90,-176}},
color={0,0,127}));

  connect(cMotorTorque.flange, cMotor.flange_a) annotation(Line(origin={42,-274},
points={{-306,-288},{-288,-288}},
color={95,95,95}));
  connect(cMotor.flange_b, cDrive.flange_a) annotation(Line(origin={42,-274},
points={{-268,-288},{-246,-288}},
color={95,95,95}));
  connect(cDrive.flange_b, cTable.flange_a) annotation(Line(origin={42,-274},
points={{-226,-288},{-204,-288}},
color={95,95,95}));
  connect(cTable.flange_b, cLoadTorque.flange) annotation(Line(origin={42,-274},
points={{-184,-288},{-142,-288}},
color={95,95,95}));
  connect(cTable.flange_b, cFriction.flange_a) annotation(Line(origin={42,-274},
points={{-184,-288},{-174,-288},{-174,-252},{-204,-252}},
color={95,95,95}));
  connect(cFriction.flange_b, cFixed.flange) annotation(Line(origin={42,-274},
points={{-184,-252},{-152,-252}},
color={95,95,95}));
  connect(cTable.flange_b, cAngleSensor.flange) annotation(Line(origin={42,-274},
points={{-184,-288},{-174,-288},{-174,-320},{-162,-320}},
color={95,95,95}));
  connect(cDist.y, cLoadTorque.tau) annotation(Line(origin={-28,-274},
points={{-665,-334},{-98,-334},{-98,-288},{-94,-288}},
color={0,0,127}));
  connect(cAngleSensor.phi, c_angle) annotation(Line(origin={42,-274},
points={{-141,-320},{-128,-320},{-128,-288},{-90,-288}},
color={0,0,127}));

  annotation(
    Diagram(coordinateSystem(extent={{-520,-470},{40,340}},
grid={2,2})),
    Icon(coordinateSystem(extent={{-520,-470},{40,340}})),
    experiment(StartTime=0, StopTime=8, Interval=0.002));
  connect(cuttingTorque.y, spindleCutTorque.tau) 
  annotation(Line(origin={-343,352},
points={{-182,-58},{177,-58},{177,18},{179,18}},
color={0,0,127}));
  connect(PI1.u, spindleErr.y) 
  annotation(Line(origin={-446,364},
points={{-2,12},{-21,12}},
color={0,0,127}));
  connect(derivative.u, spindleSpeedSensor.w) 
  annotation(Line(origin={-378,367},
points={{-192,13},{-202,13},{-202,-55},{242,-55},{242,-29},{237,-29}},
color={0,0,127}));
  connect(derivative.y, spindleErr.u1) 
  annotation(Line(origin={-537,380},
points={{-10,0},{47,0},{47,2}},
color={0,0,127}),__MWORKS(BlockSystem(NamedSignal)));
  connect(PI2.y, limiter.u) 
  annotation(Line(origin={-356,370},
points={{5,-2},{10,-2}},
color={0,0,127}));
  connect(limiter.y, spindleDriveTorque.tau) 
  annotation(Line(origin={-323,367},
points={{0,1},{1,3},{5,3}},
color={0,0,127}));
  connect(spindleRef.y, derivative1.u) 
  annotation(Line(origin={-602,342},
points={{-33,-6},{28,-6},{28,6},{32,6}},
color={0,0,127}));
  connect(PI1.y, add3_1.u1) 
  annotation(Line(origin={-415,377},
points={{-10,-1},{9,-1}},
color={0,0,127}));
  connect(add3_1.y, PI2.u) 
  annotation(Line(origin={-378,368},
  points={{-5,0},{4,0}},
  color={0,0,127}));
  connect(add3_1.u3, spindleSpeedSensor.w) 
  annotation(Line(origin={-275,358},
points={{-131,2},{-137,2},{-137,-44},{137,-44},{137,-20},{134,-20}},
color={0,0,127}));
  connect(add3_1.u2, spindleRef.y) 
  annotation(Line(origin={-539,344},
points={{133,24},{119,24},{119,-20},{-35,-20},{-35,-8},{-96,-8}},
color={0,0,127}),__MWORKS(BlockSystem(NamedSignal)));
  connect(derivative1.y, spindleErr.u2) 
  annotation(Line(origin={-517,358},
points={{-30,-10},{25,-10},{25,12},{27,12}},
color={0,0,127}));
  connect(PI4.y, add3_2.u1) 
  annotation(Line(origin={-443,246},
points={{-10,0},{9,0}},
color={0,0,127}));
  connect(add3_2.y, PI3.u) 
  annotation(Line(origin={-406,238},
points={{-5,0},{4,0}},
color={0,0,127}));
  connect(limiter1.y, xMotorTorque.tau) 
  annotation(Line(origin={-340,224},
points={{-11,14},{8,14},{8,-14},{12,-14}},
color={0,0,127}));
  connect(xRef.y, derivative2.u) 
  annotation(Line(origin={-613,218},
points={{-16,0},{15,0}},
color={0,0,127}));
  connect(derivative2.y, spindleErr1.u2) 
  annotation(Line(origin={-546,229},
points={{-29,-11},{24,-11},{24,11},{28,11}},
color={0,0,127}));
  connect(spindleErr1.u1, derivative3.y) 
  annotation(Line(origin={-546,252},
points={{28,0},{-29,0}},
color={0,0,127}));
  connect(xPosSensor.s, derivative3.u) 
  annotation(Line(origin={-328,202},
points={{271,-22},{274,-22},{274,-46},{-148,-46},{-148,-50},{-274,-50},{-274,50},{-270,50}},
color={0,0,127}));
  connect(spindleErr1.y, PI4.u) 
  annotation(Line(origin={-485,246},
points={{-10,0},{9,0}},
color={0,0,127}));
  connect(xRef.y, add3_2.u2) 
  annotation(Line(origin={-531,217},
points={{-98,1},{-79,1},{-79,-21},{83,-21},{83,21},{97,21}},
color={0,0,127}));
  connect(add3_2.u3, xPosSensor.s) 
  annotation(Line(origin={-244,196},
points={{-190,34},{-194,34},{-194,-40},{190,-40},{190,-16},{187,-16}},
color={0,0,127}));
  connect(limiter1.u, PI3.y) 
  annotation(Line(origin={-376,238},
points={{2,0},{-3,0}},
color={0,0,127}));
  connect(spindleErr2.u1, derivative4.y) 
  annotation(Line(origin={-530,58},
points={{28,0},{-29,0}},
color={0,0,127}));
  connect(spindleErr2.y, PI5.u) 
  annotation(Line(origin={-469,52},
  points={{-10,0},{9,0}},
  color={0,0,127}));
  connect(PI5.y, add3_3.u1) 
  annotation(Line(origin={-427,52},
  points={{-10,0},{9,0}},
  color={0,0,127}));
  connect(PI6.u, add3_3.y) 
  annotation(Line(origin={-390,44},
  points={{4,0},{-5,0}},
  color={0,0,127}));
  connect(yMotorTorque.tau, limiter2.y) 
  annotation(Line(origin={-331,44},
  points={{3,0},{-4,0}},
  color={0,0,127}));
  connect(yRef.y, derivative5.u) 
  annotation(Line(origin={-614,28},
  points={{-33,0},{32,0}},
  color={0,0,127}));
  connect(add3_3.u2, yRef.y) 
  annotation(Line(origin={-532,28},
  points={{114,16},{98,16},{98,-17},{-86,-17},{-86,0},{-115,0}},
  color={0,0,127}));
  connect(derivative5.y, spindleErr2.u2) 
  annotation(Line(origin={-530,37},
  points={{-29,-9},{24,-9},{24,9},{28,9}},
  color={0,0,127}));
  connect(yPosSensor.s, derivative4.u) 
  annotation(Line(origin={-320,14},
  points={{263,-4},{266,-4},{266,-44},{-266,-44},{-266,44},{-262,44}},
  color={0,0,127}));
  connect(add3_3.u3, yPosSensor.s) 
  annotation(Line(origin={-236,3},
  points={{-182,33},{-182,-33},{182,-33},{182,7},{179,7}},
  color={0,0,127}));
  connect(limiter2.u, PI6.y) 
  annotation(Line(origin={-360,44},
  points={{2,0},{-3,0}},
  color={0,0,127}));
  connect(spindleErr3.u1, derivative7.y) 
  annotation(Line(origin={-546,-124},
points={{28,0},{-29,0}},
color={0,0,127}));
  connect(spindleErr3.y, PI8.u) 
  annotation(Line(origin={-485,-130},
points={{-10,0},{9,0}},
color={0,0,127}));
  connect(PI8.y, add3_4.u1) 
  annotation(Line(origin={-443,-130},
points={{-10,0},{9,0}},
color={0,0,127}));
  connect(PI7.u, add3_4.y) 
  annotation(Line(origin={-406,-138},
points={{4,0},{-5,0}},
color={0,0,127}));
  connect(derivative6.y, spindleErr3.u2) 
  annotation(Line(origin={-546,-145},
points={{-29,-9},{24,-9},{24,9},{28,9}},
color={0,0,127}));
  connect(limiter3.u, PI7.y) 
  annotation(Line(origin={-376,-138},
points={{2,0},{-3,0}},
color={0,0,127}));
  connect(limiter3.y, zMotorTorque.tau) 
  annotation(Line(origin={-344,-138},
  points={{-7,0},{6,0}},
  color={0,0,127}));
  connect(zRef.y, derivative6.u) 
  annotation(Line(origin={-620,-154},
  points={{-23,0},{22,0}},
  color={0,0,127}));
  connect(zPosSensor.s, derivative7.u) 
  annotation(Line(origin={-344,-177},
  points={{277,5},{280,5},{280,-53},{-280,-53},{-280,53},{-254,53}},
  color={0,0,127}));
  connect(add3_4.u3, zPosSensor.s) 
  annotation(Line(origin={-251,-188},
points={{-183,42},{-187,42},{-187,-42},{187,-42},{187,16},{184,16}},
color={0,0,127}));
  connect(add3_4.u2, zRef.y) 
  annotation(Line(origin={-538,-157},
  points={{104,19},{88,19},{88,-19},{-70,-19},{-70,3},{-105,3}},
  color={0,0,127}));
  connect(zLoad.y, zCutForce.f) 
  annotation(Line(origin={-387,-163},
  points={{-298,-25},{293,-25},{293,25},{297,25}},
  color={0,0,127}));
  connect(spindleErr4.y, PI11.u) 
  annotation(Line(origin={-443,-336},
points={{-10,0},{9,0}},
color={0,0,127}),__MWORKS(BlockSystem(NamedSignal)));
  connect(PI11.y, add3_5.u1) 
  annotation(Line(origin={-401,-336},
points={{-10,0},{9,0}},
color={0,0,127}));
  connect(PI9.u, add3_5.y) 
  annotation(Line(origin={-364,-344},
points={{2,0},{-5,0}},
color={0,0,127}));
  connect(derivative9.y, spindleErr4.u2) 
  annotation(Line(origin={-504,-351},
points={{-29,-9},{24,-9},{24,9},{28,9}},
color={0,0,127}));
  connect(limiter4.u, PI9.y) 
  annotation(Line(origin={-334,-344},
points={{2,0},{-5,0}},
color={0,0,127}));
  connect(limiter4.y, aMotorTorque.tau) 
  annotation(Line(origin={-297,-344},
  points={{-12,0},{11,0}},
  color={0,0,127}));
  connect(aRef.y, derivative9.u) 
  annotation(Line(origin={-586,-360},
  points={{-31,0},{30,0}},
  color={0,0,127}));
  connect(aAngleSensor.phi, derivative8.u) 
  annotation(Line(origin={-337,-359},
points={{238,-17},{241,-17},{241,-29},{-241,-29},{-241,29},{-219,29}},
color={0,0,127}));
  connect(add3_5.u3, aAngleSensor.phi) 
  annotation(Line(origin={-246,-370},
  points={{-146,18},{-150,18},{-150,-18},{150,-18},{150,-6},{147,-6}},
  color={0,0,127}));
  connect(aRef.y, add3_5.u2) 
  annotation(Line(origin={-504,-361},
  points={{-113,1},{-96,1},{-96,-17},{100,-17},{100,17},{112,17}},
  color={0,0,127}));
  connect(limiter5.y, spindleErr4.u1) 
  annotation(Line(origin={-484,-330},
points={{-9,0},{8,0}},
color={0,0,127}),__MWORKS(BlockSystem(NamedSignal)));
  connect(limiter5.u, derivative8.y) 
  annotation(Line(origin={-524,-330},
  points={{8,0},{-9,0}},
  color={0,0,127}));
  connect(spindleErr5.y, PI12.u) 
  annotation(Line(origin={-443,-550},
points={{-10,0},{9,0}},
color={0,0,127}));
  connect(PI12.y, add3_6.u1) 
  annotation(Line(origin={-401,-550},
points={{-10,0},{9,0}},
color={0,0,127}));
  connect(PI10.u, add3_6.y) 
  annotation(Line(origin={-364,-558},
points={{2,0},{-5,0}},
color={0,0,127}));
  connect(limiter7.u, PI10.y) 
  annotation(Line(origin={-334,-558},
points={{2,0},{-5,0}},
color={0,0,127}));
  connect(limiter6.y, spindleErr5.u1) 
  annotation(Line(origin={-484,-544},
points={{-9,0},{8,0}},
color={0,0,127}));
  connect(limiter6.u, derivative11.y) 
  annotation(Line(origin={-524,-544},
points={{8,0},{-9,0}},
color={0,0,127}));
  connect(limiter7.y, cMotorTorque.tau) 
  annotation(Line(origin={-297,-560},
  points={{-12,2},{7,2},{7,-2},{11,-2}},
  color={0,0,127}));
  connect(cRef.y, derivative10.u) 
  annotation(Line(origin={-575,-574},
  points={{-20,0},{19,0}},
  color={0,0,127}));
  connect(cAngleSensor.phi, derivative11.u) 
  annotation(Line(origin={-336,-581},
  points={{237,-13},{240,-13},{240,-37},{-240,-37},{-240,37},{-220,37}},
  color={0,0,127}));
  connect(add3_6.u3, cAngleSensor.phi) 
  annotation(Line(origin={-247,-592},
points={{-145,26},{-149,26},{-149,-26},{151,-26},{151,-2},{148,-2}},
color={0,0,127}));
  connect(spindleErr5.u2, derivative10.y) 
  annotation(Line(origin={-504,-568},
points={{28,12},{14,12},{14,-6},{-29,-6}},
color={0,0,127}));
  connect(cRef.y, add3_6.u2) 
  annotation(Line(origin={-493,-577},
  points={{-102,3},{-87,3},{-87,-19},{87,-19},{87,19},{101,19}},
  color={0,0,127}));
  connect(clampCylinder1.flange, drawbar1.flange_a) 
  annotation(Line(origin={-480,-473},
  points={{-306,-404},{-288,-404}},
  color={95,95,95}));
  connect(drawbar1.flange_b, clampForceSensor1.flange_a) 
  annotation(Line(origin={-480,-473},
  points={{-268,-404},{-246,-404}},
  color={95,95,95}));
  connect(clampForceSensor1.flange_b, clampSpring1.flange_a) 
  annotation(Line(origin={-480,-473},
  points={{-226,-404},{-204,-404}},
  color={95,95,95}));
  connect(clampSpring1.flange_b, clampFixed1.flange) 
  annotation(Line(origin={-480,-473},
  points={{-184,-404},{-152,-404}},
  color={95,95,95}));
  connect(clampRef1.y, clampErr.u1) 
  annotation(Line(origin={-480,-473},
  points={{-479,-390},{-470,-390},{-470,-384},{-468,-384}},
  color={0,0,127}));
  connect(clampForceSensor1.f, clampErr.u2) 
  annotation(Line(origin={-480,-473},
  points={{-244,-415},{-244,-440},{-474,-440},{-474,-396},{-468,-396}},
  color={0,0,127}));
  connect(clampErr.y, clampP.u) 
  annotation(Line(origin={-480,-473},
  points={{-445,-390},{-438,-390},{-438,-364},{-432,-364}},
  color={0,0,127}));
  connect(clampErr.y, clampI.u) 
  annotation(Line(origin={-480,-473},
  points={{-445,-390},{-438,-390},{-438,-396},{-432,-396}},
  color={0,0,127}),__MWORKS(BlockSystem(NamedSignal)));
  connect(clampP.y, clampPI.u1) 
  annotation(Line(origin={-480,-473},
  points={{-409,-364},{-400,-364},{-400,-380},{-394,-380}},
  color={0,0,127}));
  connect(clampI.y, clampPI.u2) 
  annotation(Line(origin={-480,-473},
  points={{-409,-396},{-400,-396},{-400,-392},{-394,-392}},
  color={0,0,127}));
  connect(clampPI.y, clampValve.u) 
  annotation(Line(origin={-480,-473},
points={{-371,-386},{-360,-386},{-360,-379},{-356,-379}},
color={0,0,127}));
  connect(clampValve.y, clampForceCmd.u1) 
  annotation(Line(origin={-480,-473},
points={{-333,-379},{-303,-379},{-303,-440},{-398,-440},{-398,-416},{-394,-416}},
color={0,0,127}));
  connect(clampLeak1.y, clampForceCmd.u2) 
  annotation(Line(origin={-480,-473},
points={{-479,-428},{-394,-428}},
color={0,0,127}));
  connect(clampForceCmd.y, clampCylinder1.f) 
  annotation(Line(origin={-480,-473},
points={{-371,-422},{-334,-422},{-334,-404},{-328,-404}},
color={0,0,127}));
  connect(clampForceSensor1.f, clamp_force1) 
  annotation(Line(origin={-480,-473},
  points={{-244,-415},{-220,-415},{-220,-404},{-90,-404}},
  color={0,0,127}),__MWORKS(BlockSystem(NamedSignal)));
  end FiveAxisTrunnionMachiningCenterSystem;