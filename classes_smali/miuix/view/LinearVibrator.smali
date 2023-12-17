.class Lmiuix/view/LinearVibrator;
.super Ljava/lang/Object;
.source "LinearVibrator.java"

# interfaces
.implements Lmiuix/view/HapticFeedbackProvider;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LinearVibrator"


# instance fields
.field private final mIds:Landroidx/collection/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/g<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    .line 1
    invoke-static {}, Lmiuix/view/LinearVibrator;->initialize()V

    .line 4
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/collection/g;

    .line 6
    invoke-direct {v0}, Landroidx/collection/g;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 11
    invoke-direct {p0}, Lmiuix/view/LinearVibrator;->buildIds()V

    .line 14
    return-void
.end method

.method private buildIds()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 3
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    .line 5
    const/high16 v2, 0x10000000

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 16
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    .line 18
    const v2, 0x10000001

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 30
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK:I

    .line 32
    const v2, 0x10000002

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 44
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    .line 46
    const v2, 0x10000003

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 58
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_HEAVY:I

    .line 60
    const v2, 0x10000004

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 72
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 74
    const v2, 0x10000005

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 86
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_LIGHT:I

    .line 88
    const v2, 0x10000006

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 100
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_LONG_PRESS:I

    .line 102
    const v2, 0x10000007

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 114
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    .line 116
    const v2, 0x10000008

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 128
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    .line 130
    const v2, 0x10000009

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 140
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 142
    const/4 v1, 0x2

    .line 143
    if-ge v0, v1, :cond_91

    .line 145
    return-void

    .line 146
    :cond_91
    iget-object v1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 148
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_PICK_UP:I

    .line 150
    const v3, 0x1000000a

    .line 153
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v1, v2, v3}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 160
    iget-object v1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 162
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    .line 164
    const v3, 0x1000000b

    .line 167
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v1, v2, v3}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 176
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_TRIGGER_DRAWER:I

    .line 178
    const v3, 0x1000000c

    .line 181
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v1, v2, v3}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 188
    const/4 v1, 0x3

    .line 189
    if-ge v0, v1, :cond_bf

    .line 191
    return-void

    .line 192
    :cond_bf
    iget-object v1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 194
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK_LIGHT:I

    .line 196
    const v3, 0x1000000d

    .line 199
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v1, v2, v3}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 206
    const/4 v1, 0x4

    .line 207
    if-ge v0, v1, :cond_d1

    .line 209
    return-void

    .line 210
    :cond_d1
    iget-object v1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 212
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_HOLD:I

    .line 214
    const v3, 0x1000000e

    .line 217
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v1, v2, v3}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 224
    const/4 v1, 0x5

    .line 225
    if-ge v0, v1, :cond_e3

    .line 227
    return-void

    .line 228
    :cond_e3
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 230
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_SPATIAL:I

    .line 232
    const v2, 0x1000000f

    .line 235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 244
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_TIME:I

    .line 246
    const v2, 0x10000010

    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 258
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_LARGE:I

    .line 260
    const v2, 0x10000011

    .line 263
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 272
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_MIDDLE:I

    .line 274
    const v2, 0x10000012

    .line 277
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 286
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    .line 288
    const v2, 0x10000013

    .line 291
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 300
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_LIGHT:I

    .line 302
    const v2, 0x10000014

    .line 305
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    move-result-object v2

    .line 309
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 314
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_HEAVY:I

    .line 316
    const v2, 0x10000015

    .line 319
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 328
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_KEYBOARD:I

    .line 330
    const v2, 0x10000016

    .line 333
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 336
    move-result-object v2

    .line 337
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 342
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ALERT:I

    .line 344
    const v2, 0x10000017

    .line 347
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    move-result-object v2

    .line 351
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 356
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    .line 358
    const v2, 0x10000018

    .line 361
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v0, v1, v2}, Landroidx/collection/g;->a(ILjava/lang/Object;)V

    .line 368
    return-void
.end method

.method private static initialize()V
    .registers 3

    .line 1
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 3
    const-string v1, "LinearVibrator"

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ge v0, v2, :cond_d

    .line 8
    const-string v0, "MiuiHapticFeedbackConstants not found or not compatible for LinearVibrator."

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void

    .line 14
    :cond_d
    :try_start_d
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    .line 17
    move-result v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_12

    .line 18
    goto :goto_19

    .line 19
    :catchall_12
    move-exception v0

    .line 20
    const-string v2, "MIUI Haptic Implementation is not available"

    .line 22
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_19
    if-nez v0, :cond_21

    .line 28
    const-string v0, "linear motor is not supported in this platform."

    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void

    .line 34
    :cond_21
    new-instance v0, Lmiuix/view/LinearVibrator;

    .line 36
    invoke-direct {v0}, Lmiuix/view/LinearVibrator;-><init>()V

    .line 39
    invoke-static {v0}, Lmiuix/view/HapticCompat;->registerProvider(Lmiuix/view/HapticFeedbackProvider;)V

    .line 42
    const-string v0, "setup LinearVibrator success."

    .line 44
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method


# virtual methods
.method public obtainFeedBack(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/g;->d(I)I

    .line 6
    move-result p1

    .line 7
    if-ltz p1, :cond_15

    .line 9
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 11
    invoke-virtual {v0, p1}, Landroidx/collection/g;->h(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Integer;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_15
    const/4 p1, -0x1

    .line 23
    return p1
.end method

.method public performHapticFeedback(Landroid/view/View;I)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 3
    invoke-virtual {v0, p2}, Landroidx/collection/g;->d(I)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    const-string v3, "LinearVibrator"

    .line 11
    const/4 v4, 0x0

    .line 12
    if-gez v0, :cond_2e

    .line 14
    const/4 p1, 0x3

    .line 15
    new-array p1, p1, [Ljava/lang/Object;

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v0

    .line 21
    aput-object v0, p1, v4

    .line 23
    invoke-static {p2}, Lmiuix/view/HapticFeedbackConstants;->nameOf(I)Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    aput-object p2, p1, v2

    .line 29
    sget p2, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object p2

    .line 35
    aput-object p2, p1, v1

    .line 37
    const-string p2, "feedback(0x%08x-%s) is not found in current platform(v%d)"

    .line 39
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return v4

    .line 47
    :cond_2e
    iget-object p2, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 49
    invoke-virtual {p2, v0}, Landroidx/collection/g;->h(I)Ljava/lang/Object;

    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Ljava/lang/Integer;

    .line 55
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result p2

    .line 59
    invoke-static {p2}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_5a

    .line 65
    new-array p1, v1, [Ljava/lang/Object;

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object p2

    .line 71
    aput-object p2, p1, v4

    .line 73
    sget p2, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object p2

    .line 79
    aput-object p2, p1, v2

    .line 81
    const-string p2, "unsupported feedback: 0x%08x. platform version: %d"

    .line 83
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v4

    .line 91
    :cond_5a
    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 94
    move-result p1

    .line 95
    return p1
.end method

.method public supportLinearMotor(I)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/g;->d(I)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    const-string v3, "LinearVibrator"

    .line 11
    const/4 v4, 0x0

    .line 12
    if-gez v0, :cond_2e

    .line 14
    const/4 v0, 0x3

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v5

    .line 21
    aput-object v5, v0, v4

    .line 23
    invoke-static {p1}, Lmiuix/view/HapticFeedbackConstants;->nameOf(I)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    aput-object p1, v0, v2

    .line 29
    sget p1, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object p1

    .line 35
    aput-object p1, v0, v1

    .line 37
    const-string p1, "feedback(0x%08x-%s) is not found in current platform(v%d)"

    .line 39
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return v4

    .line 47
    :cond_2e
    iget-object p1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/g;

    .line 49
    invoke-virtual {p1, v0}, Landroidx/collection/g;->h(I)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ljava/lang/Integer;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result p1

    .line 59
    invoke-static {p1}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_5a

    .line 65
    new-array v0, v1, [Ljava/lang/Object;

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object p1

    .line 71
    aput-object p1, v0, v4

    .line 73
    sget p1, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object p1

    .line 79
    aput-object p1, v0, v2

    .line 81
    const-string p1, "unsupported feedback: 0x%08x. platform version: %d"

    .line 83
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v4

    .line 91
    :cond_5a
    invoke-static {p1}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    .line 94
    move-result p1

    .line 95
    return p1
.end method
