.class public final enum Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;
.super Ljava/lang/Enum;
.source "Mp4FieldType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum COVERART_BMP:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum COVERART_GIF:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum COVERART_JPEG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum COVERART_PNG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum DATETIME:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum DURATION:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum GENRES:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum GUID:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum HTML:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum IMPLICIT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum INTEGER:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum ISRC:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum MI3P:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum RIAAPA:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum TEXT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum TEXT_JAPANESE:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum TEXT_UTF16BE:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum UPC:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum URL:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum XML:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field private static coverArtTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;",
            ">;"
        }
    .end annotation
.end field

.field private static final fileClassIdFiedTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileClassId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 23

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 3
    const-string v1, "IMPLICIT"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 11
    new-instance v1, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 13
    const-string v3, "TEXT"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v1, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->TEXT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 21
    new-instance v3, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 23
    const-string v5, "TEXT_UTF16BE"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 29
    sput-object v3, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->TEXT_UTF16BE:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 31
    new-instance v5, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 33
    const-string v7, "TEXT_JAPANESE"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 39
    sput-object v5, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->TEXT_JAPANESE:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 41
    new-instance v7, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 43
    const-string v9, "HTML"

    .line 45
    const/4 v10, 0x4

    .line 46
    const/4 v11, 0x6

    .line 47
    invoke-direct {v7, v9, v10, v11}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 50
    sput-object v7, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->HTML:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 52
    new-instance v9, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 54
    const-string v12, "XML"

    .line 56
    const/4 v13, 0x5

    .line 57
    const/4 v14, 0x7

    .line 58
    invoke-direct {v9, v12, v13, v14}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 61
    sput-object v9, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->XML:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 63
    new-instance v12, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 65
    const-string v15, "GUID"

    .line 67
    const/16 v13, 0x8

    .line 69
    invoke-direct {v12, v15, v11, v13}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 72
    sput-object v12, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->GUID:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 74
    new-instance v15, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 76
    const-string v11, "ISRC"

    .line 78
    const/16 v10, 0x9

    .line 80
    invoke-direct {v15, v11, v14, v10}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 83
    sput-object v15, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->ISRC:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 85
    new-instance v11, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 87
    const-string v14, "MI3P"

    .line 89
    const/16 v8, 0xa

    .line 91
    invoke-direct {v11, v14, v13, v8}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 94
    sput-object v11, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->MI3P:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 96
    new-instance v14, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 98
    const-string v13, "COVERART_GIF"

    .line 100
    const/16 v6, 0xc

    .line 102
    invoke-direct {v14, v13, v10, v6}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 105
    sput-object v14, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_GIF:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 107
    new-instance v13, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 109
    const-string v10, "COVERART_JPEG"

    .line 111
    const/16 v4, 0xd

    .line 113
    invoke-direct {v13, v10, v8, v4}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 116
    sput-object v13, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 118
    new-instance v10, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 120
    const-string v8, "COVERART_PNG"

    .line 122
    const/16 v2, 0xb

    .line 124
    const/16 v4, 0xe

    .line 126
    invoke-direct {v10, v8, v2, v4}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 129
    sput-object v10, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 131
    new-instance v8, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 133
    const-string v2, "URL"

    .line 135
    const/16 v4, 0xf

    .line 137
    invoke-direct {v8, v2, v6, v4}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 140
    sput-object v8, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->URL:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 142
    new-instance v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 144
    const-string v6, "DURATION"

    .line 146
    const/16 v4, 0x10

    .line 148
    move-object/from16 v16, v8

    .line 150
    const/16 v8, 0xd

    .line 152
    invoke-direct {v2, v6, v8, v4}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 155
    sput-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->DURATION:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 157
    new-instance v6, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 159
    const-string v8, "DATETIME"

    .line 161
    const/16 v4, 0x11

    .line 163
    move-object/from16 v17, v2

    .line 165
    const/16 v2, 0xe

    .line 167
    invoke-direct {v6, v8, v2, v4}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 170
    sput-object v6, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->DATETIME:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 172
    new-instance v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 174
    const-string v8, "GENRES"

    .line 176
    const/16 v4, 0x12

    .line 178
    move-object/from16 v18, v6

    .line 180
    const/16 v6, 0xf

    .line 182
    invoke-direct {v2, v8, v6, v4}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 185
    sput-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->GENRES:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 187
    new-instance v6, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 189
    const-string v8, "INTEGER"

    .line 191
    const/16 v4, 0x15

    .line 193
    move-object/from16 v19, v2

    .line 195
    const/16 v2, 0x10

    .line 197
    invoke-direct {v6, v8, v2, v4}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 200
    sput-object v6, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->INTEGER:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 202
    new-instance v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 204
    const-string v4, "RIAAPA"

    .line 206
    const/16 v8, 0x18

    .line 208
    move-object/from16 v20, v6

    .line 210
    const/16 v6, 0x11

    .line 212
    invoke-direct {v2, v4, v6, v8}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 215
    sput-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->RIAAPA:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 217
    new-instance v4, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 219
    const-string v6, "UPC"

    .line 221
    const/16 v8, 0x19

    .line 223
    move-object/from16 v21, v2

    .line 225
    const/16 v2, 0x12

    .line 227
    invoke-direct {v4, v6, v2, v8}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 230
    sput-object v4, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->UPC:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 232
    new-instance v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 234
    const-string v6, "COVERART_BMP"

    .line 236
    const/16 v8, 0x13

    .line 238
    move-object/from16 v22, v4

    .line 240
    const/16 v4, 0x1b

    .line 242
    invoke-direct {v2, v6, v8, v4}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    .line 245
    sput-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_BMP:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 247
    const/16 v4, 0x14

    .line 249
    new-array v4, v4, [Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 251
    const/4 v6, 0x0

    .line 252
    aput-object v0, v4, v6

    .line 254
    const/4 v0, 0x1

    .line 255
    aput-object v1, v4, v0

    .line 257
    const/4 v0, 0x2

    .line 258
    aput-object v3, v4, v0

    .line 260
    const/4 v0, 0x3

    .line 261
    aput-object v5, v4, v0

    .line 263
    const/4 v0, 0x4

    .line 264
    aput-object v7, v4, v0

    .line 266
    const/4 v0, 0x5

    .line 267
    aput-object v9, v4, v0

    .line 269
    const/4 v0, 0x6

    .line 270
    aput-object v12, v4, v0

    .line 272
    const/4 v0, 0x7

    .line 273
    aput-object v15, v4, v0

    .line 275
    const/16 v0, 0x8

    .line 277
    aput-object v11, v4, v0

    .line 279
    const/16 v0, 0x9

    .line 281
    aput-object v14, v4, v0

    .line 283
    const/16 v0, 0xa

    .line 285
    aput-object v13, v4, v0

    .line 287
    const/16 v0, 0xb

    .line 289
    aput-object v10, v4, v0

    .line 291
    const/16 v0, 0xc

    .line 293
    aput-object v16, v4, v0

    .line 295
    const/16 v0, 0xd

    .line 297
    aput-object v17, v4, v0

    .line 299
    const/16 v0, 0xe

    .line 301
    aput-object v18, v4, v0

    .line 303
    const/16 v0, 0xf

    .line 305
    aput-object v19, v4, v0

    .line 307
    const/16 v0, 0x10

    .line 309
    aput-object v20, v4, v0

    .line 311
    const/16 v0, 0x11

    .line 313
    aput-object v21, v4, v0

    .line 315
    const/16 v0, 0x12

    .line 317
    aput-object v22, v4, v0

    .line 319
    aput-object v2, v4, v8

    .line 321
    sput-object v4, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->$VALUES:[Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 323
    new-instance v0, Ljava/util/HashMap;

    .line 325
    invoke-static {}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->values()[Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 328
    move-result-object v1

    .line 329
    array-length v1, v1

    .line 330
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 333
    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->fileClassIdFiedTypeMap:Ljava/util/HashMap;

    .line 335
    invoke-static {}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->values()[Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 338
    move-result-object v0

    .line 339
    array-length v1, v0

    .line 340
    move v2, v6

    .line 341
    :goto_154
    if-ge v2, v1, :cond_166

    .line 343
    aget-object v3, v0, v2

    .line 345
    sget-object v4, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->fileClassIdFiedTypeMap:Ljava/util/HashMap;

    .line 347
    iget v5, v3, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->fileClassId:I

    .line 349
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    move-result-object v5

    .line 353
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    add-int/lit8 v2, v2, 0x1

    .line 358
    goto :goto_154

    .line 359
    :cond_166
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_GIF:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 361
    sget-object v1, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 363
    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 365
    sget-object v3, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_BMP:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 367
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 370
    move-result-object v0

    .line 371
    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->coverArtTypes:Ljava/util/EnumSet;

    .line 373
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->fileClassId:I

    .line 6
    return-void
.end method

.method public static getFieldType(I)Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->fileClassIdFiedTypeMap:Ljava/util/HashMap;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 13
    return-object p0
.end method

.method public static isCoverArtType(Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;)Z
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->coverArtTypes:Ljava/util/EnumSet;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->$VALUES:[Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getFileClassId()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->fileClassId:I

    .line 3
    return v0
.end method
