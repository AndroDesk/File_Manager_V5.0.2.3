.class public Lcom/micloud/midrive/cache/db/SessionJobDatabase;
.super Ljava/lang/Object;
.source "SessionJobDatabase.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final ACCOUNT_KEY:Ljava/lang/String; = "session_job_account_key"


# instance fields
.field private mSessionJobDatabaseModel:Lcom/micloud/midrive/database/SessionJobDatabaseModel;

.field private mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/micloud/midrive/database/SessionJobDatabaseModel;

    invoke-direct {v0, p1}, Lcom/micloud/midrive/database/SessionJobDatabaseModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mSessionJobDatabaseModel:Lcom/micloud/midrive/database/SessionJobDatabaseModel;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private getSessionJobInfoFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SessionJobInfo;
    .registers 18

    move-object/from16 v0, p2

    const-string v1, "job_info"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "job_status"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "progress"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v3, "add_time"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v3, "last_update_time"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v3, "free_network_only"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_44

    move v13, v5

    goto :goto_45

    :cond_44
    move v13, v4

    :goto_45
    const-string v3, "auto_sync"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v5, :cond_53

    move v14, v5

    goto :goto_54

    :cond_53
    move v14, v4

    :goto_54
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    move-object/from16 v3, p1

    if-ne v3, v0, :cond_64

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/micloud/midrive/infos/FileUploadInfo$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FileUploadInfo;

    move-result-object v0

    goto :goto_6d

    :cond_64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/micloud/midrive/infos/FileDownloadInfo$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FileDownloadInfo;

    move-result-object v0

    :goto_6d
    move-object v5, v0

    new-instance v0, Lcom/micloud/midrive/infos/SessionJobInfo;

    invoke-static {v2}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->get(Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    move-result-object v6

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Lcom/micloud/midrive/infos/SessionJobInfo;-><init>(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;JJJZZ)V

    return-object v0
.end method

.method private getSessionJobInfosFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getSessionJobInfoFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SessionJobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_13
    return-object v0
.end method

.method private getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/micloud/midrive/cache/db/SessionJobDatabase$1;->$SwitchMap$com$micloud$midrive$ui$bean$TransferTaskItem$TransferType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    const-string p1, "download_session_job"

    return-object p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown transfer type. "

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    const-string p1, "upload_session_job"

    return-object p1
.end method

.method private querySessionJobInfoInternal(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo;
    .registers 11

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v4, v2

    const/4 v2, 0x0

    const-string v3, "job_key=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getSessionJobInfoFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SessionJobInfo;

    move-result-object p1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    invoke-static {p2}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    return-object p1
.end method

.method private updateJobProgress(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;JJ)J
    .registers 9

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_34

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "job_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "progress"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "last_update_time"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const-string p2, "job_key=?"

    invoke-virtual {p3, p1, v0, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public beginTransaction()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public changeAllOngoingToPause(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;J)J
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_37

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "job_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "last_update_time"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    const-string v1, "job_status=?"

    invoke-virtual {p2, p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public changeAllOngoingToPause(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;J)J
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;J)J"
        }
    .end annotation

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_66

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateJobProgress(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;JJ)J

    goto :goto_c

    :cond_33
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "job_status"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "last_update_time"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    const-string v0, "job_status=?"

    invoke-virtual {p3, p1, p2, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_66
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public changeAllPauseAndFailToOnGoing(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;J)J
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_40

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "job_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "last_update_time"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->FAIL:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    const-string v1, "job_status in(?,?)"

    invoke-virtual {p2, p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public changeFreeNetworkOnly(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;ZJ)J
    .registers 8

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2f

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v1, "free_network_only"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "last_update_time"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const-string p2, "job_key=?"

    invoke-virtual {p3, p1, v0, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public changeFreeNetworkOnlyForAutoSyncJob(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;ZJ)J
    .registers 7

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2f

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "free_network_only"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "last_update_time"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "1"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    const-string p4, "auto_sync=?"

    invoke-virtual {p2, p1, v0, p4, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearData(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mSessionJobDatabaseModel:Lcom/micloud/midrive/database/SessionJobDatabaseModel;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public endTransaction()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "session_job_account_key"

    invoke-static {v0, v1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->queryAccountOrNull(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getJobCountByStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;)I
    .registers 11

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_35

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "count(*) AS count"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 p1, 0x1

    new-array v4, p1, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "job_status=?"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string p2, "count"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    :cond_31
    invoke-static {p1}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    return p2

    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOngoingJobInfosWithAnyNetworkOrderByAddTime(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;I)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            "I)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_32

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "0"

    aput-object v5, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, ""

    invoke-static {v3, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const-string v3, "job_status=? and free_network_only=?"

    const-string v7, "add_time"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getSessionJobInfosFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    return-object p1

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertOrUpdateJobInfoIfExist(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/SessionJobInfo;)J
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_67

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p2, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-interface {v1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "job_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-interface {v1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "job_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p2, Lcom/micloud/midrive/infos/SessionJobInfo;->addTimeMills:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "add_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p2, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "job_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p2, Lcom/micloud/midrive/infos/SessionJobInfo;->freeNetworkOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "free_network_only"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-boolean v1, p2, Lcom/micloud/midrive/infos/SessionJobInfo;->syncAuto:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "auto_sync"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-wide v1, p2, Lcom/micloud/midrive/infos/SessionJobInfo;->progress:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "progress"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p2, p1, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    return-wide p1

    :cond_67
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public queryInWorkJobsOrderByAddTime(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_39

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->FAIL:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "job_status in(?,?,?)"

    const-string v7, "add_time"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getSessionJobInfosFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    return-object p1

    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CAN NOT used after released."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public queryJobInfosByKeys(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_64

    if-eqz p2, :cond_5f

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5f

    :cond_d
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2b

    :cond_26
    const-string v2, " or "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2b
    const-string v2, "job_key=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getSessionJobInfosFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    return-object p1

    :cond_5f
    :goto_5f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_64
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public queryOngoingJobInfosOrderByAddTime(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;I)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            "I)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2d

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, ""

    invoke-static {v3, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const-string v3, "job_status=?"

    const-string v7, "add_time"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getSessionJobInfosFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    return-object p1

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public querySessionJobInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo;
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->querySessionJobInfoInternal(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo;

    move-result-object p1

    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public querySessionJobStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->querySessionJobInfoInternal(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public querySuccessJobsOrderByUpdateTime(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;I)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            "I)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2d

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->SUCCESS:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, ""

    invoke-static {v3, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const-string v3, "job_status=?"

    const-string v7, "last_update_time DESC"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getSessionJobInfosFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    return-object p1

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTransactionSuccessful()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public updateAccount(Landroid/accounts/Account;)V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "session_job_account_key"

    invoke-static {v0, v1, p1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->updateAccount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/accounts/Account;)J

    return-void
.end method

.method public updateJobInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)J
    .registers 8

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_37

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {p2}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "job_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "last_update_time"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p2}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, v1

    const-string p2, "job_key=?"

    invoke-virtual {p3, p1, v0, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateJobProgress(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_31

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateJobProgress(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;JJ)J

    goto :goto_c

    :cond_30
    return-void

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateJobStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;J)J
    .registers 8

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_34

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "job_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "job_status"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "last_update_time"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const-string p2, "job_key=?"

    invoke-virtual {p3, p1, v0, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateJobStatusAndInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)J
    .registers 9

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_40

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {p3}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "job_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "job_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p4, "last_update_time"

    invoke-virtual {v0, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    const/4 p5, 0x0

    invoke-interface {p3}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p4, p5

    const-string p3, "job_key=?"

    invoke-virtual {p2, p1, v0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
