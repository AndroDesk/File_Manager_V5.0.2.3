.class synthetic Lcom/junrar/unpack/vm/RarVM$1;
.super Ljava/lang/Object;
.source "RarVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/junrar/unpack/vm/RarVM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$junrar$unpack$vm$VMCommands:[I

.field public static final synthetic $SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    invoke-static {}, Lcom/junrar/unpack/vm/VMStandardFilters;->values()[Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I

    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_a
    sget-object v2, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8:Lcom/junrar/unpack/vm/VMStandardFilters;

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
    sget-object v2, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I

    .line 22
    sget-object v3, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_E8E9:Lcom/junrar/unpack/vm/VMStandardFilters;

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
    sget-object v3, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I

    .line 33
    sget-object v4, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_ITANIUM:Lcom/junrar/unpack/vm/VMStandardFilters;

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
    sget-object v4, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I

    .line 44
    sget-object v5, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_DELTA:Lcom/junrar/unpack/vm/VMStandardFilters;

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
    sget-object v5, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I

    .line 55
    sget-object v6, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_RGB:Lcom/junrar/unpack/vm/VMStandardFilters;

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
    const/4 v5, 0x6

    .line 64
    :try_start_3f
    sget-object v6, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I

    .line 66
    sget-object v7, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_AUDIO:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 68
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 71
    move-result v7

    .line 72
    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    .line 74
    :catch_49
    const/4 v6, 0x7

    .line 75
    :try_start_4a
    sget-object v7, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMStandardFilters:[I

    .line 77
    sget-object v8, Lcom/junrar/unpack/vm/VMStandardFilters;->VMSF_UPCASE:Lcom/junrar/unpack/vm/VMStandardFilters;

    .line 79
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 82
    move-result v8

    .line 83
    aput v6, v7, v8
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_54} :catch_54

    .line 85
    :catch_54
    invoke-static {}, Lcom/junrar/unpack/vm/VMCommands;->values()[Lcom/junrar/unpack/vm/VMCommands;

    .line 88
    move-result-object v7

    .line 89
    array-length v7, v7

    .line 90
    new-array v7, v7, [I

    .line 92
    sput-object v7, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 94
    :try_start_5d
    sget-object v8, Lcom/junrar/unpack/vm/VMCommands;->VM_MOV:Lcom/junrar/unpack/vm/VMCommands;

    .line 96
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 99
    move-result v8

    .line 100
    aput v1, v7, v8
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_65} :catch_65

    .line 102
    :catch_65
    :try_start_65
    sget-object v1, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 104
    sget-object v7, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVB:Lcom/junrar/unpack/vm/VMCommands;

    .line 106
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 109
    move-result v7

    .line 110
    aput v0, v1, v7
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_6f

    .line 112
    :catch_6f
    :try_start_6f
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 114
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVD:Lcom/junrar/unpack/vm/VMCommands;

    .line 116
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 119
    move-result v1

    .line 120
    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_79

    .line 122
    :catch_79
    :try_start_79
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 124
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_CMP:Lcom/junrar/unpack/vm/VMCommands;

    .line 126
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 129
    move-result v1

    .line 130
    aput v3, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_83

    .line 132
    :catch_83
    :try_start_83
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 134
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_CMPB:Lcom/junrar/unpack/vm/VMCommands;

    .line 136
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 139
    move-result v1

    .line 140
    aput v4, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_8d

    .line 142
    :catch_8d
    :try_start_8d
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 144
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_CMPD:Lcom/junrar/unpack/vm/VMCommands;

    .line 146
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 149
    move-result v1

    .line 150
    aput v5, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_97} :catch_97

    .line 152
    :catch_97
    :try_start_97
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 154
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_ADD:Lcom/junrar/unpack/vm/VMCommands;

    .line 156
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 159
    move-result v1

    .line 160
    aput v6, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a1} :catch_a1

    .line 162
    :catch_a1
    :try_start_a1
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 164
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_ADDB:Lcom/junrar/unpack/vm/VMCommands;

    .line 166
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 169
    move-result v1

    .line 170
    const/16 v2, 0x8

    .line 172
    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ad} :catch_ad

    .line 174
    :catch_ad
    :try_start_ad
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 176
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_ADDD:Lcom/junrar/unpack/vm/VMCommands;

    .line 178
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 181
    move-result v1

    .line 182
    const/16 v2, 0x9

    .line 184
    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b9} :catch_b9

    .line 186
    :catch_b9
    :try_start_b9
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 188
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_SUB:Lcom/junrar/unpack/vm/VMCommands;

    .line 190
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 193
    move-result v1

    .line 194
    const/16 v2, 0xa

    .line 196
    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_c5} :catch_c5

    .line 198
    :catch_c5
    :try_start_c5
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 200
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_SUBB:Lcom/junrar/unpack/vm/VMCommands;

    .line 202
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 205
    move-result v1

    .line 206
    const/16 v2, 0xb

    .line 208
    aput v2, v0, v1
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_d1} :catch_d1

    .line 210
    :catch_d1
    :try_start_d1
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 212
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_SUBD:Lcom/junrar/unpack/vm/VMCommands;

    .line 214
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 217
    move-result v1

    .line 218
    const/16 v2, 0xc

    .line 220
    aput v2, v0, v1
    :try_end_dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d1 .. :try_end_dd} :catch_dd

    .line 222
    :catch_dd
    :try_start_dd
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 224
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JZ:Lcom/junrar/unpack/vm/VMCommands;

    .line 226
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 229
    move-result v1

    .line 230
    const/16 v2, 0xd

    .line 232
    aput v2, v0, v1
    :try_end_e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dd .. :try_end_e9} :catch_e9

    .line 234
    :catch_e9
    :try_start_e9
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 236
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JNZ:Lcom/junrar/unpack/vm/VMCommands;

    .line 238
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 241
    move-result v1

    .line 242
    const/16 v2, 0xe

    .line 244
    aput v2, v0, v1
    :try_end_f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e9 .. :try_end_f5} :catch_f5

    .line 246
    :catch_f5
    :try_start_f5
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 248
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_INC:Lcom/junrar/unpack/vm/VMCommands;

    .line 250
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 253
    move-result v1

    .line 254
    const/16 v2, 0xf

    .line 256
    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f5 .. :try_end_101} :catch_101

    .line 258
    :catch_101
    :try_start_101
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 260
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_INCB:Lcom/junrar/unpack/vm/VMCommands;

    .line 262
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 265
    move-result v1

    .line 266
    const/16 v2, 0x10

    .line 268
    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10d} :catch_10d

    .line 270
    :catch_10d
    :try_start_10d
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 272
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_INCD:Lcom/junrar/unpack/vm/VMCommands;

    .line 274
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 277
    move-result v1

    .line 278
    const/16 v2, 0x11

    .line 280
    aput v2, v0, v1
    :try_end_119
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_119} :catch_119

    .line 282
    :catch_119
    :try_start_119
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 284
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_DEC:Lcom/junrar/unpack/vm/VMCommands;

    .line 286
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 289
    move-result v1

    .line 290
    const/16 v2, 0x12

    .line 292
    aput v2, v0, v1
    :try_end_125
    .catch Ljava/lang/NoSuchFieldError; {:try_start_119 .. :try_end_125} :catch_125

    .line 294
    :catch_125
    :try_start_125
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 296
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_DECB:Lcom/junrar/unpack/vm/VMCommands;

    .line 298
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 301
    move-result v1

    .line 302
    const/16 v2, 0x13

    .line 304
    aput v2, v0, v1
    :try_end_131
    .catch Ljava/lang/NoSuchFieldError; {:try_start_125 .. :try_end_131} :catch_131

    .line 306
    :catch_131
    :try_start_131
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 308
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_DECD:Lcom/junrar/unpack/vm/VMCommands;

    .line 310
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 313
    move-result v1

    .line 314
    const/16 v2, 0x14

    .line 316
    aput v2, v0, v1
    :try_end_13d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_131 .. :try_end_13d} :catch_13d

    .line 318
    :catch_13d
    :try_start_13d
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 320
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JMP:Lcom/junrar/unpack/vm/VMCommands;

    .line 322
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 325
    move-result v1

    .line 326
    const/16 v2, 0x15

    .line 328
    aput v2, v0, v1
    :try_end_149
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13d .. :try_end_149} :catch_149

    .line 330
    :catch_149
    :try_start_149
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 332
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_XOR:Lcom/junrar/unpack/vm/VMCommands;

    .line 334
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 337
    move-result v1

    .line 338
    const/16 v2, 0x16

    .line 340
    aput v2, v0, v1
    :try_end_155
    .catch Ljava/lang/NoSuchFieldError; {:try_start_149 .. :try_end_155} :catch_155

    .line 342
    :catch_155
    :try_start_155
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 344
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_AND:Lcom/junrar/unpack/vm/VMCommands;

    .line 346
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 349
    move-result v1

    .line 350
    const/16 v2, 0x17

    .line 352
    aput v2, v0, v1
    :try_end_161
    .catch Ljava/lang/NoSuchFieldError; {:try_start_155 .. :try_end_161} :catch_161

    .line 354
    :catch_161
    :try_start_161
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 356
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_OR:Lcom/junrar/unpack/vm/VMCommands;

    .line 358
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 361
    move-result v1

    .line 362
    const/16 v2, 0x18

    .line 364
    aput v2, v0, v1
    :try_end_16d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_161 .. :try_end_16d} :catch_16d

    .line 366
    :catch_16d
    :try_start_16d
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 368
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_TEST:Lcom/junrar/unpack/vm/VMCommands;

    .line 370
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 373
    move-result v1

    .line 374
    const/16 v2, 0x19

    .line 376
    aput v2, v0, v1
    :try_end_179
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16d .. :try_end_179} :catch_179

    .line 378
    :catch_179
    :try_start_179
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 380
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JS:Lcom/junrar/unpack/vm/VMCommands;

    .line 382
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 385
    move-result v1

    .line 386
    const/16 v2, 0x1a

    .line 388
    aput v2, v0, v1
    :try_end_185
    .catch Ljava/lang/NoSuchFieldError; {:try_start_179 .. :try_end_185} :catch_185

    .line 390
    :catch_185
    :try_start_185
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 392
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JNS:Lcom/junrar/unpack/vm/VMCommands;

    .line 394
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 397
    move-result v1

    .line 398
    const/16 v2, 0x1b

    .line 400
    aput v2, v0, v1
    :try_end_191
    .catch Ljava/lang/NoSuchFieldError; {:try_start_185 .. :try_end_191} :catch_191

    .line 402
    :catch_191
    :try_start_191
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 404
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JB:Lcom/junrar/unpack/vm/VMCommands;

    .line 406
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 409
    move-result v1

    .line 410
    const/16 v2, 0x1c

    .line 412
    aput v2, v0, v1
    :try_end_19d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_191 .. :try_end_19d} :catch_19d

    .line 414
    :catch_19d
    :try_start_19d
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 416
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JBE:Lcom/junrar/unpack/vm/VMCommands;

    .line 418
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 421
    move-result v1

    .line 422
    const/16 v2, 0x1d

    .line 424
    aput v2, v0, v1
    :try_end_1a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19d .. :try_end_1a9} :catch_1a9

    .line 426
    :catch_1a9
    :try_start_1a9
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 428
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JA:Lcom/junrar/unpack/vm/VMCommands;

    .line 430
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 433
    move-result v1

    .line 434
    const/16 v2, 0x1e

    .line 436
    aput v2, v0, v1
    :try_end_1b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a9 .. :try_end_1b5} :catch_1b5

    .line 438
    :catch_1b5
    :try_start_1b5
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 440
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_JAE:Lcom/junrar/unpack/vm/VMCommands;

    .line 442
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 445
    move-result v1

    .line 446
    const/16 v2, 0x1f

    .line 448
    aput v2, v0, v1
    :try_end_1c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b5 .. :try_end_1c1} :catch_1c1

    .line 450
    :catch_1c1
    :try_start_1c1
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 452
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSH:Lcom/junrar/unpack/vm/VMCommands;

    .line 454
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 457
    move-result v1

    .line 458
    const/16 v2, 0x20

    .line 460
    aput v2, v0, v1
    :try_end_1cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c1 .. :try_end_1cd} :catch_1cd

    .line 462
    :catch_1cd
    :try_start_1cd
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 464
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_POP:Lcom/junrar/unpack/vm/VMCommands;

    .line 466
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 469
    move-result v1

    .line 470
    const/16 v2, 0x21

    .line 472
    aput v2, v0, v1
    :try_end_1d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1cd .. :try_end_1d9} :catch_1d9

    .line 474
    :catch_1d9
    :try_start_1d9
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 476
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_CALL:Lcom/junrar/unpack/vm/VMCommands;

    .line 478
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 481
    move-result v1

    .line 482
    const/16 v2, 0x22

    .line 484
    aput v2, v0, v1
    :try_end_1e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d9 .. :try_end_1e5} :catch_1e5

    .line 486
    :catch_1e5
    :try_start_1e5
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 488
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_NOT:Lcom/junrar/unpack/vm/VMCommands;

    .line 490
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 493
    move-result v1

    .line 494
    const/16 v2, 0x23

    .line 496
    aput v2, v0, v1
    :try_end_1f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e5 .. :try_end_1f1} :catch_1f1

    .line 498
    :catch_1f1
    :try_start_1f1
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 500
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_SHL:Lcom/junrar/unpack/vm/VMCommands;

    .line 502
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 505
    move-result v1

    .line 506
    const/16 v2, 0x24

    .line 508
    aput v2, v0, v1
    :try_end_1fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f1 .. :try_end_1fd} :catch_1fd

    .line 510
    :catch_1fd
    :try_start_1fd
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 512
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_SHR:Lcom/junrar/unpack/vm/VMCommands;

    .line 514
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 517
    move-result v1

    .line 518
    const/16 v2, 0x25

    .line 520
    aput v2, v0, v1
    :try_end_209
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fd .. :try_end_209} :catch_209

    .line 522
    :catch_209
    :try_start_209
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 524
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_SAR:Lcom/junrar/unpack/vm/VMCommands;

    .line 526
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 529
    move-result v1

    .line 530
    const/16 v2, 0x26

    .line 532
    aput v2, v0, v1
    :try_end_215
    .catch Ljava/lang/NoSuchFieldError; {:try_start_209 .. :try_end_215} :catch_215

    .line 534
    :catch_215
    :try_start_215
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 536
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_NEG:Lcom/junrar/unpack/vm/VMCommands;

    .line 538
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 541
    move-result v1

    .line 542
    const/16 v2, 0x27

    .line 544
    aput v2, v0, v1
    :try_end_221
    .catch Ljava/lang/NoSuchFieldError; {:try_start_215 .. :try_end_221} :catch_221

    .line 546
    :catch_221
    :try_start_221
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 548
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_NEGB:Lcom/junrar/unpack/vm/VMCommands;

    .line 550
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 553
    move-result v1

    .line 554
    const/16 v2, 0x28

    .line 556
    aput v2, v0, v1
    :try_end_22d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_221 .. :try_end_22d} :catch_22d

    .line 558
    :catch_22d
    :try_start_22d
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 560
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_NEGD:Lcom/junrar/unpack/vm/VMCommands;

    .line 562
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 565
    move-result v1

    .line 566
    const/16 v2, 0x29

    .line 568
    aput v2, v0, v1
    :try_end_239
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22d .. :try_end_239} :catch_239

    .line 570
    :catch_239
    :try_start_239
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 572
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSHA:Lcom/junrar/unpack/vm/VMCommands;

    .line 574
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 577
    move-result v1

    .line 578
    const/16 v2, 0x2a

    .line 580
    aput v2, v0, v1
    :try_end_245
    .catch Ljava/lang/NoSuchFieldError; {:try_start_239 .. :try_end_245} :catch_245

    .line 582
    :catch_245
    :try_start_245
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 584
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_POPA:Lcom/junrar/unpack/vm/VMCommands;

    .line 586
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 589
    move-result v1

    .line 590
    const/16 v2, 0x2b

    .line 592
    aput v2, v0, v1
    :try_end_251
    .catch Ljava/lang/NoSuchFieldError; {:try_start_245 .. :try_end_251} :catch_251

    .line 594
    :catch_251
    :try_start_251
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 596
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSHF:Lcom/junrar/unpack/vm/VMCommands;

    .line 598
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 601
    move-result v1

    .line 602
    const/16 v2, 0x2c

    .line 604
    aput v2, v0, v1
    :try_end_25d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_251 .. :try_end_25d} :catch_25d

    .line 606
    :catch_25d
    :try_start_25d
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 608
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_POPF:Lcom/junrar/unpack/vm/VMCommands;

    .line 610
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 613
    move-result v1

    .line 614
    const/16 v2, 0x2d

    .line 616
    aput v2, v0, v1
    :try_end_269
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25d .. :try_end_269} :catch_269

    .line 618
    :catch_269
    :try_start_269
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 620
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVZX:Lcom/junrar/unpack/vm/VMCommands;

    .line 622
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 625
    move-result v1

    .line 626
    const/16 v2, 0x2e

    .line 628
    aput v2, v0, v1
    :try_end_275
    .catch Ljava/lang/NoSuchFieldError; {:try_start_269 .. :try_end_275} :catch_275

    .line 630
    :catch_275
    :try_start_275
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 632
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVSX:Lcom/junrar/unpack/vm/VMCommands;

    .line 634
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 637
    move-result v1

    .line 638
    const/16 v2, 0x2f

    .line 640
    aput v2, v0, v1
    :try_end_281
    .catch Ljava/lang/NoSuchFieldError; {:try_start_275 .. :try_end_281} :catch_281

    .line 642
    :catch_281
    :try_start_281
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 644
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_XCHG:Lcom/junrar/unpack/vm/VMCommands;

    .line 646
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 649
    move-result v1

    .line 650
    const/16 v2, 0x30

    .line 652
    aput v2, v0, v1
    :try_end_28d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_281 .. :try_end_28d} :catch_28d

    .line 654
    :catch_28d
    :try_start_28d
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 656
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_MUL:Lcom/junrar/unpack/vm/VMCommands;

    .line 658
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 661
    move-result v1

    .line 662
    const/16 v2, 0x31

    .line 664
    aput v2, v0, v1
    :try_end_299
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28d .. :try_end_299} :catch_299

    .line 666
    :catch_299
    :try_start_299
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 668
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_DIV:Lcom/junrar/unpack/vm/VMCommands;

    .line 670
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 673
    move-result v1

    .line 674
    const/16 v2, 0x32

    .line 676
    aput v2, v0, v1
    :try_end_2a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_299 .. :try_end_2a5} :catch_2a5

    .line 678
    :catch_2a5
    :try_start_2a5
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 680
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_ADC:Lcom/junrar/unpack/vm/VMCommands;

    .line 682
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 685
    move-result v1

    .line 686
    const/16 v2, 0x33

    .line 688
    aput v2, v0, v1
    :try_end_2b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a5 .. :try_end_2b1} :catch_2b1

    .line 690
    :catch_2b1
    :try_start_2b1
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 692
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_SBB:Lcom/junrar/unpack/vm/VMCommands;

    .line 694
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 697
    move-result v1

    .line 698
    const/16 v2, 0x34

    .line 700
    aput v2, v0, v1
    :try_end_2bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b1 .. :try_end_2bd} :catch_2bd

    .line 702
    :catch_2bd
    :try_start_2bd
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 704
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/junrar/unpack/vm/VMCommands;

    .line 706
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 709
    move-result v1

    .line 710
    const/16 v2, 0x35

    .line 712
    aput v2, v0, v1
    :try_end_2c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2bd .. :try_end_2c9} :catch_2c9

    .line 714
    :catch_2c9
    :try_start_2c9
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 716
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_STANDARD:Lcom/junrar/unpack/vm/VMCommands;

    .line 718
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 721
    move-result v1

    .line 722
    const/16 v2, 0x36

    .line 724
    aput v2, v0, v1
    :try_end_2d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c9 .. :try_end_2d5} :catch_2d5

    .line 726
    :catch_2d5
    :try_start_2d5
    sget-object v0, Lcom/junrar/unpack/vm/RarVM$1;->$SwitchMap$com$junrar$unpack$vm$VMCommands:[I

    .line 728
    sget-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_PRINT:Lcom/junrar/unpack/vm/VMCommands;

    .line 730
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 733
    move-result v1

    .line 734
    const/16 v2, 0x37

    .line 736
    aput v2, v0, v1
    :try_end_2e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d5 .. :try_end_2e1} :catch_2e1

    .line 738
    :catch_2e1
    return-void
.end method
