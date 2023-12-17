.class synthetic Lcom/miui/maml/data/BaseFunctions$1;
.super Ljava/lang/Object;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/BaseFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/miui/maml/data/BaseFunctions$Fun;->values()[Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 10
    :try_start_9
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->RAND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    .line 19
    :catch_12
    :try_start_12
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 21
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->SIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x2

    .line 28
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    .line 30
    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 32
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->COS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x3

    .line 39
    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    .line 41
    :catch_28
    :try_start_28
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 43
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->TAN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x4

    .line 50
    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    .line 52
    :catch_33
    :try_start_33
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 54
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ASIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x5

    .line 61
    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    .line 63
    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 65
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ACOS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 67
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x6

    .line 72
    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    .line 74
    :catch_49
    :try_start_49
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 76
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ATAN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 81
    move-result v1

    .line 82
    const/4 v2, 0x7

    .line 83
    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    .line 85
    :catch_54
    :try_start_54
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 87
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->SINH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 92
    move-result v1

    .line 93
    const/16 v2, 0x8

    .line 95
    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    .line 97
    :catch_60
    :try_start_60
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 99
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->COSH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 104
    move-result v1

    .line 105
    const/16 v2, 0x9

    .line 107
    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    .line 109
    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 111
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->SQRT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 113
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 116
    move-result v1

    .line 117
    const/16 v2, 0xa

    .line 119
    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    .line 121
    :catch_78
    :try_start_78
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 123
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ABS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 125
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 128
    move-result v1

    .line 129
    const/16 v2, 0xb

    .line 131
    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    .line 133
    :catch_84
    :try_start_84
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 135
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LEN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 137
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 140
    move-result v1

    .line 141
    const/16 v2, 0xc

    .line 143
    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    .line 145
    :catch_90
    :try_start_90
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 147
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 149
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 152
    move-result v1

    .line 153
    const/16 v2, 0xd

    .line 155
    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    .line 157
    :catch_9c
    :try_start_9c
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 159
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 161
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 164
    move-result v1

    .line 165
    const/16 v2, 0xe

    .line 167
    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    .line 169
    :catch_a8
    :try_start_a8
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 171
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ROUND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 176
    move-result v1

    .line 177
    const/16 v2, 0xf

    .line 179
    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    .line 181
    :catch_b4
    :try_start_b4
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 183
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->INT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 185
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 188
    move-result v1

    .line 189
    const/16 v2, 0x10

    .line 191
    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    .line 193
    :catch_c0
    :try_start_c0
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 195
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->NUM:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 197
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 200
    move-result v1

    .line 201
    const/16 v2, 0x11

    .line 203
    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    .line 205
    :catch_cc
    :try_start_cc
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 207
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ISNULL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 209
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 212
    move-result v1

    .line 213
    const/16 v2, 0x12

    .line 215
    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d8

    .line 217
    :catch_d8
    :try_start_d8
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 219
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->NOT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 221
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 224
    move-result v1

    .line 225
    const/16 v2, 0x13

    .line 227
    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_e4} :catch_e4

    .line 229
    :catch_e4
    :try_start_e4
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 231
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->MIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 233
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 236
    move-result v1

    .line 237
    const/16 v2, 0x14

    .line 239
    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_f0} :catch_f0

    .line 241
    :catch_f0
    :try_start_f0
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 243
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->MAX:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 245
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 248
    move-result v1

    .line 249
    const/16 v2, 0x15

    .line 251
    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_fc

    .line 253
    :catch_fc
    :try_start_fc
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 255
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->POW:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 257
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 260
    move-result v1

    .line 261
    const/16 v2, 0x16

    .line 263
    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_108} :catch_108

    .line 265
    :catch_108
    :try_start_108
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 267
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LOG:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 269
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 272
    move-result v1

    .line 273
    const/16 v2, 0x17

    .line 275
    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_114} :catch_114

    .line 277
    :catch_114
    :try_start_114
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 279
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LOG10:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 281
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 284
    move-result v1

    .line 285
    const/16 v2, 0x18

    .line 287
    aput v2, v0, v1
    :try_end_120
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_120} :catch_120

    .line 289
    :catch_120
    :try_start_120
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 291
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->DIGIT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 293
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 296
    move-result v1

    .line 297
    const/16 v2, 0x19

    .line 299
    aput v2, v0, v1
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_120 .. :try_end_12c} :catch_12c

    .line 301
    :catch_12c
    :try_start_12c
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 303
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->EQ:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 305
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 308
    move-result v1

    .line 309
    const/16 v2, 0x1a

    .line 311
    aput v2, v0, v1
    :try_end_138
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_138} :catch_138

    .line 313
    :catch_138
    :try_start_138
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 315
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->NE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 317
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 320
    move-result v1

    .line 321
    const/16 v2, 0x1b

    .line 323
    aput v2, v0, v1
    :try_end_144
    .catch Ljava/lang/NoSuchFieldError; {:try_start_138 .. :try_end_144} :catch_144

    .line 325
    :catch_144
    :try_start_144
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 327
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->GE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 329
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 332
    move-result v1

    .line 333
    const/16 v2, 0x1c

    .line 335
    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_150} :catch_150

    .line 337
    :catch_150
    :try_start_150
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 339
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->GT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 341
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 344
    move-result v1

    .line 345
    const/16 v2, 0x1d

    .line 347
    aput v2, v0, v1
    :try_end_15c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15c} :catch_15c

    .line 349
    :catch_15c
    :try_start_15c
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 351
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 353
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 356
    move-result v1

    .line 357
    const/16 v2, 0x1e

    .line 359
    aput v2, v0, v1
    :try_end_168
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15c .. :try_end_168} :catch_168

    .line 361
    :catch_168
    :try_start_168
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 363
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 365
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 368
    move-result v1

    .line 369
    const/16 v2, 0x1f

    .line 371
    aput v2, v0, v1
    :try_end_174
    .catch Ljava/lang/NoSuchFieldError; {:try_start_168 .. :try_end_174} :catch_174

    .line 373
    :catch_174
    :try_start_174
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 375
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->IFELSE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 377
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 380
    move-result v1

    .line 381
    const/16 v2, 0x20

    .line 383
    aput v2, v0, v1
    :try_end_180
    .catch Ljava/lang/NoSuchFieldError; {:try_start_174 .. :try_end_180} :catch_180

    .line 385
    :catch_180
    :try_start_180
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 387
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->AND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 389
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 392
    move-result v1

    .line 393
    const/16 v2, 0x21

    .line 395
    aput v2, v0, v1
    :try_end_18c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_180 .. :try_end_18c} :catch_18c

    .line 397
    :catch_18c
    :try_start_18c
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 399
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->OR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 401
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 404
    move-result v1

    .line 405
    const/16 v2, 0x22

    .line 407
    aput v2, v0, v1
    :try_end_198
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18c .. :try_end_198} :catch_198

    .line 409
    :catch_198
    :try_start_198
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 411
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->EQS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 413
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 416
    move-result v1

    .line 417
    const/16 v2, 0x23

    .line 419
    aput v2, v0, v1
    :try_end_1a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_198 .. :try_end_1a4} :catch_1a4

    .line 421
    :catch_1a4
    :try_start_1a4
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 423
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->SUBSTR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 425
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 428
    move-result v1

    .line 429
    const/16 v2, 0x24

    .line 431
    aput v2, v0, v1
    :try_end_1b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a4 .. :try_end_1b0} :catch_1b0

    .line 433
    :catch_1b0
    :try_start_1b0
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 435
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->FLOOR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 437
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 440
    move-result v1

    .line 441
    const/16 v2, 0x25

    .line 443
    aput v2, v0, v1
    :try_end_1bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b0 .. :try_end_1bc} :catch_1bc

    .line 445
    :catch_1bc
    :try_start_1bc
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 447
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->CEIL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 449
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 452
    move-result v1

    .line 453
    const/16 v2, 0x26

    .line 455
    aput v2, v0, v1
    :try_end_1c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bc .. :try_end_1c8} :catch_1c8

    .line 457
    :catch_1c8
    :try_start_1c8
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 459
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->HASH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 461
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 464
    move-result v1

    .line 465
    const/16 v2, 0x27

    .line 467
    aput v2, v0, v1
    :try_end_1d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c8 .. :try_end_1d4} :catch_1d4

    .line 469
    :catch_1d4
    return-void
.end method
