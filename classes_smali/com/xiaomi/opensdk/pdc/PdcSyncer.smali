.class public Lcom/xiaomi/opensdk/pdc/PdcSyncer;
.super Ljava/lang/Object;
.source "PdcSyncer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;,
        Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;,
        Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;,
        Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    }
.end annotation


# static fields
.field private static final MAX_BATCH_SIZE:I = 0xa

.field private static final PREF_KEY_PDC_SYNCTOKEN:Ljava/lang/String; = "pdc_syncToken_"

.field private static final PREF_KEY_PDC_WATERMARK:Ljava/lang/String; = "pdc_watermark_"

.field private static final PREF_KEY_QUOTA_COUNT:Ljava/lang/String; = "pdc_quota_count"

.field private static final PREF_KEY_QUOTA_DAY:Ljava/lang/String; = "pdc_quota_day"

.field private static final QN_DOWNLOAD:Ljava/lang/String; = "download"

.field private static final QN_UPLOAD:Ljava/lang/String; = "upload"

.field private static final QT_DOWNLOAD:I = 0x3e8

.field private static final QT_UPLOAD:I = 0x3e8

.field private static final RETRY_INTERVALS:[I

.field private static final TAG:Ljava/lang/String; = "PdcSyncer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_a

    .line 7
    sput-object v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->RETRY_INTERVALS:[I

    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_a
    .array-data 4
        0x1388
        0x2710
        0x2710
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mPrefs:Landroid/content/SharedPreferences;

    .line 12
    return-void
.end method

.method private commitBatch(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;ILjava/util/HashSet;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;",
            "Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;",
            "Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;",
            "I",
            "Ljava/util/HashSet<",
            "Lcom/xiaomi/opensdk/pdc/SyncRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    move-object/from16 v4, p5

    .line 11
    const-string v5, "PdcSyncer"

    .line 13
    const/4 v6, 0x0

    .line 14
    move v7, v6

    .line 15
    :goto_e
    :try_start_e
    sget-object v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->RETRY_INTERVALS:[I

    .line 17
    array-length v8, v8

    .line 18
    if-ge v7, v8, :cond_14e

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    move-result-object v8

    .line 24
    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    .line 27
    move-result v8

    .line 28
    if-eqz v8, :cond_1e

    .line 30
    return v6

    .line 31
    :cond_1e
    iget-object v8, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->batchOp:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    .line 33
    invoke-virtual {v8}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->execute()Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    .line 36
    move-result-object v8

    .line 37
    invoke-virtual {v8}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    .line 40
    move-result v9

    .line 41
    if-eqz v9, :cond_11d

    .line 43
    new-instance v9, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;

    .line 45
    move/from16 v10, p4

    .line 47
    invoke-direct {v9, v0, v10}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;I)V

    .line 50
    move v11, v6

    .line 51
    move v12, v11

    .line 52
    :goto_33
    invoke-virtual {v8}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->getSubResultCount()I

    .line 55
    move-result v13

    .line 56
    if-ge v11, v13, :cond_100

    .line 58
    invoke-virtual {v8, v11}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->getSubResultAt(I)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    .line 61
    move-result-object v13

    .line 62
    invoke-virtual {v13}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    .line 65
    move-result v15
    :try_end_41
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_e .. :try_end_41} :catch_157
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_41} :catch_150

    .line 66
    const-string v14, "onUploadConflict: Repetitive bad record"

    .line 68
    if-eqz v15, :cond_96

    .line 70
    :try_start_45
    invoke-virtual {v13}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->getConflictType()Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    .line 73
    move-result-object v15

    .line 74
    sget-object v6, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->NONE:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    .line 76
    if-ne v15, v6, :cond_66

    .line 78
    iget-object v6, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Ljava/lang/Long;

    .line 86
    iget-object v14, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v14

    .line 92
    check-cast v14, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 94
    invoke-virtual {v13}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->getRecord()Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 97
    move-result-object v13

    .line 98
    invoke-interface {v2, v6, v14, v13}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onRecordUploaded(Ljava/lang/Long;Lcom/xiaomi/opensdk/pdc/SyncRecord;Lcom/xiaomi/opensdk/pdc/SyncRecord;)V

    .line 101
    goto/16 :goto_dd

    .line 103
    :cond_66
    iget-object v6, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v6, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object v6

    .line 118
    check-cast v6, Ljava/lang/Long;

    .line 120
    invoke-virtual {v13}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->getConflictType()Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    .line 123
    move-result-object v15

    .line 124
    iget-object v10, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    move-result-object v10

    .line 130
    check-cast v10, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 132
    invoke-virtual {v13}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->getConflictRecord()Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 135
    move-result-object v13

    .line 136
    invoke-interface {v2, v6, v15, v10, v13}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onUploadConflict(Ljava/lang/Long;Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;Lcom/xiaomi/opensdk/pdc/SyncRecord;Lcom/xiaomi/opensdk/pdc/SyncRecord;)Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 143
    move-result v10

    .line 144
    if-eqz v10, :cond_94

    .line 146
    invoke-static {v5, v14}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_94
    :goto_94
    move-object v14, v6

    .line 150
    goto :goto_de

    .line 151
    :cond_96
    invoke-virtual {v13}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isRetriable()Z

    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_a8

    .line 157
    iget-object v6, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    move-result-object v6

    .line 163
    move-object v14, v6

    .line 164
    check-cast v14, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 166
    add-int/lit8 v12, v12, 0x1

    .line 168
    goto :goto_de

    .line 169
    :cond_a8
    invoke-virtual {v13}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 172
    move-result-object v6

    .line 173
    invoke-virtual {v1, v6}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->isInvalidRecord(Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;)Z

    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_dd

    .line 179
    iget-object v6, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v6, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    .line 190
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    move-result-object v6

    .line 194
    check-cast v6, Ljava/lang/Long;

    .line 196
    iget-object v10, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    move-result-object v10

    .line 202
    check-cast v10, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 204
    invoke-virtual {v13}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 207
    move-result-object v13

    .line 208
    invoke-interface {v2, v6, v10, v13}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onInvalidRecord(Ljava/lang/Long;Lcom/xiaomi/opensdk/pdc/SyncRecord;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;)Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 211
    move-result-object v6

    .line 212
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 215
    move-result v10

    .line 216
    if-eqz v10, :cond_94

    .line 218
    invoke-static {v5, v14}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    goto :goto_94

    .line 222
    :cond_dd
    :goto_dd
    const/4 v14, 0x0

    .line 223
    :goto_de
    if-eqz v14, :cond_f9

    .line 225
    iget-object v6, v9, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->batchOp:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    .line 227
    invoke-direct {v1, v0, v14}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->createUploadOp(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lcom/xiaomi/opensdk/pdc/SyncRecord;)Lcom/xiaomi/opensdk/pdc/UploadOperation;

    .line 230
    move-result-object v10

    .line 231
    invoke-virtual {v6, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v6, v9, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    .line 236
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v6, v9, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    .line 241
    iget-object v10, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    .line 243
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 246
    move-result-object v10

    .line 247
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_f9
    add-int/lit8 v11, v11, 0x1

    .line 252
    move/from16 v10, p4

    .line 254
    const/4 v6, 0x0

    .line 255
    goto/16 :goto_33

    .line 257
    :cond_100
    invoke-virtual {v8}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->getSubResultCount()I

    .line 260
    move-result v6

    .line 261
    if-eq v12, v6, :cond_114

    .line 263
    iget-object v0, v9, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->batchOp:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    .line 265
    iput-object v0, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->batchOp:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    .line 267
    iget-object v0, v9, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    .line 269
    iput-object v0, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    .line 271
    iget-object v0, v9, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    .line 273
    iput-object v0, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    .line 275
    const/4 v0, 0x1

    .line 276
    return v0

    .line 277
    :cond_114
    sget-object v6, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->RETRY_INTERVALS:[I

    .line 279
    aget v6, v6, v7

    .line 281
    int-to-long v8, v6

    .line 282
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 285
    goto :goto_149

    .line 286
    :cond_11d
    invoke-virtual {v8}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isRetriable()Z

    .line 289
    move-result v6

    .line 290
    if-nez v6, :cond_149

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    .line 294
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    const-string v2, "BatchResult Error:"

    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v8}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    const-string v2, " description:"

    .line 311
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v8}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v0

    .line 325
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_147
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_45 .. :try_end_147} :catch_157
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_147} :catch_150

    .line 328
    const/4 v2, 0x0

    .line 329
    return v2

    .line 330
    :cond_149
    :goto_149
    add-int/lit8 v7, v7, 0x1

    .line 332
    const/4 v6, 0x0

    .line 333
    goto/16 :goto_e

    .line 335
    :cond_14e
    move v2, v6

    .line 336
    goto :goto_15e

    .line 337
    :catch_150
    move-exception v0

    .line 338
    const-string v2, "InterruptedException in commitBatch()"

    .line 340
    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    goto :goto_15d

    .line 344
    :catch_157
    move-exception v0

    .line 345
    const-string v2, "SyncException in commitBatch()"

    .line 347
    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    :goto_15d
    const/4 v2, 0x0

    .line 351
    :goto_15e
    return v2
.end method

.method private createUploadOp(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lcom/xiaomi/opensdk/pdc/SyncRecord;)Lcom/xiaomi/opensdk/pdc/UploadOperation;
    .registers 12

    .line 1
    new-instance v0, Lcom/xiaomi/opensdk/pdc/SyncFactory;

    .line 3
    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/pdc/SyncFactory;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;)V

    .line 6
    iget-wide v6, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->eTag:J

    .line 8
    const-wide/16 v1, 0x0

    .line 10
    cmp-long p1, v6, v1

    .line 12
    if-gtz p1, :cond_36

    .line 14
    iget-object v1, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    .line 16
    if-eqz v1, :cond_2e

    .line 18
    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 20
    sget-object v2, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->NORMAL:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 22
    if-ne p1, v2, :cond_26

    .line 24
    iget-object v2, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    .line 26
    iget-object v3, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    .line 28
    iget-object v4, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    .line 30
    iget-object v5, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    .line 32
    iget-object v6, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 34
    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/SyncFactory;->newCreateOp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/CreateOperation;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    const-string p2, "Cannot create a deleted record"

    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p1

    .line 47
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    const-string p2, "type is required for create"

    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1

    .line 55
    :cond_36
    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 57
    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->DELETED:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 59
    if-ne p1, v1, :cond_71

    .line 61
    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    .line 63
    if-eqz p1, :cond_69

    .line 65
    iget-object v1, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    .line 67
    if-eqz v1, :cond_61

    .line 69
    iget-object v2, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    .line 71
    if-nez v2, :cond_59

    .line 73
    iget-object v2, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 75
    if-nez v2, :cond_59

    .line 77
    iget-object v2, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    .line 79
    if-nez v2, :cond_59

    .line 81
    iget-object p2, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    .line 83
    if-nez p2, :cond_59

    .line 85
    invoke-virtual {v0, p1, v1, v6, v7}, Lcom/xiaomi/opensdk/pdc/SyncFactory;->newDeleteOp(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaomi/opensdk/pdc/DeleteOperation;

    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    :cond_59
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 92
    const-string p2, "do not set data fields for delete"

    .line 94
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p1

    .line 98
    :cond_61
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 100
    const-string p2, "id is required for delete"

    .line 102
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p1

    .line 106
    :cond_69
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 108
    const-string p2, "type is required for delete"

    .line 110
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    throw p1

    .line 114
    :cond_71
    iget-object v1, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    .line 116
    if-eqz v1, :cond_8e

    .line 118
    iget-object v2, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    .line 120
    if-eqz v2, :cond_86

    .line 122
    iget-object v3, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    .line 124
    iget-object v4, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    .line 126
    iget-object v5, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    .line 128
    iget-object v8, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 130
    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/SyncFactory;->newUpdateOp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/UpdateOperation;

    .line 133
    move-result-object p1

    .line 134
    return-object p1

    .line 135
    :cond_86
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 137
    const-string p2, "id is required for update"

    .line 139
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    throw p1

    .line 143
    :cond_8e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 145
    const-string p2, "type is required for update"

    .line 147
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 150
    throw p1
.end method

.method private ensureQuotaNotExceeded(Ljava/lang/String;I)Z
    .registers 11

    .line 1
    const-string v0, "pdc_quota_count"

    .line 3
    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "pdc_quota_day"

    .line 9
    invoke-static {v1, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mPrefs:Landroid/content/SharedPreferences;

    .line 15
    const-wide/16 v3, 0x0

    .line 17
    invoke-interface {v2, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 20
    move-result-wide v2

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    move-result-wide v4

    .line 25
    const-wide/32 v6, 0x5265c00

    .line 28
    div-long/2addr v4, v6

    .line 29
    cmp-long v2, v4, v2

    .line 31
    const/4 v3, 0x0

    .line 32
    if-nez v2, :cond_28

    .line 34
    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mPrefs:Landroid/content/SharedPreferences;

    .line 36
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 39
    move-result v2

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move v2, v3

    .line 42
    :goto_29
    const/4 v6, 0x1

    .line 43
    add-int/2addr v2, v6

    .line 44
    if-le v2, p2, :cond_4c

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v1, "quota "

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string p1, "exceeds limit "

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    const-string p2, "PdcSyncer"

    .line 73
    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v3

    .line 77
    :cond_4c
    iget-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mPrefs:Landroid/content/SharedPreferences;

    .line 79
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p1, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    return v6
.end method

.method private getSyncToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mPrefs:Landroid/content/SharedPreferences;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "pdc_syncToken_"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string p1, "_"

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method private getWatermark(Ljava/lang/String;Ljava/lang/String;)J
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mPrefs:Landroid/content/SharedPreferences;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "pdc_watermark_"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string p1, "_"

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-wide/16 v1, -0x1

    .line 30
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 33
    move-result-wide p1

    .line 34
    return-wide p1
.end method

.method public static newSyncRecordForCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/SyncRecord;
    .registers 17

    .line 1
    new-instance v10, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 3
    sget-object v9, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->NORMAL:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 5
    const-wide/16 v1, -0x1

    .line 7
    move-object v0, v10

    .line 8
    move-object v3, p0

    .line 9
    move-object v4, p1

    .line 10
    move-object v5, p2

    .line 11
    move-object v6, p3

    .line 12
    move-object v7, p4

    .line 13
    move-object/from16 v8, p5

    .line 15
    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/SyncRecord;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    .line 18
    return-object v10
.end method

.method public static newSyncRecordForDelete(JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/SyncRecord;
    .registers 15

    .line 1
    new-instance v10, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 3
    sget-object v9, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->DELETED:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v7, 0x0

    .line 8
    const/4 v8, 0x0

    .line 9
    move-object v0, v10

    .line 10
    move-wide v1, p0

    .line 11
    move-object v3, p2

    .line 12
    move-object v6, p3

    .line 13
    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/SyncRecord;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    .line 16
    return-object v10
.end method

.method public static newSyncRecordForUpdate(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/SyncRecord;
    .registers 19

    .line 1
    new-instance v10, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 3
    sget-object v9, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->NORMAL:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 5
    move-object v0, v10

    .line 6
    move-wide v1, p0

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p4

    .line 10
    move-object/from16 v6, p5

    .line 12
    move-object/from16 v7, p6

    .line 14
    move-object/from16 v8, p7

    .line 16
    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/SyncRecord;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    .line 19
    return-object v10
.end method

.method private saveSyncToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mPrefs:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v2, "pdc_syncToken_"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, "_"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    move-result-object p3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v1, "pdc_watermark_"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p3, p1, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    return-void
.end method


# virtual methods
.method public clearSyncToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->clearSyncToken(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public clearSyncToken(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    array-length v1, p2

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_45

    aget-object v3, p2, v2

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pdc_syncToken_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pdc_watermark_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5
    :cond_45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public download(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;)Z
    .registers 15

    .line 1
    const-string v0, "PdcSyncer"

    .line 3
    const-string v1, "download"

    .line 5
    const/16 v2, 0x3e8

    .line 7
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->ensureQuotaNotExceeded(Ljava/lang/String;I)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_e

    .line 14
    return v2

    .line 15
    :cond_e
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onBeginDownload()Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_15

    .line 21
    return v2

    .line 22
    :cond_15
    const/4 v1, 0x0

    .line 23
    :try_start_16
    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getAppId()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getSpaceId()Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    invoke-direct {p0, v3, v4}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->getSyncToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getAppId()Ljava/lang/String;

    .line 38
    move-result-object v4

    .line 39
    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getSpaceId()Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 43
    invoke-direct {p0, v4, v5}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->getWatermark(Ljava/lang/String;Ljava/lang/String;)J

    .line 46
    :cond_2d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    .line 53
    move-result v4
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_35} :catch_cb
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_16 .. :try_end_35} :catch_c1
    .catchall {:try_start_16 .. :try_end_35} :catchall_bf

    .line 54
    if-eqz v4, :cond_3b

    .line 56
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onEndDownload()V

    .line 59
    return v2

    .line 60
    :cond_3b
    move v4, v2

    .line 61
    :goto_3c
    :try_start_3c
    sget-object v5, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->RETRY_INTERVALS:[I

    .line 63
    array-length v6, v5

    .line 64
    if-ge v4, v6, :cond_64

    .line 66
    new-instance v1, Lcom/xiaomi/opensdk/pdc/DownloadOperation;

    .line 68
    invoke-direct {v1, p1, v3}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->execute()Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_51

    .line 81
    goto :goto_64

    .line 82
    :cond_51
    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isRetriable()Z

    .line 85
    move-result v6
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_55} :catch_cb
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_3c .. :try_end_55} :catch_c1
    .catchall {:try_start_3c .. :try_end_55} :catchall_bf

    .line 86
    if-nez v6, :cond_5b

    .line 88
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onEndDownload()V

    .line 91
    return v2

    .line 92
    :cond_5b
    :try_start_5b
    aget v5, v5, v4

    .line 94
    int-to-long v5, v5

    .line 95
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 100
    goto :goto_3c

    .line 101
    :cond_64
    :goto_64
    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    .line 104
    move-result v4

    .line 105
    const/4 v5, 0x1

    .line 106
    if-eqz v4, :cond_9d

    .line 108
    move v3, v2

    .line 109
    move v4, v5

    .line 110
    :goto_6d
    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->getRecordCount()I

    .line 113
    move-result v6

    .line 114
    if-ge v3, v6, :cond_81

    .line 116
    invoke-virtual {v1, v3}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->getRecordAt(I)Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 119
    move-result-object v6

    .line 120
    invoke-interface {p2, v6}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onRecordDownloaded(Lcom/xiaomi/opensdk/pdc/SyncRecord;)Z

    .line 123
    move-result v6

    .line 124
    if-nez v6, :cond_7e

    .line 126
    move v4, v2

    .line 127
    :cond_7e
    add-int/lit8 v3, v3, 0x1

    .line 129
    goto :goto_6d

    .line 130
    :cond_81
    if-eqz v4, :cond_99

    .line 132
    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->getSyncToken()Ljava/lang/String;

    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->getWatermark()J

    .line 139
    move-result-wide v10

    .line 140
    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getAppId()Ljava/lang/String;

    .line 143
    move-result-object v7

    .line 144
    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getSpaceId()Ljava/lang/String;

    .line 147
    move-result-object v8

    .line 148
    move-object v6, p0

    .line 149
    move-object v9, v3

    .line 150
    invoke-direct/range {v6 .. v11}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->saveSyncToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_98
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_98} :catch_cb
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_5b .. :try_end_98} :catch_c1
    .catchall {:try_start_5b .. :try_end_98} :catchall_bf

    .line 153
    goto :goto_b5

    .line 154
    :cond_99
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onEndDownload()V

    .line 157
    return v2

    .line 158
    :cond_9d
    :try_start_9d
    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {p0, v4}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->shouldResync(Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;)Z

    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_b5

    .line 168
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onResync()V

    .line 171
    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getAppId()Ljava/lang/String;

    .line 174
    move-result-object v4

    .line 175
    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getSpaceId()Ljava/lang/String;

    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {p0, v4, v6}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->clearSyncToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_b5
    :goto_b5
    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->hasMore()Z

    .line 185
    move-result v4
    :try_end_b9
    .catch Ljava/lang/InterruptedException; {:try_start_9d .. :try_end_b9} :catch_cb
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_9d .. :try_end_b9} :catch_c1
    .catchall {:try_start_9d .. :try_end_b9} :catchall_bf

    .line 186
    if-nez v4, :cond_2d

    .line 188
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onEndDownload()V

    .line 191
    return v5

    .line 192
    :catchall_bf
    move-exception p1

    .line 193
    goto :goto_d5

    .line 194
    :catch_c1
    move-exception p1

    .line 195
    :try_start_c2
    const-string v1, "SyncException in download()"

    .line 197
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c7
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_bf

    .line 200
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onEndDownload()V

    .line 203
    return v2

    .line 204
    :catch_cb
    move-exception p1

    .line 205
    :try_start_cc
    const-string v1, "InterruptedException in download()"

    .line 207
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d1
    .catchall {:try_start_cc .. :try_end_d1} :catchall_bf

    .line 210
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onEndDownload()V

    .line 213
    return v2

    .line 214
    :goto_d5
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onEndDownload()V

    .line 217
    throw p1
.end method

.method public isInvalidRecord(Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 3
    if-ne p1, v0, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    return p1
.end method

.method public shouldResync(Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->NEED_RESYNC:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 3
    if-ne p1, v0, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    return p1
.end method

.method public upload(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;ILcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;)Z
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "upload"

    const/16 v1, 0x3e8

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->ensureQuotaNotExceeded(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    const/16 v0, 0xa

    if-gt p2, v0, :cond_8a

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onBeginUpload()Z

    move-result v2

    if-nez v2, :cond_1c

    return v1

    .line 5
    :cond_1c
    :try_start_1c
    new-instance v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;

    invoke-direct {v8, p1, p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;I)V

    .line 6
    :cond_21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_85

    if-eqz v2, :cond_2f

    .line 7
    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onEndUpload()V

    return v1

    .line 8
    :cond_2f
    :try_start_2f
    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->getNextLocalRecord()Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_52

    .line 9
    :cond_35
    iget-object v2, v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->batchOp:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4d

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, v8

    move v6, p2

    move-object v7, v0

    .line 10
    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->commitBatch(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;ILjava/util/HashSet;)Z

    move-result v2
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_85

    if-nez v2, :cond_35

    .line 11
    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onEndUpload()V

    return v1

    :cond_4d
    const/4 p1, 0x1

    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onEndUpload()V

    return p1

    .line 12
    :cond_52
    :try_start_52
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 13
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 14
    invoke-direct {p0, p1, v2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->createUploadOp(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lcom/xiaomi/opensdk/pdc/SyncRecord;)Lcom/xiaomi/opensdk/pdc/UploadOperation;

    move-result-object v4

    .line 15
    iget-object v5, v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->batchOp:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v4, v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v2, v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_6d
    iget-object v2, v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->batchOp:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-lt v2, p2, :cond_21

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, v8

    move v6, p2

    move-object v7, v0

    .line 19
    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->commitBatch(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;ILjava/util/HashSet;)Z

    move-result v2
    :try_end_7f
    .catchall {:try_start_52 .. :try_end_7f} :catchall_85

    if-nez v2, :cond_6d

    .line 20
    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onEndUpload()V

    return v1

    :catchall_85
    move-exception p1

    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onEndUpload()V

    .line 21
    throw p1

    .line 22
    :cond_8a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "batch size cannot exceed 10"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public upload(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;)Z
    .registers 4

    const/16 v0, 0xa

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->upload(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;ILcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;)Z

    move-result p1

    return p1
.end method
