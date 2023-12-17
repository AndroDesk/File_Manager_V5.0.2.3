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

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->RETRY_INTERVALS:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1388
        0x2710
        0x2710
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mPrefs:Landroid/content/SharedPreferences;

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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const-string v5, "PdcSyncer"

    const/4 v6, 0x0

    move v7, v6

    :goto_e
    :try_start_e
    sget-object v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->RETRY_INTERVALS:[I

    array-length v8, v8

    if-ge v7, v8, :cond_14e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-eqz v8, :cond_1e

    return v6

    :cond_1e
    iget-object v8, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->batchOp:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    invoke-virtual {v8}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->execute()Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    move-result v9

    if-eqz v9, :cond_11d

    new-instance v9, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;

    move/from16 v10, p4

    invoke-direct {v9, v0, v10}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;I)V

    move v11, v6

    move v12, v11

    :goto_33
    invoke-virtual {v8}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->getSubResultCount()I

    move-result v13

    if-ge v11, v13, :cond_100

    invoke-virtual {v8, v11}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->getSubResultAt(I)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v13

    invoke-virtual {v13}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    move-result v15
    :try_end_41
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_e .. :try_end_41} :catch_157
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_41} :catch_150

    const-string v14, "onUploadConflict: Repetitive bad record"

    if-eqz v15, :cond_96

    :try_start_45
    invoke-virtual {v13}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->getConflictType()Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    move-result-object v15

    sget-object v6, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->NONE:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    if-ne v15, v6, :cond_66

    iget-object v6, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    iget-object v14, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    invoke-virtual {v13}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->getRecord()Lcom/xiaomi/opensdk/pdc/SyncRecord;

    move-result-object v13

    invoke-interface {v2, v6, v14, v13}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onRecordUploaded(Ljava/lang/Long;Lcom/xiaomi/opensdk/pdc/SyncRecord;Lcom/xiaomi/opensdk/pdc/SyncRecord;)V

    goto/16 :goto_dd

    :cond_66
    iget-object v6, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v13}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->getConflictType()Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    move-result-object v15

    iget-object v10, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    invoke-virtual {v13}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->getConflictRecord()Lcom/xiaomi/opensdk/pdc/SyncRecord;

    move-result-object v13

    invoke-interface {v2, v6, v15, v10, v13}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onUploadConflict(Ljava/lang/Long;Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;Lcom/xiaomi/opensdk/pdc/SyncRecord;Lcom/xiaomi/opensdk/pdc/SyncRecord;)Lcom/xiaomi/opensdk/pdc/SyncRecord;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_94

    invoke-static {v5, v14}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    :goto_94
    move-object v14, v6

    goto :goto_de

    :cond_96
    invoke-virtual {v13}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isRetriable()Z

    move-result v6

    if-eqz v6, :cond_a8

    iget-object v6, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    add-int/lit8 v12, v12, 0x1

    goto :goto_de

    :cond_a8
    invoke-virtual {v13}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->isInvalidRecord(Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;)Z

    move-result v6

    if-eqz v6, :cond_dd

    iget-object v6, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    iget-object v10, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    invoke-virtual {v13}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v13

    invoke-interface {v2, v6, v10, v13}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onInvalidRecord(Ljava/lang/Long;Lcom/xiaomi/opensdk/pdc/SyncRecord;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;)Lcom/xiaomi/opensdk/pdc/SyncRecord;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_94

    invoke-static {v5, v14}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    :cond_dd
    :goto_dd
    const/4 v14, 0x0

    :goto_de
    if-eqz v14, :cond_f9

    iget-object v6, v9, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->batchOp:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    invoke-direct {v1, v0, v14}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->createUploadOp(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lcom/xiaomi/opensdk/pdc/SyncRecord;)Lcom/xiaomi/opensdk/pdc/UploadOperation;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v6, v9, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v9, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    iget-object v10, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f9
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, p4

    const/4 v6, 0x0

    goto/16 :goto_33

    :cond_100
    invoke-virtual {v8}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->getSubResultCount()I

    move-result v6

    if-eq v12, v6, :cond_114

    iget-object v0, v9, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->batchOp:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    iput-object v0, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->batchOp:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    iget-object v0, v9, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    iput-object v0, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    iget-object v0, v9, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    iput-object v0, v3, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    const/4 v0, 0x1

    return v0

    :cond_114
    sget-object v6, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->RETRY_INTERVALS:[I

    aget v6, v6, v7

    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_149

    :cond_11d
    invoke-virtual {v8}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isRetriable()Z

    move-result v6

    if-nez v6, :cond_149

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BatchResult Error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " description:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_147
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_45 .. :try_end_147} :catch_157
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_147} :catch_150

    const/4 v2, 0x0

    return v2

    :cond_149
    :goto_149
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_e

    :cond_14e
    move v2, v6

    goto :goto_15e

    :catch_150
    move-exception v0

    const-string v2, "InterruptedException in commitBatch()"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15d

    :catch_157
    move-exception v0

    const-string v2, "SyncException in commitBatch()"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15d
    const/4 v2, 0x0

    :goto_15e
    return v2
.end method

.method private createUploadOp(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lcom/xiaomi/opensdk/pdc/SyncRecord;)Lcom/xiaomi/opensdk/pdc/UploadOperation;
    .registers 12

    new-instance v0, Lcom/xiaomi/opensdk/pdc/SyncFactory;

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/pdc/SyncFactory;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;)V

    iget-wide v6, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->eTag:J

    const-wide/16 v1, 0x0

    cmp-long p1, v6, v1

    if-gtz p1, :cond_36

    iget-object v1, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    if-eqz v1, :cond_2e

    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    sget-object v2, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->NORMAL:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    if-ne p1, v2, :cond_26

    iget-object v2, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    iget-object v3, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    iget-object v4, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    iget-object v5, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    iget-object v6, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/SyncFactory;->newCreateOp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/CreateOperation;

    move-result-object p1

    return-object p1

    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot create a deleted record"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "type is required for create"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->DELETED:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    if-ne p1, v1, :cond_71

    iget-object p1, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    if-eqz p1, :cond_69

    iget-object v1, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    if-eqz v1, :cond_61

    iget-object v2, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    if-nez v2, :cond_59

    iget-object v2, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    if-nez v2, :cond_59

    iget-object v2, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    if-nez v2, :cond_59

    iget-object p2, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    if-nez p2, :cond_59

    invoke-virtual {v0, p1, v1, v6, v7}, Lcom/xiaomi/opensdk/pdc/SyncFactory;->newDeleteOp(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaomi/opensdk/pdc/DeleteOperation;

    move-result-object p1

    return-object p1

    :cond_59
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "do not set data fields for delete"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_61
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "id is required for delete"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_69
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "type is required for delete"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_71
    iget-object v1, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    if-eqz v1, :cond_8e

    iget-object v2, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    if-eqz v2, :cond_86

    iget-object v3, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    iget-object v4, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    iget-object v5, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    iget-object v8, p2, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/SyncFactory;->newUpdateOp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/UpdateOperation;

    move-result-object p1

    return-object p1

    :cond_86
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "id is required for update"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "type is required for update"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureQuotaNotExceeded(Ljava/lang/String;I)Z
    .registers 11

    const-string v0, "pdc_quota_count"

    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pdc_quota_day"

    invoke-static {v1, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    cmp-long v2, v4, v2

    const/4 v3, 0x0

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_29

    :cond_28
    move v2, v3

    :goto_29
    const/4 v6, 0x1

    add-int/2addr v2, v6

    if-le v2, p2, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quota "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "exceeds limit "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PdcSyncer"

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4c
    iget-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v6
.end method

.method private getSyncToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pdc_syncToken_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getWatermark(Ljava/lang/String;Ljava/lang/String;)J
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pdc_watermark_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, -0x1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public static newSyncRecordForCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/SyncRecord;
    .registers 17

    new-instance v10, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    sget-object v9, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->NORMAL:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    const-wide/16 v1, -0x1

    move-object v0, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/SyncRecord;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    return-object v10
.end method

.method public static newSyncRecordForDelete(JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/SyncRecord;
    .registers 15

    new-instance v10, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    sget-object v9, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->DELETED:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-wide v1, p0

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/SyncRecord;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    return-object v10
.end method

.method public static newSyncRecordForUpdate(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/SyncRecord;
    .registers 19

    new-instance v10, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    sget-object v9, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->NORMAL:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    move-object v0, v10

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/SyncRecord;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    return-object v10
.end method

.method private saveSyncToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pdc_syncToken_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pdc_watermark_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public clearSyncToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->clearSyncToken(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public clearSyncToken(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_45

    aget-object v3, p2, v2

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

    :cond_45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public download(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;)Z
    .registers 15

    const-string v0, "PdcSyncer"

    const-string v1, "download"

    const/16 v2, 0x3e8

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->ensureQuotaNotExceeded(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return v2

    :cond_e
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onBeginDownload()Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    const/4 v1, 0x0

    :try_start_16
    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->getSyncToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->getWatermark(Ljava/lang/String;Ljava/lang/String;)J

    :cond_2d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_35} :catch_cb
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_16 .. :try_end_35} :catch_c1
    .catchall {:try_start_16 .. :try_end_35} :catchall_bf

    if-eqz v4, :cond_3b

    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onEndDownload()V

    return v2

    :cond_3b
    move v4, v2

    :goto_3c
    :try_start_3c
    sget-object v5, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->RETRY_INTERVALS:[I

    array-length v6, v5

    if-ge v4, v6, :cond_64

    new-instance v1, Lcom/xiaomi/opensdk/pdc/DownloadOperation;

    invoke-direct {v1, p1, v3}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->execute()Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_51

    goto :goto_64

    :cond_51
    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isRetriable()Z

    move-result v6
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_55} :catch_cb
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_3c .. :try_end_55} :catch_c1
    .catchall {:try_start_3c .. :try_end_55} :catchall_bf

    if-nez v6, :cond_5b

    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onEndDownload()V

    return v2

    :cond_5b
    :try_start_5b
    aget v5, v5, v4

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_64
    :goto_64
    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_9d

    move v3, v2

    move v4, v5

    :goto_6d
    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->getRecordCount()I

    move-result v6

    if-ge v3, v6, :cond_81

    invoke-virtual {v1, v3}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->getRecordAt(I)Lcom/xiaomi/opensdk/pdc/SyncRecord;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onRecordDownloaded(Lcom/xiaomi/opensdk/pdc/SyncRecord;)Z

    move-result v6

    if-nez v6, :cond_7e

    move v4, v2

    :cond_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    :cond_81
    if-eqz v4, :cond_99

    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->getSyncToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->getWatermark()J

    move-result-wide v10

    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getSpaceId()Ljava/lang/String;

    move-result-object v8

    move-object v6, p0

    move-object v9, v3

    invoke-direct/range {v6 .. v11}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->saveSyncToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_98
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_98} :catch_cb
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_5b .. :try_end_98} :catch_c1
    .catchall {:try_start_5b .. :try_end_98} :catchall_bf

    goto :goto_b5

    :cond_99
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onEndDownload()V

    return v2

    :cond_9d
    :try_start_9d
    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->shouldResync(Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;)Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onResync()V

    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getSpaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->clearSyncToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    :goto_b5
    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->hasMore()Z

    move-result v4
    :try_end_b9
    .catch Ljava/lang/InterruptedException; {:try_start_9d .. :try_end_b9} :catch_cb
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_9d .. :try_end_b9} :catch_c1
    .catchall {:try_start_9d .. :try_end_b9} :catchall_bf

    if-nez v4, :cond_2d

    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onEndDownload()V

    return v5

    :catchall_bf
    move-exception p1

    goto :goto_d5

    :catch_c1
    move-exception p1

    :try_start_c2
    const-string v1, "SyncException in download()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c7
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_bf

    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onEndDownload()V

    return v2

    :catch_cb
    move-exception p1

    :try_start_cc
    const-string v1, "InterruptedException in download()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d1
    .catchall {:try_start_cc .. :try_end_d1} :catchall_bf

    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onEndDownload()V

    return v2

    :goto_d5
    invoke-interface {p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$DownloadClient;->onEndDownload()V

    throw p1
.end method

.method public isInvalidRecord(Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;)Z
    .registers 3

    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public shouldResync(Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;)Z
    .registers 3

    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->NEED_RESYNC:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

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

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->ensureQuotaNotExceeded(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    const/16 v0, 0xa

    if-gt p2, v0, :cond_8a

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onBeginUpload()Z

    move-result v2

    if-nez v2, :cond_1c

    return v1

    :cond_1c
    :try_start_1c
    new-instance v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;

    invoke-direct {v8, p1, p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;I)V

    :cond_21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_85

    if-eqz v2, :cond_2f

    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onEndUpload()V

    return v1

    :cond_2f
    :try_start_2f
    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->getNextLocalRecord()Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_52

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

    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->commitBatch(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;ILjava/util/HashSet;)Z

    move-result v2
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_85

    if-nez v2, :cond_35

    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onEndUpload()V

    return v1

    :cond_4d
    const/4 p1, 0x1

    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onEndUpload()V

    return p1

    :cond_52
    :try_start_52
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    invoke-direct {p0, p1, v2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->createUploadOp(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lcom/xiaomi/opensdk/pdc/SyncRecord;)Lcom/xiaomi/opensdk/pdc/UploadOperation;

    move-result-object v4

    iget-object v5, v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->batchOp:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v4, v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v8, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->localIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->commitBatch(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;ILjava/util/HashSet;)Z

    move-result v2
    :try_end_7f
    .catchall {:try_start_52 .. :try_end_7f} :catchall_85

    if-nez v2, :cond_6d

    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onEndUpload()V

    return v1

    :catchall_85
    move-exception p1

    invoke-interface {p3}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;->onEndUpload()V

    throw p1

    :cond_8a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "batch size cannot exceed 10"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public upload(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Lcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;)Z
    .registers 4

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/opensdk/pdc/PdcSyncer;->upload(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;ILcom/xiaomi/opensdk/pdc/PdcSyncer$UploadClient;)Z

    move-result p1

    return p1
.end method
