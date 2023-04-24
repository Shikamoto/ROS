// Auto-generated. Do not edit!

// (in-package delivery_robot_serial_handler.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Pos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.P1 = null;
      this.P2 = null;
    }
    else {
      if (initObj.hasOwnProperty('P1')) {
        this.P1 = initObj.P1
      }
      else {
        this.P1 = 0;
      }
      if (initObj.hasOwnProperty('P2')) {
        this.P2 = initObj.P2
      }
      else {
        this.P2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pos
    // Serialize message field [P1]
    bufferOffset = _serializer.int32(obj.P1, buffer, bufferOffset);
    // Serialize message field [P2]
    bufferOffset = _serializer.int32(obj.P2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pos
    let len;
    let data = new Pos(null);
    // Deserialize message field [P1]
    data.P1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [P2]
    data.P2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'delivery_robot_serial_handler/Pos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3362efe2d7e58f1252e89f624acd8c9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 P1
    int32 P2
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pos(null);
    if (msg.P1 !== undefined) {
      resolved.P1 = msg.P1;
    }
    else {
      resolved.P1 = 0
    }

    if (msg.P2 !== undefined) {
      resolved.P2 = msg.P2;
    }
    else {
      resolved.P2 = 0
    }

    return resolved;
    }
};

module.exports = Pos;
