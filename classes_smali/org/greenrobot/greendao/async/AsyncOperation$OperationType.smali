.class public final enum Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
.super Ljava/lang/Enum;
.source "AsyncOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/greendao/async/AsyncOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum Count:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum Delete:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum DeleteAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum DeleteByKey:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum DeleteInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum DeleteInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum Insert:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum InsertInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum InsertInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum InsertOrReplace:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum InsertOrReplaceInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum InsertOrReplaceInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum Load:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum LoadAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum QueryList:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum QueryUnique:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum Refresh:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum TransactionCallable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum TransactionRunnable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum Update:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum UpdateInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum UpdateInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;


# direct methods
.method public static constructor <clinit>()V
    .registers 25

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 3
    const-string v1, "Insert"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Insert:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 11
    new-instance v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 13
    const-string v3, "InsertInTxIterable"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 21
    new-instance v3, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 23
    const-string v5, "InsertInTxArray"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 31
    new-instance v5, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 33
    const-string v7, "InsertOrReplace"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplace:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 41
    new-instance v7, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 43
    const-string v9, "InsertOrReplaceInTxIterable"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 51
    new-instance v9, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 53
    const-string v11, "InsertOrReplaceInTxArray"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 61
    new-instance v11, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 63
    const-string v13, "Update"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Update:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 71
    new-instance v13, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 73
    const-string v15, "UpdateInTxIterable"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->UpdateInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 81
    new-instance v15, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 83
    const-string v14, "UpdateInTxArray"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v15, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->UpdateInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 92
    new-instance v14, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 94
    const-string v12, "Delete"

    .line 96
    const/16 v10, 0x9

    .line 98
    invoke-direct {v14, v12, v10}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v14, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Delete:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 103
    new-instance v12, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 105
    const-string v10, "DeleteInTxIterable"

    .line 107
    const/16 v8, 0xa

    .line 109
    invoke-direct {v12, v10, v8}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 112
    sput-object v12, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 114
    new-instance v10, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 116
    const-string v8, "DeleteInTxArray"

    .line 118
    const/16 v6, 0xb

    .line 120
    invoke-direct {v10, v8, v6}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 123
    sput-object v10, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 125
    new-instance v8, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 127
    const-string v6, "DeleteByKey"

    .line 129
    const/16 v4, 0xc

    .line 131
    invoke-direct {v8, v6, v4}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 134
    sput-object v8, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteByKey:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 136
    new-instance v6, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 138
    const-string v4, "DeleteAll"

    .line 140
    const/16 v2, 0xd

    .line 142
    invoke-direct {v6, v4, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 145
    sput-object v6, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 147
    new-instance v4, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 149
    const-string v2, "TransactionRunnable"

    .line 151
    move-object/from16 v17, v6

    .line 153
    const/16 v6, 0xe

    .line 155
    invoke-direct {v4, v2, v6}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 158
    sput-object v4, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->TransactionRunnable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 160
    new-instance v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 162
    const-string v6, "TransactionCallable"

    .line 164
    move-object/from16 v18, v4

    .line 166
    const/16 v4, 0xf

    .line 168
    invoke-direct {v2, v6, v4}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 171
    sput-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->TransactionCallable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 173
    new-instance v6, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 175
    const-string v4, "QueryList"

    .line 177
    move-object/from16 v19, v2

    .line 179
    const/16 v2, 0x10

    .line 181
    invoke-direct {v6, v4, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 184
    sput-object v6, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->QueryList:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 186
    new-instance v4, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 188
    const-string v2, "QueryUnique"

    .line 190
    move-object/from16 v20, v6

    .line 192
    const/16 v6, 0x11

    .line 194
    invoke-direct {v4, v2, v6}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 197
    sput-object v4, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->QueryUnique:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 199
    new-instance v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 201
    const-string v6, "Load"

    .line 203
    move-object/from16 v21, v4

    .line 205
    const/16 v4, 0x12

    .line 207
    invoke-direct {v2, v6, v4}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 210
    sput-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Load:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 212
    new-instance v6, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 214
    const-string v4, "LoadAll"

    .line 216
    move-object/from16 v22, v2

    .line 218
    const/16 v2, 0x13

    .line 220
    invoke-direct {v6, v4, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 223
    sput-object v6, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->LoadAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 225
    new-instance v4, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 227
    const-string v2, "Count"

    .line 229
    move-object/from16 v23, v6

    .line 231
    const/16 v6, 0x14

    .line 233
    invoke-direct {v4, v2, v6}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 236
    sput-object v4, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Count:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 238
    new-instance v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 240
    const-string v6, "Refresh"

    .line 242
    move-object/from16 v24, v4

    .line 244
    const/16 v4, 0x15

    .line 246
    invoke-direct {v2, v6, v4}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    .line 249
    sput-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Refresh:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 251
    const/16 v6, 0x16

    .line 253
    new-array v6, v6, [Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 255
    const/16 v16, 0x0

    .line 257
    aput-object v0, v6, v16

    .line 259
    const/4 v0, 0x1

    .line 260
    aput-object v1, v6, v0

    .line 262
    const/4 v0, 0x2

    .line 263
    aput-object v3, v6, v0

    .line 265
    const/4 v0, 0x3

    .line 266
    aput-object v5, v6, v0

    .line 268
    const/4 v0, 0x4

    .line 269
    aput-object v7, v6, v0

    .line 271
    const/4 v0, 0x5

    .line 272
    aput-object v9, v6, v0

    .line 274
    const/4 v0, 0x6

    .line 275
    aput-object v11, v6, v0

    .line 277
    const/4 v0, 0x7

    .line 278
    aput-object v13, v6, v0

    .line 280
    const/16 v0, 0x8

    .line 282
    aput-object v15, v6, v0

    .line 284
    const/16 v0, 0x9

    .line 286
    aput-object v14, v6, v0

    .line 288
    const/16 v0, 0xa

    .line 290
    aput-object v12, v6, v0

    .line 292
    const/16 v0, 0xb

    .line 294
    aput-object v10, v6, v0

    .line 296
    const/16 v0, 0xc

    .line 298
    aput-object v8, v6, v0

    .line 300
    const/16 v0, 0xd

    .line 302
    aput-object v17, v6, v0

    .line 304
    const/16 v0, 0xe

    .line 306
    aput-object v18, v6, v0

    .line 308
    const/16 v0, 0xf

    .line 310
    aput-object v19, v6, v0

    .line 312
    const/16 v0, 0x10

    .line 314
    aput-object v20, v6, v0

    .line 316
    const/16 v0, 0x11

    .line 318
    aput-object v21, v6, v0

    .line 320
    const/16 v0, 0x12

    .line 322
    aput-object v22, v6, v0

    .line 324
    const/16 v0, 0x13

    .line 326
    aput-object v23, v6, v0

    .line 328
    const/16 v0, 0x14

    .line 330
    aput-object v24, v6, v0

    .line 332
    aput-object v2, v6, v4

    .line 334
    sput-object v6, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->$VALUES:[Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 336
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

.method public static valueOf(Ljava/lang/String;)Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .registers 2

    .line 1
    const-class v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .registers 1

    .line 1
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->$VALUES:[Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 3
    invoke-virtual {v0}, [Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 9
    return-object v0
.end method
