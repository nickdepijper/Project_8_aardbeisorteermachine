
"use strict";

let SuperCapacitor = require('./SuperCapacitor.js');
let ActuatorState = require('./ActuatorState.js');
let MovingAverageData = require('./MovingAverageData.js');
let DbusData = require('./DbusData.js');
let ShootCmd = require('./ShootCmd.js');
let ChassisCmd = require('./ChassisCmd.js');
let GimbalCmd = require('./GimbalCmd.js');
let KalmanData = require('./KalmanData.js');
let TofRadarData = require('./TofRadarData.js');
let LpData = require('./LpData.js');
let GpioData = require('./GpioData.js');
let BalanceState = require('./BalanceState.js');
let GimbalDesError = require('./GimbalDesError.js');
let TrackData = require('./TrackData.js');
let TargetDetectionArray = require('./TargetDetectionArray.js');
let TargetDetection = require('./TargetDetection.js');
let DartStatus = require('./DartStatus.js');
let StateCmd = require('./StateCmd.js');
let SupplyProjectileAction = require('./SupplyProjectileAction.js');
let GameStatus = require('./GameStatus.js');
let GameRobotHp = require('./GameRobotHp.js');
let DartRemainingTime = require('./DartRemainingTime.js');
let BulletRemaining = require('./BulletRemaining.js');
let RadarData = require('./RadarData.js');
let PowerHeatData = require('./PowerHeatData.js');
let RobotHurt = require('./RobotHurt.js');
let ShootData = require('./ShootData.js');
let CapacityData = require('./CapacityData.js');
let GameRobotStatus = require('./GameRobotStatus.js');
let EngineerCmd = require('./EngineerCmd.js');
let EventData = require('./EventData.js');
let DartClientCmd = require('./DartClientCmd.js');
let ManualToReferee = require('./ManualToReferee.js');
let IcraBuffDebuffZoneStatus = require('./IcraBuffDebuffZoneStatus.js');
let Referee = require('./Referee.js');
let RfidStatus = require('./RfidStatus.js');
let EngineerFeedback = require('./EngineerFeedback.js');
let EngineerActionFeedback = require('./EngineerActionFeedback.js');
let EngineerAction = require('./EngineerAction.js');
let EngineerActionGoal = require('./EngineerActionGoal.js');
let EngineerActionResult = require('./EngineerActionResult.js');
let EngineerResult = require('./EngineerResult.js');
let EngineerGoal = require('./EngineerGoal.js');

module.exports = {
  SuperCapacitor: SuperCapacitor,
  ActuatorState: ActuatorState,
  MovingAverageData: MovingAverageData,
  DbusData: DbusData,
  ShootCmd: ShootCmd,
  ChassisCmd: ChassisCmd,
  GimbalCmd: GimbalCmd,
  KalmanData: KalmanData,
  TofRadarData: TofRadarData,
  LpData: LpData,
  GpioData: GpioData,
  BalanceState: BalanceState,
  GimbalDesError: GimbalDesError,
  TrackData: TrackData,
  TargetDetectionArray: TargetDetectionArray,
  TargetDetection: TargetDetection,
  DartStatus: DartStatus,
  StateCmd: StateCmd,
  SupplyProjectileAction: SupplyProjectileAction,
  GameStatus: GameStatus,
  GameRobotHp: GameRobotHp,
  DartRemainingTime: DartRemainingTime,
  BulletRemaining: BulletRemaining,
  RadarData: RadarData,
  PowerHeatData: PowerHeatData,
  RobotHurt: RobotHurt,
  ShootData: ShootData,
  CapacityData: CapacityData,
  GameRobotStatus: GameRobotStatus,
  EngineerCmd: EngineerCmd,
  EventData: EventData,
  DartClientCmd: DartClientCmd,
  ManualToReferee: ManualToReferee,
  IcraBuffDebuffZoneStatus: IcraBuffDebuffZoneStatus,
  Referee: Referee,
  RfidStatus: RfidStatus,
  EngineerFeedback: EngineerFeedback,
  EngineerActionFeedback: EngineerActionFeedback,
  EngineerAction: EngineerAction,
  EngineerActionGoal: EngineerActionGoal,
  EngineerActionResult: EngineerActionResult,
  EngineerResult: EngineerResult,
  EngineerGoal: EngineerGoal,
};
