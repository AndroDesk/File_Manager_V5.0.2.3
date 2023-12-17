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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/micloud/midrive/database/SessionJobDatabaseModel;

    .line 6
    invoke-direct {v0, p1}, Lcom/micloud/midrive/database/SessionJobDatabaseModel;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mSessionJobDatabaseModel:Lcom/micloud/midrive/database/SessionJobDatabaseModel;

    .line 11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    return-void
.end method

.method private getSessionJobInfoFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SessionJobInfo;
    .registers 18

    .line 1
    move-object/from16 v0, p2

    .line 3
    const-string v1, "job_info"

    .line 5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 8
    move-result v1

    .line 9
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "job_status"

    .line 15
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 18
    move-result v2

    .line 19
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    const-string v3, "progress"

    .line 25
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 28
    move-result v3

    .line 29
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 32
    move-result-wide v11

    .line 33
    const-string v3, "add_time"

    .line 35
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 38
    move-result v3

    .line 39
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 42
    move-result-wide v7

    .line 43
    const-string v3, "last_update_time"

    .line 45
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 48
    move-result v3

    .line 49
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 52
    move-result-wide v9

    .line 53
    const-string v3, "free_network_only"

    .line 55
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 58
    move-result v3

    .line 59
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 62
    move-result v3

    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x1

    .line 65
    if-ne v3, v5, :cond_44

    .line 67
    move v13, v5

    .line 68
    goto :goto_45

    .line 69
    :cond_44
    move v13, v4

    .line 70
    :goto_45
    const-string v3, "auto_sync"

    .line 72
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 75
    move-result v3

    .line 76
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 79
    move-result v0

    .line 80
    if-ne v0, v5, :cond_53

    .line 82
    move v14, v5

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    move v14, v4

    .line 85
    :goto_54
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 87
    move-object/from16 v3, p1

    .line 89
    if-ne v3, v0, :cond_64

    .line 91
    new-instance v0, Lorg/json/JSONObject;

    .line 93
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {v0}, Lcom/micloud/midrive/infos/FileUploadInfo$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FileUploadInfo;

    .line 99
    move-result-object v0

    .line 100
    goto :goto_6d

    .line 101
    :cond_64
    new-instance v0, Lorg/json/JSONObject;

    .line 103
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-static {v0}, Lcom/micloud/midrive/infos/FileDownloadInfo$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/FileDownloadInfo;

    .line 109
    move-result-object v0

    .line 110
    :goto_6d
    move-object v5, v0

    .line 111
    new-instance v0, Lcom/micloud/midrive/infos/SessionJobInfo;

    .line 113
    invoke-static {v2}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->get(Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 116
    move-result-object v6

    .line 117
    move-object v4, v0

    .line 118
    invoke-direct/range {v4 .. v14}, Lcom/micloud/midrive/infos/SessionJobInfo;-><init>(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;JJJZZ)V

    .line 121
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_5
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_13

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getSessionJobInfoFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SessionJobInfo;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    goto :goto_5

    .line 20
    :cond_13
    return-object v0
.end method

.method private getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/micloud/midrive/cache/db/SessionJobDatabase$1;->$SwitchMap$com$micloud$midrive$ui$bean$TransferTaskItem$TransferType:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_19

    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne p1, v0, :cond_11

    .line 15
    const-string p1, "download_session_job"

    .line 17
    return-object p1

    .line 18
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string v0, "unknown transfer type. "

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1

    .line 26
    :cond_19
    const-string p1, "upload_session_job"

    .line 28
    return-object p1
.end method

.method private querySessionJobInfoInternal(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v4, v2, [Ljava/lang/String;

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p2, v4, v2

    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, "job_key=?"

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_21

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getSessionJobInfoFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SessionJobInfo;

    .line 32
    move-result-object p1

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    const/4 p1, 0x0

    .line 35
    :goto_22
    invoke-static {p2}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    .line 38
    return-object p1
.end method

.method private updateJobProgress(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;JJ)J
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_34

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "job_key"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "progress"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "last_update_time"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6
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

    .line 7
    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public beginTransaction()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6
    return-void
.end method

.method public changeAllOngoingToPause(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;J)J
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_37

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3
    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "job_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "last_update_time"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5
    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 6
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    const-string v1, "job_status=?"

    .line 7
    invoke-virtual {p2, p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 8
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

    .line 9
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_66

    .line 10
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

    .line 11
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

    .line 12
    :cond_33
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 13
    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v0}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "job_status"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "last_update_time"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 16
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    const-string v0, "job_status=?"

    .line 17
    invoke-virtual {p3, p1, p2, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 18
    :cond_66
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public changeAllPauseAndFailToOnGoing(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;J)J
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz v0, :cond_40

    .line 5
    new-instance v0, Landroid/content/ContentValues;

    .line 7
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10
    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 12
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    const-string v2, "job_status"

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    move-result-object p2

    .line 25
    const-string p3, "last_update_time"

    .line 27
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 30
    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    const/4 p3, 0x2

    .line 37
    new-array p3, p3, [Ljava/lang/String;

    .line 39
    const/4 v1, 0x0

    .line 40
    sget-object v2, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 42
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    aput-object v2, p3, v1

    .line 48
    const/4 v1, 0x1

    .line 49
    sget-object v2, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->FAIL:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 51
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    aput-object v2, p3, v1

    .line 57
    const-string v1, "job_status in(?,?)"

    .line 59
    invoke-virtual {p2, p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    move-result p1

    .line 63
    int-to-long p1, p1

    .line 64
    return-wide p1

    .line 65
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    const-string p2, "CAN NOT used after released."

    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1
.end method

.method public changeFreeNetworkOnly(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;ZJ)J
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz v0, :cond_2f

    .line 5
    new-instance v0, Landroid/content/ContentValues;

    .line 7
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    move-result-object p3

    .line 14
    const-string v1, "free_network_only"

    .line 16
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 19
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    move-result-object p3

    .line 23
    const-string p4, "last_update_time"

    .line 25
    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    const/4 p4, 0x1

    .line 35
    new-array p4, p4, [Ljava/lang/String;

    .line 37
    const/4 p5, 0x0

    .line 38
    aput-object p2, p4, p5

    .line 40
    const-string p2, "job_key=?"

    .line 42
    invoke-virtual {p3, p1, v0, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 45
    move-result p1

    .line 46
    int-to-long p1, p1

    .line 47
    return-wide p1

    .line 48
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    const-string p2, "CAN NOT used after released."

    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p1
.end method

.method public changeFreeNetworkOnlyForAutoSyncJob(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;ZJ)J
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz v0, :cond_2f

    .line 5
    new-instance v0, Landroid/content/ContentValues;

    .line 7
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    move-result-object p2

    .line 14
    const-string v1, "free_network_only"

    .line 16
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 19
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    move-result-object p2

    .line 23
    const-string p3, "last_update_time"

    .line 25
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    const-string p3, "1"

    .line 36
    filled-new-array {p3}, [Ljava/lang/String;

    .line 39
    move-result-object p3

    .line 40
    const-string p4, "auto_sync=?"

    .line 42
    invoke-virtual {p2, p1, v0, p4, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 45
    move-result p1

    .line 46
    int-to-long p1, p1

    .line 47
    return-wide p1

    .line 48
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    const-string p2, "CAN NOT used after released."

    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p1
.end method

.method public clearData(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 11
    return-void
.end method

.method public close()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mSessionJobDatabaseModel:Lcom/micloud/midrive/database/SessionJobDatabaseModel;

    .line 6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 9
    return-void
.end method

.method public endTransaction()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6
    return-void
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    const-string v1, "session_job_account_key"

    .line 5
    invoke-static {v0, v1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->queryAccountOrNull(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/accounts/Account;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getJobCountByStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;)I
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz v0, :cond_35

    .line 5
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string p1, "count(*) AS count"

    .line 11
    filled-new-array {p1}, [Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    const/4 p1, 0x1

    .line 16
    new-array v4, p1, [Ljava/lang/String;

    .line 18
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    const/4 p2, 0x0

    .line 23
    aput-object p1, v4, p2

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const-string v3, "job_status=?"

    .line 30
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_31

    .line 40
    const-string p2, "count"

    .line 42
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 45
    move-result p2

    .line 46
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    .line 49
    move-result p2

    .line 50
    :cond_31
    invoke-static {p1}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    .line 53
    return p2

    .line 54
    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    const-string p2, "CAN NOT used after released."

    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
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

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz v0, :cond_32

    .line 5
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v4, v3, [Ljava/lang/String;

    .line 13
    const/4 v3, 0x0

    .line 14
    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 16
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    .line 19
    move-result-object v5

    .line 20
    aput-object v5, v4, v3

    .line 22
    const/4 v3, 0x1

    .line 23
    const-string v5, "0"

    .line 25
    aput-object v5, v4, v3

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const-string v3, ""

    .line 31
    invoke-static {v3, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 34
    move-result-object v8

    .line 35
    const-string v3, "job_status=? and free_network_only=?"

    .line 37
    const-string v7, "add_time"

    .line 39
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 42
    move-result-object p2

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getSessionJobInfosFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Ljava/util/List;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {p2}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    .line 50
    return-object p1

    .line 51
    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    const-string p2, "CAN NOT used after released."

    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1
.end method

.method public insertOrUpdateJobInfoIfExist(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/SessionJobInfo;)J
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz v0, :cond_67

    .line 5
    new-instance v0, Landroid/content/ContentValues;

    .line 7
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10
    iget-object v1, p2, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 12
    invoke-interface {v1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    const-string v2, "job_key"

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p2, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 23
    invoke-interface {v1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->toJSONObject()Lorg/json/JSONObject;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string v2, "job_info"

    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-wide v1, p2, Lcom/micloud/midrive/infos/SessionJobInfo;->addTimeMills:J

    .line 38
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    move-result-object v1

    .line 42
    const-string v2, "add_time"

    .line 44
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 47
    iget-object v1, p2, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 49
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    const-string v2, "job_status"

    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-boolean v1, p2, Lcom/micloud/midrive/infos/SessionJobInfo;->freeNetworkOnly:Z

    .line 60
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    move-result-object v1

    .line 64
    const-string v2, "free_network_only"

    .line 66
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 69
    iget-boolean v1, p2, Lcom/micloud/midrive/infos/SessionJobInfo;->syncAuto:Z

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    move-result-object v1

    .line 75
    const-string v2, "auto_sync"

    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 80
    iget-wide v1, p2, Lcom/micloud/midrive/infos/SessionJobInfo;->progress:J

    .line 82
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    move-result-object p2

    .line 86
    const-string v1, "progress"

    .line 88
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 93
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    const/4 v1, 0x0

    .line 98
    const/4 v2, 0x5

    .line 99
    invoke-virtual {p2, p1, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 102
    move-result-wide p1

    .line 103
    return-wide p1

    .line 104
    :cond_67
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 106
    const-string p2, "CAN NOT used after released."

    .line 108
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
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

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz v0, :cond_39

    .line 5
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x3

    .line 11
    new-array v4, v3, [Ljava/lang/String;

    .line 13
    const/4 v3, 0x0

    .line 14
    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 16
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    .line 19
    move-result-object v5

    .line 20
    aput-object v5, v4, v3

    .line 22
    const/4 v3, 0x1

    .line 23
    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 25
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    .line 28
    move-result-object v5

    .line 29
    aput-object v5, v4, v3

    .line 31
    const/4 v3, 0x2

    .line 32
    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->FAIL:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 34
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    .line 37
    move-result-object v5

    .line 38
    aput-object v5, v4, v3

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    const-string v3, "job_status in(?,?,?)"

    .line 44
    const-string v7, "add_time"

    .line 46
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getSessionJobInfosFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Ljava/util/List;

    .line 53
    move-result-object p1

    .line 54
    invoke-static {v0}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    .line 57
    return-object p1

    .line 58
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    const-string v0, "CAN NOT used after released."

    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
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

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz v0, :cond_64

    .line 5
    if-eqz p2, :cond_5f

    .line 7
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_5f

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_31

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 31
    if-nez v0, :cond_26

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    goto :goto_2b

    .line 39
    :cond_26
    const-string v2, " or "

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :goto_2b
    const-string v2, "job_key=?"

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    goto :goto_12

    .line 50
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v6

    .line 54
    const/4 v0, 0x0

    .line 55
    new-array v0, v0, [Ljava/lang/String;

    .line 57
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    check-cast v0, [Ljava/lang/String;

    .line 63
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 66
    move-result p2

    .line 67
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 70
    move-result-object p2

    .line 71
    move-object v7, p2

    .line 72
    check-cast v7, [Ljava/lang/String;

    .line 74
    iget-object v3, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    const/4 v5, 0x0

    .line 81
    const/4 v8, 0x0

    .line 82
    const/4 v9, 0x0

    .line 83
    const/4 v10, 0x0

    .line 84
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 87
    move-result-object p2

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getSessionJobInfosFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Ljava/util/List;

    .line 91
    move-result-object p1

    .line 92
    invoke-static {p2}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    .line 95
    return-object p1

    .line 96
    :cond_5f
    :goto_5f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    :cond_64
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 103
    const-string p2, "CAN NOT used after released."

    .line 105
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 108
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

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz v0, :cond_2d

    .line 5
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    new-array v4, v3, [Ljava/lang/String;

    .line 13
    const/4 v3, 0x0

    .line 14
    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 16
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    .line 19
    move-result-object v5

    .line 20
    aput-object v5, v4, v3

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const-string v3, ""

    .line 26
    invoke-static {v3, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 29
    move-result-object v8

    .line 30
    const-string v3, "job_status=?"

    .line 32
    const-string v7, "add_time"

    .line 34
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getSessionJobInfosFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Ljava/util/List;

    .line 41
    move-result-object p1

    .line 42
    invoke-static {p2}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    .line 45
    return-object p1

    .line 46
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    const-string p2, "CAN NOT used after released."

    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1
.end method

.method public querySessionJobInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->querySessionJobInfoInternal(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    const-string p2, "CAN NOT used after released."

    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1
.end method

.method public querySessionJobStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->querySessionJobInfoInternal(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo;

    .line 8
    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 11
    return-object p1

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    const-string p2, "CAN NOT used after released."

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
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

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz v0, :cond_2d

    .line 5
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    new-array v4, v3, [Ljava/lang/String;

    .line 13
    const/4 v3, 0x0

    .line 14
    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->SUCCESS:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 16
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    .line 19
    move-result-object v5

    .line 20
    aput-object v5, v4, v3

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const-string v3, ""

    .line 26
    invoke-static {v3, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 29
    move-result-object v8

    .line 30
    const-string v3, "job_status=?"

    .line 32
    const-string v7, "last_update_time DESC"

    .line 34
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getSessionJobInfosFromCursor(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Landroid/database/Cursor;)Ljava/util/List;

    .line 41
    move-result-object p1

    .line 42
    invoke-static {p2}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    .line 45
    return-object p1

    .line 46
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    const-string p2, "CAN NOT used after released."

    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1
.end method

.method public setTransactionSuccessful()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 6
    return-void
.end method

.method public updateAccount(Landroid/accounts/Account;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    const-string v1, "session_job_account_key"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->updateAccount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/accounts/Account;)J

    .line 8
    return-void
.end method

.method public updateJobInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)J
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz v0, :cond_37

    .line 5
    new-instance v0, Landroid/content/ContentValues;

    .line 7
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10
    invoke-interface {p2}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->toJSONObject()Lorg/json/JSONObject;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    const-string v2, "job_info"

    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    move-result-object p3

    .line 27
    const-string p4, "last_update_time"

    .line 29
    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 32
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    const/4 p4, 0x1

    .line 39
    new-array p4, p4, [Ljava/lang/String;

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-interface {p2}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    aput-object p2, p4, v1

    .line 48
    const-string p2, "job_key=?"

    .line 50
    invoke-virtual {p3, p1, v0, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    move-result p1

    .line 54
    int-to-long p1, p1

    .line 55
    return-wide p1

    .line 56
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    const-string p2, "CAN NOT used after released."

    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
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

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_31

    .line 9
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

    .line 10
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

    .line 11
    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CAN NOT used after released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateJobStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;J)J
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz v0, :cond_34

    .line 5
    new-instance v0, Landroid/content/ContentValues;

    .line 7
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10
    const-string v1, "job_key"

    .line 12
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    .line 18
    move-result-object p3

    .line 19
    const-string v1, "job_status"

    .line 21
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    move-result-object p3

    .line 28
    const-string p4, "last_update_time"

    .line 30
    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    const/4 p4, 0x1

    .line 40
    new-array p4, p4, [Ljava/lang/String;

    .line 42
    const/4 p5, 0x0

    .line 43
    aput-object p2, p4, p5

    .line 45
    const-string p2, "job_key=?"

    .line 47
    invoke-virtual {p3, p1, v0, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 50
    move-result p1

    .line 51
    int-to-long p1, p1

    .line 52
    return-wide p1

    .line 53
    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    const-string p2, "CAN NOT used after released."

    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p1
.end method

.method public updateJobStatusAndInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)J
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz v0, :cond_40

    .line 5
    new-instance v0, Landroid/content/ContentValues;

    .line 7
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10
    invoke-interface {p3}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->toJSONObject()Lorg/json/JSONObject;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    const-string v2, "job_info"

    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->toString()Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    const-string v1, "job_status"

    .line 29
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    move-result-object p2

    .line 36
    const-string p4, "last_update_time"

    .line 38
    invoke-virtual {v0, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 41
    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getTableName(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    const/4 p4, 0x1

    .line 48
    new-array p4, p4, [Ljava/lang/String;

    .line 50
    const/4 p5, 0x0

    .line 51
    invoke-interface {p3}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 54
    move-result-object p3

    .line 55
    aput-object p3, p4, p5

    .line 57
    const-string p3, "job_key=?"

    .line 59
    invoke-virtual {p2, p1, v0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    move-result p1

    .line 63
    int-to-long p1, p1

    .line 64
    return-wide p1

    .line 65
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    const-string p2, "CAN NOT used after released."

    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1
.end method
