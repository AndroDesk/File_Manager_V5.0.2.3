.class public final enum Lpl/droidsonroids/gif/GifError;
.super Ljava/lang/Enum;
.source "GifError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/droidsonroids/gif/GifError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSE_FAILED:Lpl/droidsonroids/gif/GifError;

.field public static final enum DATA_TOO_BIG:Lpl/droidsonroids/gif/GifError;

.field public static final enum EOF_TOO_SOON:Lpl/droidsonroids/gif/GifError;

.field public static final enum IMAGE_DEFECT:Lpl/droidsonroids/gif/GifError;

.field public static final enum IMG_NOT_CONFINED:Lpl/droidsonroids/gif/GifError;

.field public static final enum INVALID_BYTE_BUFFER:Lpl/droidsonroids/gif/GifError;

.field public static final enum INVALID_IMG_DIMS:Lpl/droidsonroids/gif/GifError;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum INVALID_SCR_DIMS:Lpl/droidsonroids/gif/GifError;

.field public static final enum NOT_ENOUGH_MEM:Lpl/droidsonroids/gif/GifError;

.field public static final enum NOT_GIF_FILE:Lpl/droidsonroids/gif/GifError;

.field public static final enum NOT_READABLE:Lpl/droidsonroids/gif/GifError;

.field public static final enum NO_COLOR_MAP:Lpl/droidsonroids/gif/GifError;

.field public static final enum NO_ERROR:Lpl/droidsonroids/gif/GifError;

.field public static final enum NO_FRAMES:Lpl/droidsonroids/gif/GifError;

.field public static final enum NO_IMAG_DSCR:Lpl/droidsonroids/gif/GifError;

.field public static final enum NO_SCRN_DSCR:Lpl/droidsonroids/gif/GifError;

.field public static final enum OPEN_FAILED:Lpl/droidsonroids/gif/GifError;

.field public static final enum READ_FAILED:Lpl/droidsonroids/gif/GifError;

.field public static final enum REWIND_FAILED:Lpl/droidsonroids/gif/GifError;

.field public static final enum UNKNOWN:Lpl/droidsonroids/gif/GifError;

.field public static final enum WRONG_RECORD:Lpl/droidsonroids/gif/GifError;

.field public static final synthetic a:[Lpl/droidsonroids/gif/GifError;


# instance fields
.field public final description:Ljava/lang/String;

.field public errorCode:I


# direct methods
.method public static constructor <clinit>()V
    .registers 25

    .line 1
    new-instance v0, Lpl/droidsonroids/gif/GifError;

    .line 3
    const-string v1, "NO_ERROR"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "No error"

    .line 8
    invoke-direct {v0, v1, v2, v2, v3}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 11
    sput-object v0, Lpl/droidsonroids/gif/GifError;->NO_ERROR:Lpl/droidsonroids/gif/GifError;

    .line 13
    new-instance v1, Lpl/droidsonroids/gif/GifError;

    .line 15
    const-string v3, "OPEN_FAILED"

    .line 17
    const/4 v4, 0x1

    .line 18
    const/16 v5, 0x65

    .line 20
    const-string v6, "Failed to open given input"

    .line 22
    invoke-direct {v1, v3, v4, v5, v6}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 25
    sput-object v1, Lpl/droidsonroids/gif/GifError;->OPEN_FAILED:Lpl/droidsonroids/gif/GifError;

    .line 27
    new-instance v3, Lpl/droidsonroids/gif/GifError;

    .line 29
    const-string v5, "READ_FAILED"

    .line 31
    const/4 v6, 0x2

    .line 32
    const/16 v7, 0x66

    .line 34
    const-string v8, "Failed to read from given input"

    .line 36
    invoke-direct {v3, v5, v6, v7, v8}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 39
    sput-object v3, Lpl/droidsonroids/gif/GifError;->READ_FAILED:Lpl/droidsonroids/gif/GifError;

    .line 41
    new-instance v5, Lpl/droidsonroids/gif/GifError;

    .line 43
    const-string v7, "NOT_GIF_FILE"

    .line 45
    const/4 v8, 0x3

    .line 46
    const/16 v9, 0x67

    .line 48
    const-string v10, "Data is not in GIF format"

    .line 50
    invoke-direct {v5, v7, v8, v9, v10}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 53
    sput-object v5, Lpl/droidsonroids/gif/GifError;->NOT_GIF_FILE:Lpl/droidsonroids/gif/GifError;

    .line 55
    new-instance v7, Lpl/droidsonroids/gif/GifError;

    .line 57
    const-string v9, "NO_SCRN_DSCR"

    .line 59
    const/4 v10, 0x4

    .line 60
    const/16 v11, 0x68

    .line 62
    const-string v12, "No screen descriptor detected"

    .line 64
    invoke-direct {v7, v9, v10, v11, v12}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 67
    sput-object v7, Lpl/droidsonroids/gif/GifError;->NO_SCRN_DSCR:Lpl/droidsonroids/gif/GifError;

    .line 69
    new-instance v9, Lpl/droidsonroids/gif/GifError;

    .line 71
    const-string v11, "NO_IMAG_DSCR"

    .line 73
    const/4 v12, 0x5

    .line 74
    const/16 v13, 0x69

    .line 76
    const-string v14, "No image descriptor detected"

    .line 78
    invoke-direct {v9, v11, v12, v13, v14}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 81
    sput-object v9, Lpl/droidsonroids/gif/GifError;->NO_IMAG_DSCR:Lpl/droidsonroids/gif/GifError;

    .line 83
    new-instance v11, Lpl/droidsonroids/gif/GifError;

    .line 85
    const-string v13, "NO_COLOR_MAP"

    .line 87
    const/4 v14, 0x6

    .line 88
    const/16 v15, 0x6a

    .line 90
    const-string v12, "Neither global nor local color map found"

    .line 92
    invoke-direct {v11, v13, v14, v15, v12}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 95
    sput-object v11, Lpl/droidsonroids/gif/GifError;->NO_COLOR_MAP:Lpl/droidsonroids/gif/GifError;

    .line 97
    new-instance v12, Lpl/droidsonroids/gif/GifError;

    .line 99
    const-string v13, "WRONG_RECORD"

    .line 101
    const/4 v15, 0x7

    .line 102
    const/16 v14, 0x6b

    .line 104
    const-string v10, "Wrong record type detected"

    .line 106
    invoke-direct {v12, v13, v15, v14, v10}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 109
    sput-object v12, Lpl/droidsonroids/gif/GifError;->WRONG_RECORD:Lpl/droidsonroids/gif/GifError;

    .line 111
    new-instance v10, Lpl/droidsonroids/gif/GifError;

    .line 113
    const-string v13, "DATA_TOO_BIG"

    .line 115
    const/16 v14, 0x8

    .line 117
    const/16 v15, 0x6c

    .line 119
    const-string v8, "Number of pixels bigger than width * height"

    .line 121
    invoke-direct {v10, v13, v14, v15, v8}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 124
    sput-object v10, Lpl/droidsonroids/gif/GifError;->DATA_TOO_BIG:Lpl/droidsonroids/gif/GifError;

    .line 126
    new-instance v8, Lpl/droidsonroids/gif/GifError;

    .line 128
    const-string v13, "NOT_ENOUGH_MEM"

    .line 130
    const/16 v15, 0x9

    .line 132
    const/16 v14, 0x6d

    .line 134
    const-string v6, "Failed to allocate required memory"

    .line 136
    invoke-direct {v8, v13, v15, v14, v6}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 139
    sput-object v8, Lpl/droidsonroids/gif/GifError;->NOT_ENOUGH_MEM:Lpl/droidsonroids/gif/GifError;

    .line 141
    new-instance v6, Lpl/droidsonroids/gif/GifError;

    .line 143
    const-string v13, "CLOSE_FAILED"

    .line 145
    const/16 v14, 0xa

    .line 147
    const/16 v15, 0x6e

    .line 149
    const-string v4, "Failed to close given input"

    .line 151
    invoke-direct {v6, v13, v14, v15, v4}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 154
    sput-object v6, Lpl/droidsonroids/gif/GifError;->CLOSE_FAILED:Lpl/droidsonroids/gif/GifError;

    .line 156
    new-instance v4, Lpl/droidsonroids/gif/GifError;

    .line 158
    const-string v13, "NOT_READABLE"

    .line 160
    const/16 v15, 0xb

    .line 162
    const/16 v14, 0x6f

    .line 164
    const-string v2, "Given file was not opened for read"

    .line 166
    invoke-direct {v4, v13, v15, v14, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 169
    sput-object v4, Lpl/droidsonroids/gif/GifError;->NOT_READABLE:Lpl/droidsonroids/gif/GifError;

    .line 171
    new-instance v2, Lpl/droidsonroids/gif/GifError;

    .line 173
    const-string v13, "IMAGE_DEFECT"

    .line 175
    const/16 v14, 0xc

    .line 177
    const/16 v15, 0x70

    .line 179
    move-object/from16 v16, v4

    .line 181
    const-string v4, "Image is defective, decoding aborted"

    .line 183
    invoke-direct {v2, v13, v14, v15, v4}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 186
    sput-object v2, Lpl/droidsonroids/gif/GifError;->IMAGE_DEFECT:Lpl/droidsonroids/gif/GifError;

    .line 188
    new-instance v4, Lpl/droidsonroids/gif/GifError;

    .line 190
    const-string v13, "EOF_TOO_SOON"

    .line 192
    const/16 v15, 0xd

    .line 194
    const/16 v14, 0x71

    .line 196
    move-object/from16 v17, v2

    .line 198
    const-string v2, "Image EOF detected before image complete"

    .line 200
    invoke-direct {v4, v13, v15, v14, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 203
    sput-object v4, Lpl/droidsonroids/gif/GifError;->EOF_TOO_SOON:Lpl/droidsonroids/gif/GifError;

    .line 205
    new-instance v2, Lpl/droidsonroids/gif/GifError;

    .line 207
    const-string v13, "NO_FRAMES"

    .line 209
    const/16 v14, 0xe

    .line 211
    const/16 v15, 0x3e8

    .line 213
    move-object/from16 v18, v4

    .line 215
    const-string v4, "No frames found, at least one frame required"

    .line 217
    invoke-direct {v2, v13, v14, v15, v4}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 220
    sput-object v2, Lpl/droidsonroids/gif/GifError;->NO_FRAMES:Lpl/droidsonroids/gif/GifError;

    .line 222
    new-instance v4, Lpl/droidsonroids/gif/GifError;

    .line 224
    const-string v13, "INVALID_SCR_DIMS"

    .line 226
    const/16 v15, 0xf

    .line 228
    const/16 v14, 0x3e9

    .line 230
    move-object/from16 v19, v2

    .line 232
    const-string v2, "Invalid screen size, dimensions must be positive"

    .line 234
    invoke-direct {v4, v13, v15, v14, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 237
    sput-object v4, Lpl/droidsonroids/gif/GifError;->INVALID_SCR_DIMS:Lpl/droidsonroids/gif/GifError;

    .line 239
    new-instance v2, Lpl/droidsonroids/gif/GifError;

    .line 241
    const-string v13, "INVALID_IMG_DIMS"

    .line 243
    const/16 v14, 0x10

    .line 245
    const/16 v15, 0x3ea

    .line 247
    move-object/from16 v20, v4

    .line 249
    const-string v4, "Invalid image size, dimensions must be positive"

    .line 251
    invoke-direct {v2, v13, v14, v15, v4}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 254
    sput-object v2, Lpl/droidsonroids/gif/GifError;->INVALID_IMG_DIMS:Lpl/droidsonroids/gif/GifError;

    .line 256
    new-instance v4, Lpl/droidsonroids/gif/GifError;

    .line 258
    const-string v13, "IMG_NOT_CONFINED"

    .line 260
    const/16 v15, 0x11

    .line 262
    const/16 v14, 0x3eb

    .line 264
    move-object/from16 v21, v2

    .line 266
    const-string v2, "Image size exceeds screen size"

    .line 268
    invoke-direct {v4, v13, v15, v14, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 271
    sput-object v4, Lpl/droidsonroids/gif/GifError;->IMG_NOT_CONFINED:Lpl/droidsonroids/gif/GifError;

    .line 273
    new-instance v2, Lpl/droidsonroids/gif/GifError;

    .line 275
    const-string v13, "REWIND_FAILED"

    .line 277
    const/16 v14, 0x12

    .line 279
    const/16 v15, 0x3ec

    .line 281
    move-object/from16 v22, v4

    .line 283
    const-string v4, "Input source rewind failed, animation stopped"

    .line 285
    invoke-direct {v2, v13, v14, v15, v4}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 288
    sput-object v2, Lpl/droidsonroids/gif/GifError;->REWIND_FAILED:Lpl/droidsonroids/gif/GifError;

    .line 290
    new-instance v4, Lpl/droidsonroids/gif/GifError;

    .line 292
    const-string v13, "INVALID_BYTE_BUFFER"

    .line 294
    const/16 v15, 0x13

    .line 296
    const/16 v14, 0x3ed

    .line 298
    move-object/from16 v23, v2

    .line 300
    const-string v2, "Invalid and/or indirect byte buffer specified"

    .line 302
    invoke-direct {v4, v13, v15, v14, v2}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 305
    sput-object v4, Lpl/droidsonroids/gif/GifError;->INVALID_BYTE_BUFFER:Lpl/droidsonroids/gif/GifError;

    .line 307
    new-instance v2, Lpl/droidsonroids/gif/GifError;

    .line 309
    const-string v13, "UNKNOWN"

    .line 311
    const/16 v14, 0x14

    .line 313
    const/4 v15, -0x1

    .line 314
    move-object/from16 v24, v4

    .line 316
    const-string v4, "Unknown error"

    .line 318
    invoke-direct {v2, v13, v14, v15, v4}, Lpl/droidsonroids/gif/GifError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 321
    sput-object v2, Lpl/droidsonroids/gif/GifError;->UNKNOWN:Lpl/droidsonroids/gif/GifError;

    .line 323
    const/16 v4, 0x15

    .line 325
    new-array v4, v4, [Lpl/droidsonroids/gif/GifError;

    .line 327
    const/4 v13, 0x0

    .line 328
    aput-object v0, v4, v13

    .line 330
    const/4 v0, 0x1

    .line 331
    aput-object v1, v4, v0

    .line 333
    const/4 v0, 0x2

    .line 334
    aput-object v3, v4, v0

    .line 336
    const/4 v0, 0x3

    .line 337
    aput-object v5, v4, v0

    .line 339
    const/4 v0, 0x4

    .line 340
    aput-object v7, v4, v0

    .line 342
    const/4 v0, 0x5

    .line 343
    aput-object v9, v4, v0

    .line 345
    const/4 v0, 0x6

    .line 346
    aput-object v11, v4, v0

    .line 348
    const/4 v0, 0x7

    .line 349
    aput-object v12, v4, v0

    .line 351
    const/16 v0, 0x8

    .line 353
    aput-object v10, v4, v0

    .line 355
    const/16 v0, 0x9

    .line 357
    aput-object v8, v4, v0

    .line 359
    const/16 v0, 0xa

    .line 361
    aput-object v6, v4, v0

    .line 363
    const/16 v0, 0xb

    .line 365
    aput-object v16, v4, v0

    .line 367
    const/16 v0, 0xc

    .line 369
    aput-object v17, v4, v0

    .line 371
    const/16 v0, 0xd

    .line 373
    aput-object v18, v4, v0

    .line 375
    const/16 v0, 0xe

    .line 377
    aput-object v19, v4, v0

    .line 379
    const/16 v0, 0xf

    .line 381
    aput-object v20, v4, v0

    .line 383
    const/16 v0, 0x10

    .line 385
    aput-object v21, v4, v0

    .line 387
    const/16 v0, 0x11

    .line 389
    aput-object v22, v4, v0

    .line 391
    const/16 v0, 0x12

    .line 393
    aput-object v23, v4, v0

    .line 395
    const/16 v0, 0x13

    .line 397
    aput-object v24, v4, v0

    .line 399
    aput-object v2, v4, v14

    .line 401
    sput-object v4, Lpl/droidsonroids/gif/GifError;->a:[Lpl/droidsonroids/gif/GifError;

    .line 403
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lpl/droidsonroids/gif/GifError;->errorCode:I

    .line 6
    iput-object p4, p0, Lpl/droidsonroids/gif/GifError;->description:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static fromCode(I)Lpl/droidsonroids/gif/GifError;
    .registers 6

    .line 1
    invoke-static {}, Lpl/droidsonroids/gif/GifError;->values()[Lpl/droidsonroids/gif/GifError;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_12

    .line 9
    aget-object v3, v0, v2

    .line 11
    iget v4, v3, Lpl/droidsonroids/gif/GifError;->errorCode:I

    .line 13
    if-ne v4, p0, :cond_f

    .line 15
    return-object v3

    .line 16
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_6

    .line 19
    :cond_12
    sget-object v0, Lpl/droidsonroids/gif/GifError;->UNKNOWN:Lpl/droidsonroids/gif/GifError;

    .line 21
    iput p0, v0, Lpl/droidsonroids/gif/GifError;->errorCode:I

    .line 23
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/droidsonroids/gif/GifError;
    .registers 2

    .line 1
    const-class v0, Lpl/droidsonroids/gif/GifError;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lpl/droidsonroids/gif/GifError;

    .line 9
    return-object p0
.end method

.method public static values()[Lpl/droidsonroids/gif/GifError;
    .registers 1

    .line 1
    sget-object v0, Lpl/droidsonroids/gif/GifError;->a:[Lpl/droidsonroids/gif/GifError;

    .line 3
    invoke-virtual {v0}, [Lpl/droidsonroids/gif/GifError;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lpl/droidsonroids/gif/GifError;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 1
    iget v0, p0, Lpl/droidsonroids/gif/GifError;->errorCode:I

    .line 3
    return v0
.end method

.method public getFormattedDescription()Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    iget v2, p0, Lpl/droidsonroids/gif/GifError;->errorCode:I

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    iget-object v2, p0, Lpl/droidsonroids/gif/GifError;->description:Ljava/lang/String;

    .line 17
    const/4 v3, 0x1

    .line 18
    aput-object v2, v1, v3

    .line 20
    const-string v2, "GifError %d: %s"

    .line 22
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
