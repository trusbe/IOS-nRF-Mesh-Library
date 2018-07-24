//
//  MessageOpcodes.swift
//  nRFMeshProvision
//
//  Created by TrusBe Sil on 2018/7/24.
//

import Foundation

public enum MessageOpcodes: UInt16 {
    // Generic OnOff
    case genericOnOffGet                                        = 0x8201
    case genericOnOffSet                                        = 0x8202
    case genericOnOffSetUnacknowledged                          = 0x8203
    case genericOnOffStatus                                     = 0x8204
    // Light Lightness
    case lightLightnessGet                                      = 0x824B
    case lightLightnessSet                                      = 0x824C
    case lightLightnessSetUnacknowledged                        = 0x824D
    case lightLightnessStatus                                   = 0x824E
    case lightLightnessLinearGet                                = 0x824F
    case lightLightnessLinearSet                                = 0x8250
    case lightLightnessLinearSetUnacknowledged                  = 0x8251
    case lightLightnessLinearStatus                             = 0x8252
    case lightLightnessLastGet                                  = 0x8253
    case lightLightnessLastStatus                               = 0x8254
    case lightLightnessDefaultGet                               = 0x8255
    case lightLightnessDefaultStatus                            = 0x8256
    case lightLightnessRangeGet                                 = 0x8257
    case lightLightnessRangeStatus                              = 0x8258
    // Light Lightness Setup
    case lightLightnessDefaultSet                               = 0x8259
    case lightLightnessDefaultSetUnacknowledged                 = 0x825A
    case lightLightnessRangeSet                                 = 0x825B
    case lightLightnessRangeSetUnacknowledged                   = 0x825C
}


