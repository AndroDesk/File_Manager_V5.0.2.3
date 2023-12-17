.class public final Lorg/jaudiotagger/audio/asf/data/GUID;
.super Ljava/lang/Object;
.source "GUID.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final GUID_AUDIOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_AUDIO_ERROR_CONCEALEMENT_ABSENT:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_AUDIO_ERROR_CONCEALEMENT_INTERLEAVED:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_CONTENTDESCRIPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_CONTENT_ENCRYPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_ENCODING:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_EXTENDED_CONTENT_DESCRIPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_FILE:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_HEADER:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_HEADER_EXTENSION:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_LANGUAGE_LIST:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_LENGTH:I = 0x10

.field public static final GUID_METADATA:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_METADATA_LIBRARY:Lorg/jaudiotagger/audio/asf/data/GUID;

.field private static final GUID_PATTERN:Ljava/util/regex/Pattern;

.field public static final GUID_STREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_STREAM_BITRATE_PROPERTIES:Lorg/jaudiotagger/audio/asf/data/GUID;

.field private static final GUID_TO_CONFIGURED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            ">;"
        }
    .end annotation
.end field

.field public static final GUID_UNSPECIFIED:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_VIDEOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final KNOWN_GUIDS:[Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final SCRIPT_COMMAND_OBJECT:Lorg/jaudiotagger/audio/asf/data/GUID;


# instance fields
.field private description:Ljava/lang/String;

.field private guidData:[I

.field private hash:I


# direct methods
.method public static constructor <clinit>()V
    .registers 20

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    const/16 v1, 0x10

    .line 5
    new-array v2, v1, [I

    .line 7
    fill-array-data v2, :array_182

    .line 10
    const-string v3, "Audio error concealment absent."

    .line 12
    invoke-direct {v0, v2, v3}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 15
    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_ABSENT:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 17
    new-instance v2, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 19
    new-array v3, v1, [I

    .line 21
    fill-array-data v3, :array_1a6

    .line 24
    const-string v4, "Interleaved audio error concealment."

    .line 26
    invoke-direct {v2, v3, v4}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 29
    sput-object v2, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_INTERLEAVED:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 31
    new-instance v2, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 33
    new-array v3, v1, [I

    .line 35
    fill-array-data v3, :array_1ca

    .line 38
    const-string v4, " Audio stream"

    .line 40
    invoke-direct {v2, v3, v4}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 43
    sput-object v2, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_AUDIOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 45
    new-instance v3, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 47
    new-array v4, v1, [I

    .line 49
    fill-array-data v4, :array_1ee

    .line 52
    const-string v5, "Content Branding"

    .line 54
    invoke-direct {v3, v4, v5}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 57
    sput-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 59
    new-instance v4, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 61
    new-array v5, v1, [I

    .line 63
    fill-array-data v5, :array_212

    .line 66
    const-string v6, "Content Encryption Object"

    .line 68
    invoke-direct {v4, v5, v6}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 71
    sput-object v4, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENT_ENCRYPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 73
    new-instance v5, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 75
    new-array v6, v1, [I

    .line 77
    fill-array-data v6, :array_236

    .line 80
    const-string v7, "Content Description"

    .line 82
    invoke-direct {v5, v6, v7}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 85
    sput-object v5, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 87
    new-instance v6, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 89
    new-array v7, v1, [I

    .line 91
    fill-array-data v7, :array_25a

    .line 94
    const-string v8, "Encoding description"

    .line 96
    invoke-direct {v6, v7, v8}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 99
    sput-object v6, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_ENCODING:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 101
    new-instance v7, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 103
    new-array v8, v1, [I

    .line 105
    fill-array-data v8, :array_27e

    .line 108
    const-string v9, "Extended Content Description"

    .line 110
    invoke-direct {v7, v8, v9}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 113
    sput-object v7, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 115
    new-instance v8, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 117
    new-array v9, v1, [I

    .line 119
    fill-array-data v9, :array_2a2

    .line 122
    const-string v10, "File header"

    .line 124
    invoke-direct {v8, v9, v10}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 127
    sput-object v8, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_FILE:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 129
    new-instance v9, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 131
    new-array v10, v1, [I

    .line 133
    fill-array-data v10, :array_2c6

    .line 136
    const-string v11, "Asf header"

    .line 138
    invoke-direct {v9, v10, v11}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 141
    sput-object v9, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 143
    new-instance v10, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 145
    new-array v11, v1, [I

    .line 147
    fill-array-data v11, :array_2ea

    .line 150
    const-string v12, "Header Extension"

    .line 152
    invoke-direct {v10, v11, v12}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 155
    sput-object v10, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 157
    new-instance v11, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 159
    new-array v12, v1, [I

    .line 161
    fill-array-data v12, :array_30e

    .line 164
    const-string v13, "Language List"

    .line 166
    invoke-direct {v11, v12, v13}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 169
    sput-object v11, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 171
    new-instance v12, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 173
    new-array v13, v1, [I

    .line 175
    fill-array-data v13, :array_332

    .line 178
    const-string v14, "Metadata"

    .line 180
    invoke-direct {v12, v13, v14}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 183
    sput-object v12, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_METADATA:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 185
    new-instance v13, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 187
    new-array v14, v1, [I

    .line 189
    fill-array-data v14, :array_356

    .line 192
    const-string v15, "Metadata Library"

    .line 194
    invoke-direct {v13, v14, v15}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 197
    sput-object v13, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_METADATA_LIBRARY:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 199
    const-string v14, "[a-f0-9]{8}\\-[a-f0-9]{4}\\-[a-f0-9]{4}\\-[a-f0-9]{4}\\-[a-f0-9]{12}"

    .line 201
    const/4 v15, 0x2

    .line 202
    invoke-static {v14, v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 205
    move-result-object v14

    .line 206
    sput-object v14, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_PATTERN:Ljava/util/regex/Pattern;

    .line 208
    new-instance v14, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 210
    new-array v15, v1, [I

    .line 212
    fill-array-data v15, :array_37a

    .line 215
    const-string v1, "Stream"

    .line 217
    invoke-direct {v14, v15, v1}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 220
    sput-object v14, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_STREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 222
    new-instance v1, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 224
    move-object/from16 v16, v11

    .line 226
    const/16 v15, 0x10

    .line 228
    new-array v11, v15, [I

    .line 230
    fill-array-data v11, :array_39e

    .line 233
    const-string v15, "Stream bitrate properties"

    .line 235
    invoke-direct {v1, v11, v15}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 238
    sput-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 240
    new-instance v11, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 242
    move-object/from16 v17, v12

    .line 244
    const/16 v15, 0x10

    .line 246
    new-array v12, v15, [I

    .line 248
    fill-array-data v12, :array_3c2

    .line 251
    const-string v15, "Unspecified"

    .line 253
    invoke-direct {v11, v12, v15}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 256
    sput-object v11, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_UNSPECIFIED:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 258
    new-instance v12, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 260
    move-object/from16 v18, v13

    .line 262
    const/16 v15, 0x10

    .line 264
    new-array v13, v15, [I

    .line 266
    fill-array-data v13, :array_3e6

    .line 269
    const-string v15, "Video stream"

    .line 271
    invoke-direct {v12, v13, v15}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 274
    sput-object v12, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_VIDEOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 276
    new-instance v13, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 278
    move-object/from16 v19, v11

    .line 280
    const/16 v15, 0x10

    .line 282
    new-array v11, v15, [I

    .line 284
    fill-array-data v11, :array_40a

    .line 287
    const-string v15, "Script Command Object"

    .line 289
    invoke-direct {v13, v11, v15}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    .line 292
    sput-object v13, Lorg/jaudiotagger/audio/asf/data/GUID;->SCRIPT_COMMAND_OBJECT:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 294
    const/16 v11, 0x12

    .line 296
    new-array v11, v11, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 298
    const/4 v15, 0x0

    .line 299
    aput-object v0, v11, v15

    .line 301
    const/4 v0, 0x1

    .line 302
    aput-object v5, v11, v0

    .line 304
    const/4 v0, 0x2

    .line 305
    aput-object v2, v11, v0

    .line 307
    const/4 v0, 0x3

    .line 308
    aput-object v6, v11, v0

    .line 310
    const/4 v0, 0x4

    .line 311
    aput-object v8, v11, v0

    .line 313
    const/4 v0, 0x5

    .line 314
    aput-object v9, v11, v0

    .line 316
    const/4 v0, 0x6

    .line 317
    aput-object v14, v11, v0

    .line 319
    const/4 v0, 0x7

    .line 320
    aput-object v7, v11, v0

    .line 322
    const/16 v0, 0x8

    .line 324
    aput-object v12, v11, v0

    .line 326
    const/16 v0, 0x9

    .line 328
    aput-object v10, v11, v0

    .line 330
    const/16 v0, 0xa

    .line 332
    aput-object v1, v11, v0

    .line 334
    const/16 v0, 0xb

    .line 336
    aput-object v13, v11, v0

    .line 338
    const/16 v0, 0xc

    .line 340
    aput-object v4, v11, v0

    .line 342
    const/16 v0, 0xd

    .line 344
    aput-object v3, v11, v0

    .line 346
    const/16 v0, 0xe

    .line 348
    aput-object v19, v11, v0

    .line 350
    const/16 v0, 0xf

    .line 352
    aput-object v18, v11, v0

    .line 354
    const/16 v0, 0x10

    .line 356
    aput-object v17, v11, v0

    .line 358
    const/16 v0, 0x11

    .line 360
    aput-object v16, v11, v0

    .line 362
    sput-object v11, Lorg/jaudiotagger/audio/asf/data/GUID;->KNOWN_GUIDS:[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 364
    new-instance v0, Ljava/util/HashMap;

    .line 366
    array-length v1, v11

    .line 367
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 370
    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_TO_CONFIGURED:Ljava/util/Map;

    .line 372
    array-length v0, v11

    .line 373
    :goto_174
    if-ge v15, v0, :cond_180

    .line 375
    aget-object v1, v11, v15

    .line 377
    sget-object v2, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_TO_CONFIGURED:Ljava/util/Map;

    .line 379
    invoke-interface {v2, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    add-int/lit8 v15, v15, 0x1

    .line 384
    goto :goto_174

    .line 385
    :cond_180
    return-void

    .line 386
    nop

    .line 387
    :array_182
    .array-data 4
        0x40
        0xa4
        0xf1
        0x49
        0xce
        0x4e
        0xd0
        0x11
        0xa3
        0xac
        0x0
        0xa0
        0xc9
        0x3
        0x48
        0xf6
    .end array-data

    .line 423
    :array_1a6
    .array-data 4
        0x40
        0xa4
        0xf1
        0x49
        0xce
        0x4e
        0xd0
        0x11
        0xa3
        0xac
        0x0
        0xa0
        0xc9
        0x3
        0x48
        0xf6
    .end array-data

    .line 459
    :array_1ca
    .array-data 4
        0x40
        0x9e
        0x69
        0xf8
        0x4d
        0x5b
        0xcf
        0x11
        0xa8
        0xfd
        0x0
        0x80
        0x5f
        0x5c
        0x44
        0x2b
    .end array-data

    .line 495
    :array_1ee
    .array-data 4
        0xfa
        0xb3
        0x11
        0x22
        0x23
        0xbd
        0xd2
        0x11
        0xb4
        0xb7
        0x0
        0xa0
        0xc9
        0x55
        0xfc
        0x6e
    .end array-data

    .line 531
    :array_212
    .array-data 4
        0xfb
        0xb3
        0x11
        0x22
        0x23
        0xbd
        0xd2
        0x11
        0xb4
        0xb7
        0x0
        0xa0
        0xc9
        0x55
        0xfc
        0x6e
    .end array-data

    .line 567
    :array_236
    .array-data 4
        0x33
        0x26
        0xb2
        0x75
        0x8e
        0x66
        0xcf
        0x11
        0xa6
        0xd9
        0x0
        0xaa
        0x0
        0x62
        0xce
        0x6c
    .end array-data

    .line 603
    :array_25a
    .array-data 4
        0x40
        0x52
        0xd1
        0x86
        0x1d
        0x31
        0xd0
        0x11
        0xa3
        0xa4
        0x0
        0xa0
        0xc9
        0x3
        0x48
        0xf6
    .end array-data

    .line 639
    :array_27e
    .array-data 4
        0x40
        0xa4
        0xd0
        0xd2
        0x7
        0xe3
        0xd2
        0x11
        0x97
        0xf0
        0x0
        0xa0
        0xc9
        0x5e
        0xa8
        0x50
    .end array-data

    :array_2a2
    .array-data 4
        0xa1
        0xdc
        0xab
        0x8c
        0x47
        0xa9
        0xcf
        0x11
        0x8e
        0xe4
        0x0
        0xc0
        0xc
        0x20
        0x53
        0x65
    .end array-data

    :array_2c6
    .array-data 4
        0x30
        0x26
        0xb2
        0x75
        0x8e
        0x66
        0xcf
        0x11
        0xa6
        0xd9
        0x0
        0xaa
        0x0
        0x62
        0xce
        0x6c
    .end array-data

    :array_2ea
    .array-data 4
        0xb5
        0x3
        0xbf
        0x5f
        0x2e
        0xa9
        0xcf
        0x11
        0x8e
        0xe3
        0x0
        0xc0
        0xc
        0x20
        0x53
        0x65
    .end array-data

    :array_30e
    .array-data 4
        0xa9
        0x46
        0x43
        0x7c
        0xe0
        0xef
        0xfc
        0x4b
        0xb2
        0x29
        0x39
        0x3e
        0xde
        0x41
        0x5c
        0x85
    .end array-data

    :array_332
    .array-data 4
        0xea
        0xcb
        0xf8
        0xc5
        0xaf
        0x5b
        0x77
        0x48
        0x84
        0x67
        0xaa
        0x8c
        0x44
        0xfa
        0x4c
        0xca
    .end array-data

    :array_356
    .array-data 4
        0x94
        0x1c
        0x23
        0x44
        0x98
        0x94
        0xd1
        0x49
        0xa1
        0x41
        0x1d
        0x13
        0x4e
        0x45
        0x70
        0x54
    .end array-data

    :array_37a
    .array-data 4
        0x91
        0x7
        0xdc
        0xb7
        0xb7
        0xa9
        0xcf
        0x11
        0x8e
        0xe6
        0x0
        0xc0
        0xc
        0x20
        0x53
        0x65
    .end array-data

    :array_39e
    .array-data 4
        0xce
        0x75
        0xf8
        0x7b
        0x8d
        0x46
        0xd1
        0x11
        0x8d
        0x82
        0x0
        0x60
        0x97
        0xc9
        0xa2
        0xb2
    .end array-data

    :array_3c2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3e6
    .array-data 4
        0xc0
        0xef
        0x19
        0xbc
        0x4d
        0x5b
        0xcf
        0x11
        0xa8
        0xfd
        0x0
        0x80
        0x5f
        0x5c
        0x44
        0x2b
    .end array-data

    :array_40a
    .array-data 4
        0x30
        0x1a
        0xfb
        0x1e
        0x62
        0xb
        0xd0
        0x11
        0xa3
        0x9b
        0x0
        0xa0
        0xc9
        0x3
        0x48
        0xf6
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 15
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->parseGUID(Ljava/lang/String;)Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->getGUID()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([I)V

    if-eqz p2, :cond_10

    .line 16
    iput-object p2, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->description:Ljava/lang/String;

    return-void

    .line 17
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->description:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->guidData:[I

    .line 4
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 5
    :goto_e
    array-length v2, p1

    if-ge v1, v2, :cond_1a

    .line 6
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 7
    :cond_1a
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/asf/data/GUID;->setGUID([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->description:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->guidData:[I

    .line 11
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->setGUID([I)V

    return-void
.end method

.method public constructor <init>([ILjava/lang/String;)V
    .registers 3

    .line 12
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([I)V

    if-eqz p2, :cond_8

    .line 13
    iput-object p2, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->description:Ljava/lang/String;

    return-void

    .line 14
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static assertGUID([I)Z
    .registers 2

    .line 1
    if-eqz p0, :cond_9

    .line 3
    array-length p0, p0

    .line 4
    const/16 v0, 0x10

    .line 6
    if-ne p0, v0, :cond_9

    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    :goto_a
    return p0
.end method

.method public static getConfigured(Lorg/jaudiotagger/audio/asf/data/GUID;)Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_TO_CONFIGURED:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 9
    return-object p0
.end method

.method public static getGuidDescription(Lorg/jaudiotagger/audio/asf/data/GUID;)Ljava/lang/String;
    .registers 2

    .line 1
    if-eqz p0, :cond_13

    .line 3
    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getConfigured(Lorg/jaudiotagger/audio/asf/data/GUID;)Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getConfigured(Lorg/jaudiotagger/audio/asf/data/GUID;)Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 p0, 0x0

    .line 19
    :goto_12
    return-object p0

    .line 20
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    const-string v0, "Argument must not be null."

    .line 24
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
.end method

.method private getHex([B)[Ljava/lang/String;
    .registers 8

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_a
    array-length v4, p1

    .line 12
    if-ge v3, v4, :cond_34

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 17
    move-result v4

    .line 18
    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 21
    aget-byte v4, p1, v3

    .line 23
    and-int/lit16 v4, v4, 0xff

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x1

    .line 37
    if-ne v4, v5, :cond_2b

    .line 39
    const-string v4, "0"

    .line 41
    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 48
    aput-object v4, v0, v3

    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 52
    goto :goto_a

    .line 53
    :cond_34
    return-object v0
.end method

.method public static parseGUID(Ljava/lang/String;)Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 8

    .line 1
    if-eqz p0, :cond_4c

    .line 3
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_PATTERN:Ljava/util/regex/Pattern;

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_44

    .line 15
    const/16 v0, 0x10

    .line 17
    new-array v1, v0, [I

    .line 19
    new-array v2, v0, [I

    .line 21
    fill-array-data v2, :array_54

    .line 24
    const/4 v3, 0x0

    .line 25
    move v4, v3

    .line 26
    :goto_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    move-result v5

    .line 30
    if-ge v3, v5, :cond_3e

    .line 32
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 35
    move-result v5

    .line 36
    const/16 v6, 0x2d

    .line 38
    if-ne v5, v6, :cond_28

    .line 40
    goto :goto_3b

    .line 41
    :cond_28
    add-int/lit8 v5, v4, 0x1

    .line 43
    aget v4, v2, v4

    .line 45
    add-int/lit8 v6, v3, 0x2

    .line 47
    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 50
    move-result-object v6

    .line 51
    invoke-static {v6, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 54
    move-result v6

    .line 55
    aput v6, v1, v4

    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 59
    move v4, v5

    .line 60
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    .line 62
    goto :goto_19

    .line 63
    :cond_3e
    new-instance p0, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 65
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([I)V

    .line 68
    return-object p0

    .line 69
    :cond_44
    new-instance p0, Lorg/jaudiotagger/audio/asf/data/GUIDFormatException;

    .line 71
    const-string v0, "Invalid guidData format."

    .line 73
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/asf/data/GUIDFormatException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p0

    .line 77
    :cond_4c
    new-instance p0, Lorg/jaudiotagger/audio/asf/data/GUIDFormatException;

    .line 79
    const-string v0, "null"

    .line 81
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/asf/data/GUIDFormatException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0

    .line 85
    :array_54
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x5
        0x4
        0x7
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data
.end method

.method private setGUID([I)V
    .registers 5

    .line 1
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->assertGUID([I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    const/16 v0, 0x10

    .line 9
    new-array v1, v0, [I

    .line 11
    iput-object v1, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->guidData:[I

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    return-void

    .line 18
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string v0, "The given guidData doesn\'t match the GUID specification."

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    check-cast p1, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 7
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getGUID()[I

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->getGUID()[I

    .line 14
    move-result-object p1

    .line 15
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 18
    move-result p1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    :goto_14
    return p1
.end method

.method public getBytes()[B
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->guidData:[I

    .line 3
    array-length v0, v0

    .line 4
    new-array v1, v0, [B

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v0, :cond_14

    .line 9
    iget-object v3, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->guidData:[I

    .line 11
    aget v3, v3, v2

    .line 13
    and-int/lit16 v3, v3, 0xff

    .line 15
    int-to-byte v3, v3

    .line 16
    aput-byte v3, v1, v2

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 20
    goto :goto_6

    .line 21
    :cond_14
    return-object v1
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->description:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getGUID()[I
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->guidData:[I

    .line 3
    array-length v1, v0

    .line 4
    new-array v1, v1, [I

    .line 6
    array-length v2, v0

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    return-object v1
.end method

.method public hashCode()I
    .registers 6

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->hash:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_18

    .line 6
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getGUID()[I

    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_c
    if-ge v2, v1, :cond_16

    .line 15
    aget v4, v0, v2

    .line 17
    mul-int/lit8 v3, v3, 0x1f

    .line 19
    add-int/2addr v3, v4

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_c

    .line 23
    :cond_16
    iput v3, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->hash:I

    .line 25
    :cond_18
    iget v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->hash:I

    .line 27
    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getGUID()[I

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/jaudiotagger/audio/asf/data/GUID;->assertGUID([I)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public prettyPrint()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_13

    .line 16
    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getGuidDescription(Lorg/jaudiotagger/audio/asf/data/GUID;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    :cond_13
    invoke-static {v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_2b

    .line 26
    const-string v2, "Description: "

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, "   "

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_2b
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/asf/data/GUID;->getHex([B)[Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x3

    .line 15
    aget-object v2, v1, v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const/4 v2, 0x2

    .line 21
    aget-object v2, v1, v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const/4 v2, 0x1

    .line 27
    aget-object v2, v1, v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const/4 v2, 0x0

    .line 33
    aget-object v2, v1, v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const/16 v2, 0x2d

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    const/4 v3, 0x5

    .line 44
    aget-object v3, v1, v3

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const/4 v3, 0x4

    .line 50
    aget-object v3, v1, v3

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    const/4 v3, 0x7

    .line 59
    aget-object v3, v1, v3

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const/4 v3, 0x6

    .line 65
    aget-object v3, v1, v3

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    const/16 v3, 0x8

    .line 75
    aget-object v3, v1, v3

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const/16 v3, 0x9

    .line 82
    aget-object v3, v1, v3

    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    const/16 v2, 0xa

    .line 92
    aget-object v2, v1, v2

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const/16 v2, 0xb

    .line 99
    aget-object v2, v1, v2

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const/16 v2, 0xc

    .line 106
    aget-object v2, v1, v2

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const/16 v2, 0xd

    .line 113
    aget-object v2, v1, v2

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const/16 v2, 0xe

    .line 120
    aget-object v2, v1, v2

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const/16 v2, 0xf

    .line 127
    aget-object v1, v1, v2

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    return-object v0
.end method
