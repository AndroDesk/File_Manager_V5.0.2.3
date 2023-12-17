.class public Lmiuix/view/HapticFeedbackConstants;
.super Ljava/lang/Object;
.source "HapticFeedbackConstants.java"


# static fields
.field private static final ILLEGAL_FEEDBACK:Ljava/lang/String; = "IllegalFeedback"

.field public static final MIUI_ALERT:I

.field public static final MIUI_BOUNDARY_SPATIAL:I

.field public static final MIUI_BOUNDARY_TIME:I

.field public static final MIUI_BUTTON_LARGE:I

.field public static final MIUI_BUTTON_MIDDLE:I

.field public static final MIUI_BUTTON_SMALL:I

.field public static final MIUI_FLICK:I

.field public static final MIUI_FLICK_LIGHT:I

.field public static final MIUI_GEAR_HEAVY:I

.field public static final MIUI_GEAR_LIGHT:I

.field public static final MIUI_HAPTIC_END:I

.field public static final MIUI_HAPTIC_START:I = 0x10000000

.field public static final MIUI_HAPTIC_VERSION_1_END:I

.field public static final MIUI_HAPTIC_VERSION_1_START:I

.field public static final MIUI_HAPTIC_VERSION_2_END:I

.field public static final MIUI_HAPTIC_VERSION_2_START:I

.field public static final MIUI_HOLD:I

.field public static final MIUI_KEYBOARD:I

.field public static final MIUI_KEYBOARD_CLICKY_DOWN_RTP:I = 0xc1

.field public static final MIUI_KEYBOARD_CLICKY_UP_RTP:I = 0xc2

.field public static final MIUI_KEYBOARD_LINEAR_DOWN_RTP:I = 0xc3

.field public static final MIUI_KEYBOARD_LINEAR_UP_RTP:I = 0xc4

.field public static final MIUI_LONG_PRESS:I

.field public static final MIUI_MESH_HEAVY:I

.field public static final MIUI_MESH_LIGHT:I

.field public static final MIUI_MESH_NORMAL:I

.field public static final MIUI_PICK_UP:I

.field public static final MIUI_POPUP_LIGHT:I

.field public static final MIUI_POPUP_NORMAL:I

.field public static final MIUI_SCROLL_EDGE:I

.field public static final MIUI_SWITCH:I

.field public static final MIUI_TAP_LIGHT:I

.field public static final MIUI_TAP_NORMAL:I

.field public static final MIUI_TRIGGER_DRAWER:I

.field public static final MIUI_VIRTUAL_RELEASE:I

.field public static final MIUI_ZAXIS_SWITCH:I

.field private static final NAMES:Landroidx/collection/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/collection/g;

    .line 3
    invoke-direct {v0}, Landroidx/collection/g;-><init>()V

    .line 6
    sput-object v0, Lmiuix/view/HapticFeedbackConstants;->NAMES:Landroidx/collection/g;

    .line 8
    const/high16 v0, 0x10000000

    .line 10
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_1_START:I

    .line 12
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_VIRTUAL_RELEASE:I

    .line 14
    const v0, 0x10000001

    .line 17
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    .line 19
    const v0, 0x10000002

    .line 22
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    .line 24
    const v0, 0x10000003

    .line 27
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK:I

    .line 29
    const v0, 0x10000004

    .line 32
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    .line 34
    const v0, 0x10000005

    .line 37
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_HEAVY:I

    .line 39
    const v0, 0x10000006

    .line 42
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 44
    const v0, 0x10000007

    .line 47
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_LIGHT:I

    .line 49
    const v0, 0x10000008

    .line 52
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_LONG_PRESS:I

    .line 54
    const v0, 0x10000009

    .line 57
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    .line 59
    const v0, 0x1000000a

    .line 62
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    .line 64
    const v0, 0x1000000b

    .line 67
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_PICK_UP:I

    .line 69
    const v0, 0x1000000c

    .line 72
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    .line 74
    const v0, 0x1000000d

    .line 77
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TRIGGER_DRAWER:I

    .line 79
    const v0, 0x1000000e

    .line 82
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK_LIGHT:I

    .line 84
    const v0, 0x1000000f

    .line 87
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HOLD:I

    .line 89
    const v0, 0x10000010

    .line 92
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_1_END:I

    .line 94
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_2_START:I

    .line 96
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_SPATIAL:I

    .line 98
    const v0, 0x10000011

    .line 101
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_TIME:I

    .line 103
    const v0, 0x10000012

    .line 106
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_LARGE:I

    .line 108
    const v0, 0x10000013

    .line 111
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_MIDDLE:I

    .line 113
    const v0, 0x10000014

    .line 116
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    .line 118
    const v0, 0x10000015

    .line 121
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_LIGHT:I

    .line 123
    const v0, 0x10000016

    .line 126
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_HEAVY:I

    .line 128
    const v0, 0x10000017

    .line 131
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_KEYBOARD:I

    .line 133
    const v0, 0x10000018

    .line 136
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_ALERT:I

    .line 138
    const v0, 0x10000019

    .line 141
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    .line 143
    const v0, 0x1000001a

    .line 146
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_2_END:I

    .line 148
    sput v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_END:I

    .line 150
    invoke-static {}, Lmiuix/view/HapticFeedbackConstants;->buildNames()V

    .line 153
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildNames()V
    .registers 3

    .line 1
    sget-object v0, Lmiuix/view/HapticFeedbackConstants;->NAMES:Landroidx/collection/g;

    .line 3
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_VIRTUAL_RELEASE:I

    .line 5
    const-string v2, "MIUI_VIRTUAL_RELEASE"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 10
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    .line 12
    const-string v2, "MIUI_TAP_NORMAL"

    .line 14
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 17
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    .line 19
    const-string v2, "MIUI_TAP_LIGHT"

    .line 21
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 24
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK:I

    .line 26
    const-string v2, "MIUI_FLICK"

    .line 28
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 31
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    .line 33
    const-string v2, "MIUI_SWITCH"

    .line 35
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 38
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_HEAVY:I

    .line 40
    const-string v2, "MIUI_MESH_HEAVY"

    .line 42
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 45
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 47
    const-string v2, "MIUI_MESH_NORMAL"

    .line 49
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 52
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_LIGHT:I

    .line 54
    const-string v2, "MIUI_MESH_LIGHT"

    .line 56
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 59
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_LONG_PRESS:I

    .line 61
    const-string v2, "MIUI_LONG_PRESS"

    .line 63
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 66
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    .line 68
    const-string v2, "MIUI_POPUP_NORMAL"

    .line 70
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 73
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    .line 75
    const-string v2, "MIUI_POPUP_LIGHT"

    .line 77
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 80
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_PICK_UP:I

    .line 82
    const-string v2, "MIUI_PICK_UP"

    .line 84
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 87
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    .line 89
    const-string v2, "MIUI_SCROLL_EDGE"

    .line 91
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 94
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TRIGGER_DRAWER:I

    .line 96
    const-string v2, "MIUI_TRIGGER_DRAWER"

    .line 98
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 101
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK_LIGHT:I

    .line 103
    const-string v2, "MIUI_FLICK_LIGHT"

    .line 105
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 108
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_HOLD:I

    .line 110
    const-string v2, "MIUI_HOLD"

    .line 112
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 115
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_SPATIAL:I

    .line 117
    const-string v2, "MIUI_BOUNDARY_SPATIAL"

    .line 119
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 122
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_TIME:I

    .line 124
    const-string v2, "MIUI_BOUNDARY_TIME"

    .line 126
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 129
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_LARGE:I

    .line 131
    const-string v2, "MIUI_BUTTON_LARGE"

    .line 133
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 136
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_MIDDLE:I

    .line 138
    const-string v2, "MIUI_BUTTON_MIDDLE"

    .line 140
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 143
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    .line 145
    const-string v2, "MIUI_BUTTON_SMALL"

    .line 147
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 150
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_LIGHT:I

    .line 152
    const-string v2, "MIUI_GEAR_LIGHT"

    .line 154
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 157
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_HEAVY:I

    .line 159
    const-string v2, "MIUI_GEAR_HEAVY"

    .line 161
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 164
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_KEYBOARD:I

    .line 166
    const-string v2, "MIUI_KEYBOARD"

    .line 168
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 171
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ALERT:I

    .line 173
    const-string v2, "MIUI_ALERT"

    .line 175
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 178
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    .line 180
    const-string v2, "MIUI_ZAXIS_SWITCH"

    .line 182
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 185
    return-void
.end method

.method public static nameOf(I)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lmiuix/view/HapticFeedbackConstants;->NAMES:Landroidx/collection/g;

    .line 3
    const-string v1, "IllegalFeedback"

    .line 5
    invoke-virtual {v0, p0, v1}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/String;

    .line 11
    return-object p0
.end method
