.class public final enum Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;
.super Ljava/lang/Enum;
.source "SyncFileOperationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum COPY_STORAGE_FULL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum DB_NOT_CHANGE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum DELETE_FILE_NULL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum DISK_FULL_AFTER_DOWNLOAD:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum ERROR_SUB_PATH_MOVE_COPY:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum FILE_DOWNLOADING:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum FILE_EXISTS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum FILE_MOVE_COPY_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum FILE_NAME_IS_PRIVATE_SPACE_NAME:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum FILE_NO_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum FIRST_DOWNLOAD_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum FIRST_UPLOAD_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum NAME_CONFLICT:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum NAME_ILLEGAL_CHAR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum OPERATION_BATCH_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum OPERATION_NOT_RESPONSE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum OPERATION_NOT_SUPPORT:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum PARAM_ERROR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum PARENT_FILE_NO_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

.field public static final enum UPLOAD_CHANGE_FREE_NETWORK_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;


# direct methods
.method public static constructor <clinit>()V
    .registers 27

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 3
    const-string v1, "OPERATION_NOT_SUPPORT"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_NOT_SUPPORT:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 11
    new-instance v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 13
    const-string v3, "OPERATION_FAILED"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 21
    new-instance v3, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 23
    const-string v5, "OPERATION_BATCH_FAILED"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_BATCH_FAILED:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 31
    new-instance v5, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 33
    const-string v7, "NETWORK_ERR"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NETWORK_ERR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 41
    new-instance v7, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 43
    const-string v9, "FILE_NOT_FOUND"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NOT_FOUND:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 51
    new-instance v9, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 53
    const-string v11, "FILE_EXISTS"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_EXISTS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 61
    new-instance v11, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 63
    const-string v13, "FILE_DOWNLOADING"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_DOWNLOADING:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 71
    new-instance v13, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 73
    const-string v15, "NAME_ILLEGAL_CHAR"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NAME_ILLEGAL_CHAR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 81
    new-instance v15, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 83
    const-string v14, "NAME_CONFLICT"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v15, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NAME_CONFLICT:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 92
    new-instance v14, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 94
    const-string v12, "PARAM_ERROR"

    .line 96
    const/16 v10, 0x9

    .line 98
    invoke-direct {v14, v12, v10}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v14, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->PARAM_ERROR:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 103
    new-instance v12, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 105
    const-string v10, "FILE_NO_EXIST"

    .line 107
    const/16 v8, 0xa

    .line 109
    invoke-direct {v12, v10, v8}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 112
    sput-object v12, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NO_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 114
    new-instance v10, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 116
    const-string v8, "NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS"

    .line 118
    const/16 v6, 0xb

    .line 120
    invoke-direct {v10, v8, v6}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 123
    sput-object v10, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->NOT_SUPPORT_MODIFY_FOR_OVERSEAS_USERS:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 125
    new-instance v8, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 127
    const-string v6, "DELETE_FILE_NULL"

    .line 129
    const/16 v4, 0xc

    .line 131
    invoke-direct {v8, v6, v4}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 134
    sput-object v8, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DELETE_FILE_NULL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 136
    new-instance v6, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 138
    const-string v4, "COPY_STORAGE_FULL"

    .line 140
    const/16 v2, 0xd

    .line 142
    invoke-direct {v6, v4, v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 145
    sput-object v6, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->COPY_STORAGE_FULL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 147
    new-instance v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 149
    const-string v2, "PARENT_FILE_NO_EXIST"

    .line 151
    move-object/from16 v16, v6

    .line 153
    const/16 v6, 0xe

    .line 155
    invoke-direct {v4, v2, v6}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 158
    sput-object v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->PARENT_FILE_NO_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 160
    new-instance v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 162
    const-string v6, "FILE_MOVE_COPY_EXIST"

    .line 164
    move-object/from16 v17, v4

    .line 166
    const/16 v4, 0xf

    .line 168
    invoke-direct {v2, v6, v4}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 171
    sput-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_MOVE_COPY_EXIST:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 173
    new-instance v6, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 175
    const-string v4, "ERROR_SUB_PATH_MOVE_COPY"

    .line 177
    move-object/from16 v18, v2

    .line 179
    const/16 v2, 0x10

    .line 181
    invoke-direct {v6, v4, v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 184
    sput-object v6, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->ERROR_SUB_PATH_MOVE_COPY:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 186
    new-instance v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 188
    const-string v2, "MI_DRIVE_UNAVAILABLE"

    .line 190
    move-object/from16 v19, v6

    .line 192
    const/16 v6, 0x11

    .line 194
    invoke-direct {v4, v2, v6}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 197
    sput-object v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 199
    new-instance v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 201
    const-string v6, "FILE_NAME_IS_PRIVATE_SPACE_NAME"

    .line 203
    move-object/from16 v20, v4

    .line 205
    const/16 v4, 0x12

    .line 207
    invoke-direct {v2, v6, v4}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 210
    sput-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FILE_NAME_IS_PRIVATE_SPACE_NAME:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 212
    new-instance v6, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 214
    const-string v4, "DISK_FULL_AFTER_DOWNLOAD"

    .line 216
    move-object/from16 v21, v2

    .line 218
    const/16 v2, 0x13

    .line 220
    invoke-direct {v6, v4, v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 223
    sput-object v6, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DISK_FULL_AFTER_DOWNLOAD:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 225
    new-instance v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 227
    const-string v2, "FIRST_DOWNLOAD_FAIL"

    .line 229
    move-object/from16 v22, v6

    .line 231
    const/16 v6, 0x14

    .line 233
    invoke-direct {v4, v2, v6}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 236
    sput-object v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FIRST_DOWNLOAD_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 238
    new-instance v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 240
    const-string v6, "UPLOAD_CHANGE_FREE_NETWORK_FAIL"

    .line 242
    move-object/from16 v23, v4

    .line 244
    const/16 v4, 0x15

    .line 246
    invoke-direct {v2, v6, v4}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 249
    sput-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->UPLOAD_CHANGE_FREE_NETWORK_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 251
    new-instance v6, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 253
    const-string v4, "DB_NOT_CHANGE"

    .line 255
    move-object/from16 v24, v2

    .line 257
    const/16 v2, 0x16

    .line 259
    invoke-direct {v6, v4, v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 262
    sput-object v6, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->DB_NOT_CHANGE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 264
    new-instance v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 266
    const-string v4, "FIRST_UPLOAD_FAIL"

    .line 268
    move-object/from16 v25, v6

    .line 270
    const/16 v6, 0x17

    .line 272
    invoke-direct {v2, v4, v6}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 275
    sput-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->FIRST_UPLOAD_FAIL:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 277
    new-instance v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 279
    const-string v6, "OPERATION_NOT_RESPONSE"

    .line 281
    move-object/from16 v26, v2

    .line 283
    const/16 v2, 0x18

    .line 285
    invoke-direct {v4, v6, v2}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;-><init>(Ljava/lang/String;I)V

    .line 288
    sput-object v4, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->OPERATION_NOT_RESPONSE:Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 290
    const/16 v2, 0x19

    .line 292
    new-array v2, v2, [Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 294
    const/4 v6, 0x0

    .line 295
    aput-object v0, v2, v6

    .line 297
    const/4 v0, 0x1

    .line 298
    aput-object v1, v2, v0

    .line 300
    const/4 v0, 0x2

    .line 301
    aput-object v3, v2, v0

    .line 303
    const/4 v0, 0x3

    .line 304
    aput-object v5, v2, v0

    .line 306
    const/4 v0, 0x4

    .line 307
    aput-object v7, v2, v0

    .line 309
    const/4 v0, 0x5

    .line 310
    aput-object v9, v2, v0

    .line 312
    const/4 v0, 0x6

    .line 313
    aput-object v11, v2, v0

    .line 315
    const/4 v0, 0x7

    .line 316
    aput-object v13, v2, v0

    .line 318
    const/16 v0, 0x8

    .line 320
    aput-object v15, v2, v0

    .line 322
    const/16 v0, 0x9

    .line 324
    aput-object v14, v2, v0

    .line 326
    const/16 v0, 0xa

    .line 328
    aput-object v12, v2, v0

    .line 330
    const/16 v0, 0xb

    .line 332
    aput-object v10, v2, v0

    .line 334
    const/16 v0, 0xc

    .line 336
    aput-object v8, v2, v0

    .line 338
    const/16 v0, 0xd

    .line 340
    aput-object v16, v2, v0

    .line 342
    const/16 v0, 0xe

    .line 344
    aput-object v17, v2, v0

    .line 346
    const/16 v0, 0xf

    .line 348
    aput-object v18, v2, v0

    .line 350
    const/16 v0, 0x10

    .line 352
    aput-object v19, v2, v0

    .line 354
    const/16 v0, 0x11

    .line 356
    aput-object v20, v2, v0

    .line 358
    const/16 v0, 0x12

    .line 360
    aput-object v21, v2, v0

    .line 362
    const/16 v0, 0x13

    .line 364
    aput-object v22, v2, v0

    .line 366
    const/16 v0, 0x14

    .line 368
    aput-object v23, v2, v0

    .line 370
    const/16 v0, 0x15

    .line 372
    aput-object v24, v2, v0

    .line 374
    const/16 v0, 0x16

    .line 376
    aput-object v25, v2, v0

    .line 378
    const/16 v0, 0x17

    .line 380
    aput-object v26, v2, v0

    .line 382
    const/16 v0, 0x18

    .line 384
    aput-object v4, v2, v0

    .line 386
    sput-object v2, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->$VALUES:[Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 388
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;
    .registers 2

    .line 1
    const-class v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->$VALUES:[Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 3
    invoke-virtual {v0}, [Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 9
    return-object v0
.end method
