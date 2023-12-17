.class synthetic Lcom/miui/maml/ActionCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

.field public static final synthetic $SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type:[I

.field public static final synthetic $SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

.field public static final synthetic $SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

.field public static final synthetic $SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

.field public static final synthetic $SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

.field public static final synthetic $SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

.field public static final synthetic $SwitchMap$com$miui$maml$ActionCommand$PbrCommand$CommandType:[I

.field public static final synthetic $SwitchMap$com$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

.field public static final synthetic $SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

.field public static final synthetic $SwitchMap$com$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

.field public static final synthetic $SwitchMap$com$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

.field public static final synthetic $SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

.field public static final synthetic $SwitchMap$com$miui$maml$SoundManager$Command:[I

.field public static final synthetic $SwitchMap$com$miui$maml$data$VariableType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 1
    invoke-static {}, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_a
    sget-object v2, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v2

    .line 17
    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    .line 19
    :catch_12
    const/4 v0, 0x2

    .line 20
    :try_start_13
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    .line 22
    sget-object v3, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 24
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 27
    move-result v3

    .line 28
    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 30
    :catch_1d
    const/4 v2, 0x3

    .line 31
    :try_start_1e
    sget-object v3, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    .line 33
    sget-object v4, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SEEK_TO:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 35
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result v4

    .line 39
    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    .line 41
    :catch_28
    const/4 v3, 0x4

    .line 42
    :try_start_29
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    .line 44
    sget-object v5, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SET_VOLUME:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 46
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 49
    move-result v5

    .line 50
    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    .line 52
    :catch_33
    const/4 v4, 0x5

    .line 53
    :try_start_34
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    .line 55
    sget-object v6, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->CONFIG:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 57
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 60
    move-result v6

    .line 61
    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    .line 63
    :catch_3e
    invoke-static {}, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->values()[Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 66
    move-result-object v5

    .line 67
    array-length v5, v5

    .line 68
    new-array v5, v5, [I

    .line 70
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    .line 72
    :try_start_47
    sget-object v6, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 74
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 77
    move-result v6

    .line 78
    aput v1, v5, v6
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_4f} :catch_4f

    .line 80
    :catch_4f
    :try_start_4f
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    .line 82
    sget-object v6, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->SET_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 84
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 87
    move-result v6

    .line 88
    aput v0, v5, v6
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_59} :catch_59

    .line 90
    :catch_59
    :try_start_59
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    .line 92
    sget-object v6, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->FROM_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 94
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 97
    move-result v6

    .line 98
    aput v2, v5, v6
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_63} :catch_63

    .line 100
    :catch_63
    :try_start_63
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    .line 102
    sget-object v6, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->CANCEL:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 104
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 107
    move-result v6

    .line 108
    aput v3, v5, v6
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6d} :catch_6d

    .line 110
    :catch_6d
    invoke-static {}, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->values()[Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 113
    move-result-object v5

    .line 114
    array-length v5, v5

    .line 115
    new-array v5, v5, [I

    .line 117
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    .line 119
    :try_start_76
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->UPDATE:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 121
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 124
    move-result v6

    .line 125
    aput v1, v5, v6
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_7e} :catch_7e

    .line 127
    :catch_7e
    :try_start_7e
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    .line 129
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->REMOVE:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 131
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 134
    move-result v6

    .line 135
    aput v0, v5, v6
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_88} :catch_88

    .line 137
    :catch_88
    :try_start_88
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    .line 139
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->CLEAR:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 141
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 144
    move-result v6

    .line 145
    aput v2, v5, v6
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_92} :catch_92

    .line 147
    :catch_92
    invoke-static {}, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->values()[Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 150
    move-result-object v5

    .line 151
    array-length v5, v5

    .line 152
    new-array v5, v5, [I

    .line 154
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    .line 156
    :try_start_9b
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->UPDATE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 158
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 161
    move-result v6

    .line 162
    aput v1, v5, v6
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_a3} :catch_a3

    .line 164
    :catch_a3
    :try_start_a3
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    .line 166
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->REMOVE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 168
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 171
    move-result v6

    .line 172
    aput v0, v5, v6
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_ad} :catch_ad

    .line 174
    :catch_ad
    :try_start_ad
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    .line 176
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->CLEAR:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 178
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 181
    move-result v6

    .line 182
    aput v2, v5, v6
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b7} :catch_b7

    .line 184
    :catch_b7
    invoke-static {}, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 187
    move-result-object v5

    .line 188
    array-length v5, v5

    .line 189
    new-array v5, v5, [I

    .line 191
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    .line 193
    :try_start_c0
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 195
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 198
    move-result v6

    .line 199
    aput v1, v5, v6
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_c8} :catch_c8

    .line 201
    :catch_c8
    :try_start_c8
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    .line 203
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 205
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 208
    move-result v6

    .line 209
    aput v0, v5, v6
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_d2} :catch_d2

    .line 211
    :catch_d2
    :try_start_d2
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    .line 213
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 215
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 218
    move-result v6

    .line 219
    aput v2, v5, v6
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_dc} :catch_dc

    .line 221
    :catch_dc
    :try_start_dc
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    .line 223
    sget-object v6, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 225
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 228
    move-result v6

    .line 229
    aput v3, v5, v6
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dc .. :try_end_e6} :catch_e6

    .line 231
    :catch_e6
    invoke-static {}, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 234
    move-result-object v5

    .line 235
    array-length v5, v5

    .line 236
    new-array v5, v5, [I

    .line 238
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

    .line 240
    :try_start_ef
    sget-object v6, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->SET:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 242
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 245
    move-result v6

    .line 246
    aput v1, v5, v6
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ef .. :try_end_f7} :catch_f7

    .line 248
    :catch_f7
    :try_start_f7
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

    .line 250
    sget-object v6, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->UNSET:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 252
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 255
    move-result v6

    .line 256
    aput v0, v5, v6
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_101} :catch_101

    .line 258
    :catch_101
    invoke-static {}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 261
    move-result-object v5

    .line 262
    array-length v5, v5

    .line 263
    new-array v5, v5, [I

    .line 265
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 267
    :try_start_10a
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 269
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 272
    move-result v6

    .line 273
    aput v1, v5, v6
    :try_end_112
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_112} :catch_112

    .line 275
    :catch_112
    :try_start_112
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 277
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->MOVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 279
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 282
    move-result v6

    .line 283
    aput v0, v5, v6
    :try_end_11c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_112 .. :try_end_11c} :catch_11c

    .line 285
    :catch_11c
    :try_start_11c
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 287
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 289
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 292
    move-result v6

    .line 293
    aput v2, v5, v6
    :try_end_126
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11c .. :try_end_126} :catch_126

    .line 295
    :catch_126
    :try_start_126
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 297
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 299
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 302
    move-result v6

    .line 303
    aput v3, v5, v6
    :try_end_130
    .catch Ljava/lang/NoSuchFieldError; {:try_start_126 .. :try_end_130} :catch_130

    .line 305
    :catch_130
    :try_start_130
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 307
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 309
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 312
    move-result v6

    .line 313
    aput v4, v5, v6
    :try_end_13a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_130 .. :try_end_13a} :catch_13a

    .line 315
    :catch_13a
    :try_start_13a
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 317
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 319
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 322
    move-result v6

    .line 323
    const/4 v7, 0x6

    .line 324
    aput v7, v5, v6
    :try_end_145
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13a .. :try_end_145} :catch_145

    .line 326
    :catch_145
    :try_start_145
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 328
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_CIRCLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 330
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 333
    move-result v6

    .line 334
    const/4 v7, 0x7

    .line 335
    aput v7, v5, v6
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_145 .. :try_end_150} :catch_150

    .line 337
    :catch_150
    :try_start_150
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 339
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ELLIPSE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 341
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 344
    move-result v6

    .line 345
    const/16 v7, 0x8

    .line 347
    aput v7, v5, v6
    :try_end_15c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15c} :catch_15c

    .line 349
    :catch_15c
    :try_start_15c
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 351
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CUBIC_CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 353
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 356
    move-result v6

    .line 357
    const/16 v7, 0x9

    .line 359
    aput v7, v5, v6
    :try_end_168
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15c .. :try_end_168} :catch_168

    .line 361
    :catch_168
    :try_start_168
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 363
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ROUND_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 365
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 368
    move-result v6

    .line 369
    const/16 v7, 0xa

    .line 371
    aput v7, v5, v6
    :try_end_174
    .catch Ljava/lang/NoSuchFieldError; {:try_start_168 .. :try_end_174} :catch_174

    .line 373
    :catch_174
    :try_start_174
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 375
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 377
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 380
    move-result v6

    .line 381
    const/16 v7, 0xb

    .line 383
    aput v7, v5, v6
    :try_end_180
    .catch Ljava/lang/NoSuchFieldError; {:try_start_174 .. :try_end_180} :catch_180

    .line 385
    :catch_180
    :try_start_180
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 387
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 389
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 392
    move-result v6

    .line 393
    const/16 v7, 0xc

    .line 395
    aput v7, v5, v6
    :try_end_18c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_180 .. :try_end_18c} :catch_18c

    .line 397
    :catch_18c
    :try_start_18c
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 399
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CREATE_GRADIENT_BOX:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 401
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 404
    move-result v6

    .line 405
    const/16 v7, 0xd

    .line 407
    aput v7, v5, v6
    :try_end_198
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18c .. :try_end_198} :catch_198

    .line 409
    :catch_198
    :try_start_198
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 411
    sget-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->SET_RENDER_LISTENER:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 413
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 416
    move-result v6

    .line 417
    const/16 v7, 0xe

    .line 419
    aput v7, v5, v6
    :try_end_1a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_198 .. :try_end_1a4} :catch_1a4

    .line 421
    :catch_1a4
    invoke-static {}, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 424
    move-result-object v5

    .line 425
    array-length v5, v5

    .line 426
    new-array v5, v5, [I

    .line 428
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$PbrCommand$CommandType:[I

    .line 430
    :try_start_1ad
    sget-object v6, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->UPDATE_UNIFORM:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 432
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 435
    move-result v6

    .line 436
    aput v1, v5, v6
    :try_end_1b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ad .. :try_end_1b5} :catch_1b5

    .line 438
    :catch_1b5
    invoke-static {}, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->values()[Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 441
    move-result-object v5

    .line 442
    array-length v5, v5

    .line 443
    new-array v5, v5, [I

    .line 445
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

    .line 447
    :try_start_1be
    sget-object v6, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_ON:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 449
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 452
    move-result v6

    .line 453
    aput v1, v5, v6
    :try_end_1c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1be .. :try_end_1c6} :catch_1c6

    .line 455
    :catch_1c6
    :try_start_1c6
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

    .line 457
    sget-object v6, Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_OFF:Lcom/miui/maml/ActionCommand$SensorBinderCommand$CommandType;

    .line 459
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 462
    move-result v6

    .line 463
    aput v0, v5, v6
    :try_end_1d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c6 .. :try_end_1d0} :catch_1d0

    .line 465
    :catch_1d0
    invoke-static {}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->values()[Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 468
    move-result-object v5

    .line 469
    array-length v5, v5

    .line 470
    new-array v5, v5, [I

    .line 472
    sput-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 474
    :try_start_1d9
    sget-object v6, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 476
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 479
    move-result v6

    .line 480
    aput v1, v5, v6
    :try_end_1e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d9 .. :try_end_1e1} :catch_1e1

    .line 482
    :catch_1e1
    :try_start_1e1
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 484
    sget-object v6, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 486
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 489
    move-result v6

    .line 490
    aput v0, v5, v6
    :try_end_1eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e1 .. :try_end_1eb} :catch_1eb

    .line 492
    :catch_1eb
    :try_start_1eb
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 494
    sget-object v6, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ANIMATION_ITEM:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 496
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 499
    move-result v6

    .line 500
    aput v2, v5, v6
    :try_end_1f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1eb .. :try_end_1f5} :catch_1f5

    .line 502
    :catch_1f5
    :try_start_1f5
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 504
    sget-object v6, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE_BINDER:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 506
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 509
    move-result v6

    .line 510
    aput v3, v5, v6
    :try_end_1ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f5 .. :try_end_1ff} :catch_1ff

    .line 512
    :catch_1ff
    :try_start_1ff
    sget-object v5, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 514
    sget-object v6, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 516
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 519
    move-result v6

    .line 520
    aput v4, v5, v6
    :try_end_209
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ff .. :try_end_209} :catch_209

    .line 522
    :catch_209
    invoke-static {}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->values()[Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 525
    move-result-object v4

    .line 526
    array-length v4, v4

    .line 527
    new-array v4, v4, [I

    .line 529
    sput-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

    .line 531
    :try_start_212
    sget-object v5, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 533
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 536
    move-result v5

    .line 537
    aput v1, v4, v5
    :try_end_21a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_212 .. :try_end_21a} :catch_21a

    .line 539
    :catch_21a
    :try_start_21a
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

    .line 541
    sget-object v5, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 543
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 546
    move-result v5

    .line 547
    aput v0, v4, v5
    :try_end_224
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21a .. :try_end_224} :catch_224

    .line 549
    :catch_224
    :try_start_224
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

    .line 551
    sget-object v5, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 553
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 556
    move-result v5

    .line 557
    aput v2, v4, v5
    :try_end_22e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_224 .. :try_end_22e} :catch_22e

    .line 559
    :catch_22e
    :try_start_22e
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

    .line 561
    sget-object v5, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 563
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 566
    move-result v5

    .line 567
    aput v3, v4, v5
    :try_end_238
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22e .. :try_end_238} :catch_238

    .line 569
    :catch_238
    invoke-static {}, Lcom/miui/maml/SoundManager$Command;->values()[Lcom/miui/maml/SoundManager$Command;

    .line 572
    move-result-object v4

    .line 573
    array-length v4, v4

    .line 574
    new-array v4, v4, [I

    .line 576
    sput-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    .line 578
    :try_start_241
    sget-object v5, Lcom/miui/maml/SoundManager$Command;->Play:Lcom/miui/maml/SoundManager$Command;

    .line 580
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 583
    move-result v5

    .line 584
    aput v1, v4, v5
    :try_end_249
    .catch Ljava/lang/NoSuchFieldError; {:try_start_241 .. :try_end_249} :catch_249

    .line 586
    :catch_249
    :try_start_249
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    .line 588
    sget-object v5, Lcom/miui/maml/SoundManager$Command;->Pause:Lcom/miui/maml/SoundManager$Command;

    .line 590
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 593
    move-result v5

    .line 594
    aput v0, v4, v5
    :try_end_253
    .catch Ljava/lang/NoSuchFieldError; {:try_start_249 .. :try_end_253} :catch_253

    .line 596
    :catch_253
    :try_start_253
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    .line 598
    sget-object v5, Lcom/miui/maml/SoundManager$Command;->Resume:Lcom/miui/maml/SoundManager$Command;

    .line 600
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 603
    move-result v5

    .line 604
    aput v2, v4, v5
    :try_end_25d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_253 .. :try_end_25d} :catch_25d

    .line 606
    :catch_25d
    :try_start_25d
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    .line 608
    sget-object v5, Lcom/miui/maml/SoundManager$Command;->Stop:Lcom/miui/maml/SoundManager$Command;

    .line 610
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 613
    move-result v5

    .line 614
    aput v3, v4, v5
    :try_end_267
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25d .. :try_end_267} :catch_267

    .line 616
    :catch_267
    invoke-static {}, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->values()[Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 619
    move-result-object v4

    .line 620
    array-length v4, v4

    .line 621
    new-array v4, v4, [I

    .line 623
    sput-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    .line 625
    :try_start_270
    sget-object v5, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 627
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 630
    move-result v5

    .line 631
    aput v1, v4, v5
    :try_end_278
    .catch Ljava/lang/NoSuchFieldError; {:try_start_270 .. :try_end_278} :catch_278

    .line 633
    :catch_278
    :try_start_278
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    .line 635
    sget-object v5, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 637
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 640
    move-result v5

    .line 641
    aput v0, v4, v5
    :try_end_282
    .catch Ljava/lang/NoSuchFieldError; {:try_start_278 .. :try_end_282} :catch_282

    .line 643
    :catch_282
    :try_start_282
    sget-object v4, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    .line 645
    sget-object v5, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 647
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 650
    move-result v5

    .line 651
    aput v2, v4, v5
    :try_end_28c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_282 .. :try_end_28c} :catch_28c

    .line 653
    :catch_28c
    :try_start_28c
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    .line 655
    sget-object v4, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 657
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 660
    move-result v4

    .line 661
    aput v3, v2, v4
    :try_end_296
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28c .. :try_end_296} :catch_296

    .line 663
    :catch_296
    invoke-static {}, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->values()[Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    .line 666
    move-result-object v2

    .line 667
    array-length v2, v2

    .line 668
    new-array v2, v2, [I

    .line 670
    sput-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

    .line 672
    :try_start_29f
    sget-object v3, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    .line 674
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 677
    move-result v3

    .line 678
    aput v1, v2, v3
    :try_end_2a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29f .. :try_end_2a7} :catch_2a7

    .line 680
    :catch_2a7
    invoke-static {}, Lcom/miui/maml/data/VariableType;->values()[Lcom/miui/maml/data/VariableType;

    .line 683
    move-result-object v2

    .line 684
    array-length v2, v2

    .line 685
    new-array v2, v2, [I

    .line 687
    sput-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    .line 689
    :try_start_2b0
    sget-object v3, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    .line 691
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 694
    move-result v3

    .line 695
    aput v1, v2, v3
    :try_end_2b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b0 .. :try_end_2b8} :catch_2b8

    .line 697
    :catch_2b8
    :try_start_2b8
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    .line 699
    sget-object v2, Lcom/miui/maml/data/VariableType;->STR:Lcom/miui/maml/data/VariableType;

    .line 701
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 704
    move-result v2

    .line 705
    aput v0, v1, v2
    :try_end_2c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b8 .. :try_end_2c2} :catch_2c2

    .line 707
    :catch_2c2
    return-void
.end method
