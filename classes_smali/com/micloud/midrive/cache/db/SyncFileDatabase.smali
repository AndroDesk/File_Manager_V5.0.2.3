.class public Lcom/micloud/midrive/cache/db/SyncFileDatabase;
.super Ljava/lang/Object;
.source "SyncFileDatabase.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final ACCOUNT_KEY:Ljava/lang/String; = "sync_data_account_key"


# instance fields
.field private mSyncFileDatabaseModel:Lcom/micloud/midrive/database/SyncFileDatabaseModel;

.field private mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/micloud/midrive/database/SyncFileDatabaseModel;

    invoke-direct {v0, p1}, Lcom/micloud/midrive/database/SyncFileDatabaseModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mSyncFileDatabaseModel:Lcom/micloud/midrive/database/SyncFileDatabaseModel;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private checkDatabaseAvailableState()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database is already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateGroupId(J)Ljava/lang/String;
    .registers 3

    invoke-static {p1, p2}, Lcom/micloud/midrive/utils/CalendarUtils;->generateGroupId(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private queryAllSyncCompleteFiles()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from sync_file_info where local_status in (\'"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\') and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "target_sync_file_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cloud_file_name"

    const-string v4, " and "

    const-string v5, "target_sync_parent_id"

    invoke-static {v0, v3, v4, v5, v2}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cloud_parent_id"

    const-string v6, "target_sync_sha1"

    invoke-static {v0, v3, v4, v6, v2}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cloud_sha1"

    invoke-static {v0, v3, v4, v1, v2}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "local_file_name"

    invoke-static {v0, v1, v4, v5, v2}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "local_parent_id"

    invoke-static {v0, v1, v4, v6, v2}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "local_sha1"

    const-string v2, ";"

    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_61
    :try_start_61
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-direct {p0, v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_73

    goto :goto_61

    :cond_6f
    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_73
    move-exception v1

    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private queryCloudFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;
    .registers 24

    move-object/from16 v0, p1

    const-string v1, "cloud_file_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x0

    return-object v0

    :cond_14
    const-string v1, "cloud_file_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "cloud_parent_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v1, "cloud_revision"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v1, "cloud_sha1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v1, "cloud_type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v1, "cloud_label"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v1, "cloud_status"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v1, "cloud_privacy_status"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v1, "cloud_file_size"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const-string v1, "cloud_create_time"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v1, "cloud_modify_time"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v1, "cloud_local_create_time"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v1, "cloud_local_modify_time"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    new-instance v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    move-object v2, v0

    invoke-direct/range {v2 .. v21}, Lcom/micloud/midrive/infos/SyncCloudFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private queryFolderIdsByParentId(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "folder"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "select * from sync_file_info where cloud_type=? and cloud_parent_id=?;"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryCloudFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_31

    goto :goto_1b

    :cond_2d
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_31
    move-exception v0

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private queryGroupId(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3

    const-string v0, "group_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private queryLocalFileId(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3

    const-string v0, "local_file_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private queryLocalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncLocalFileInfo;
    .registers 15

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryLocalFileId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return-object v1

    :cond_c
    const-string v0, "local_parent_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-object v1

    :cond_1d
    const-string v0, "local_file_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "local_file_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "local_file_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v0, "local_modify_time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v0, "local_sha1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v0, "local_version"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    new-instance p1, Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    move-object v2, p1

    invoke-direct/range {v2 .. v12}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;J)V

    return-object p1
.end method

.method private queryLocalFilesByParentId(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "select * from sync_file_info where local_file_id is not NULL and cloud_parent_id=?;"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_16
    :try_start_16
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_28

    goto :goto_16

    :cond_24
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_28
    move-exception v0

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private queryLocalStatus(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;
    .registers 3

    const-string v0, "local_status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->createFromString(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object p1

    return-object p1
.end method

.method private queryTargetInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTargetInfo;
    .registers 5

    const-string v0, "target_sync_parent_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 p1, 0x0

    return-object p1

    :cond_12
    const-string v1, "target_sync_file_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "target_sync_sha1"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/micloud/midrive/infos/SyncTargetInfo;

    invoke-direct {v2, v0, v1, p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private queryTargetRevision(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3

    const-string v0, "target_revision"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 11

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryCloudFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryLocalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTargetInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTargetInfo;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryLocalFileId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryLocalStatus(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTargetRevision(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTransferId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryGroupId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;-><init>(Lcom/micloud/midrive/infos/SyncCloudFileInfo;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->setStatus(Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V

    invoke-virtual {p1, v7}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->setTargetRevision(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->setTransferId(Ljava/lang/String;)V

    return-object p1
.end method

.method private queryTransferId(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3

    const-string v0, "transfer_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private shouldUpdateCloudFileInfo(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "select * from sync_file_info where (cloud_file_id = ? or local_file_id = ?);"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1c

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catchall_1c
    move-exception v0

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public beginTransaction()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public clearAllLocalFilePart(Ljava/lang/String;)J
    .registers 9

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v0

    if-nez v0, :cond_c

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_c
    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    const/4 v1, 0x1

    const-string v2, "local_file_id=?"

    const-string v3, "sync_file_info"

    const/4 v4, 0x0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v4

    invoke-virtual {v0, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    :goto_20
    int-to-long v0, p1

    return-wide v0

    :cond_22
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "local_file_id"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v5, "local_parent_id"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v5, "local_file_path"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v5, "local_file_name"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "local_file_size"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "local_modify_time"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "local_sha1"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v5, "local_status"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v5, "transfer_id"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "local_version"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "target_sync_file_name"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v5, "target_sync_parent_id"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v5, "target_sync_sha1"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v5, "target_revision"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v4

    invoke-virtual {v5, v3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_20
.end method

.method public clearData()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sync_file_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public clearLocalAndTargetFileInfo(Ljava/lang/String;)J
    .registers 7

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "local_parent_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v1, "local_file_path"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v1, "local_file_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "local_file_size"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "local_modify_time"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "local_sha1"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    sget-object v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "local_status"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "transfer_id"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v3, "local_version"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "target_sync_sha1"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v2, "target_revision"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v1

    const-string p1, "sync_file_info"

    const-string v1, "local_file_id=?"

    invoke-virtual {v2, p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mSyncFileDatabaseModel:Lcom/micloud/midrive/database/SyncFileDatabaseModel;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public endTransaction()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public firstDownloadFile(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)J
    .registers 7

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "local_file_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "transfer_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    move-result-object p3

    const-string v1, "target_sync_parent_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "target_sync_file_name"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "target_revision"

    const-string p3, "0"

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p3, v1

    const-string p1, "sync_file_info"

    const-string v1, "cloud_file_id=? and local_file_id is NULL"

    invoke-virtual {p2, p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public firstUploadFile(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)J
    .registers 7

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "local_file_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "local_parent_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "local_file_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "local_file_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "local_file_size"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "local_modify_time"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->generateGroupId(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "group_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object p1

    const-string v1, "local_sha1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "local_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "transfer_id"

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object p1

    const-string p3, "target_sync_parent_id"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "target_sync_file_name"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "sync_file_info"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sync_data_account_key"

    invoke-static {v0, v1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->queryAccountOrNull(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public insertLocalAndTargetFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)J
    .registers 8

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "local_file_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_parent_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_file_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_file_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "local_file_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "local_modify_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->generateGroupId(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object p2

    const-string v1, "local_sha1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "local_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "target_sync_parent_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncSha1()Ljava/lang/String;

    move-result-object p2

    const-string v1, "target_sync_sha1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "target_sync_file_name"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "target_revision"

    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, "sync_file_info"

    const-string p4, "cloud_file_id=? and local_file_id is NULL"

    invoke-virtual {p2, p1, v0, p4, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J
    .registers 6

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "local_file_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "local_parent_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "local_file_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "local_file_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "local_file_size"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "local_modify_time"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->generateGroupId(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "group_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object p1

    const-string p2, "local_sha1"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "local_status"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "sync_file_info"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public insertOrUpdateCloudFileInfo(Lcom/micloud/midrive/infos/SyncCloudFileInfo;)J
    .registers 8

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    const-string v1, "cloud_file_id"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    const-string v1, "cloud_file_name"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "cloud_file_size"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    const-string v1, "cloud_parent_id"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    const-string v1, "cloud_revision"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    const-string v1, "cloud_sha1"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/micloud/midrive/infos/CloudFileType;->transferToLocalTypeIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cloud_type"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->label:Ljava/lang/String;

    const-string v1, "cloud_label"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->createTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "cloud_create_time"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->modifyTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "cloud_modify_time"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->localCreateTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "cloud_local_create_time"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->localModifyTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "cloud_local_modify_time"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->status:Ljava/lang/String;

    const-string v1, "cloud_status"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->privacyStatus:Ljava/lang/String;

    const-string v1, "cloud_privacy_status"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    const-string v1, "folder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    iget-wide v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->modifyTime:J

    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->generateGroupId(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "group_id"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->shouldUpdateCloudFileInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    aput-object p1, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v5, 0x5

    const-string v1, "sync_file_info"

    const-string v3, "cloud_file_id=? or local_file_id=?"

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_b9
    iget-object p1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    const/4 v1, 0x5

    const-string v3, "sync_file_info"

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public queryAllFileCount()I
    .registers 6

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "PRIVACY"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "folder"

    aput-object v4, v1, v2

    sget-object v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "select count(*) from sync_file_info where (cloud_status not in (\'deleted\',\'purged\') and cloud_privacy_status !=?  and cloud_type !=?  and( local_status is NULL  or local_status !=?))"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_21
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_33

    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :cond_2f
    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v3

    :catchall_33
    move-exception v1

    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public queryAllLocalFiles()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "select * from sync_file_info where local_file_id is not NULL"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_13
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-direct {p0, v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_25

    goto :goto_13

    :cond_21
    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_25
    move-exception v1

    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public queryAllModifiedLocalFiles()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    const-string v0, "select * from sync_file_info where local_file_id is not NULL and (local_status =?  or local_file_name is NULL  or cloud_file_id is NULL  or local_file_name != target_sync_file_name or cloud_revision != target_revision or local_parent_id != target_sync_parent_id or local_sha1 != target_sync_sha1) and local_status in (\'"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_4e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-direct {p0, v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catchall {:try_start_49 .. :try_end_5b} :catchall_60

    goto :goto_4e

    :cond_5c
    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_60
    move-exception v1

    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public queryCloudFilePathByCloudFileId(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_e

    return-object v2

    :cond_e
    const-string v1, "select * from sync_file_info where cloud_file_id=?"

    :goto_10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    const/4 v3, 0x0

    :try_start_17
    iget-object v4, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_56

    const-string p1, "cloud_file_name"

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "cloud_parent_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_51
    .catchall {:try_start_17 .. :try_end_51} :catchall_5a

    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object p1, v4

    goto :goto_10

    :cond_56
    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catchall_5a
    move-exception p1

    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :cond_5f
    return-object v2
.end method

.method public queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_e

    return-object v2

    :cond_e
    const-string v1, "select * from sync_file_info where cloud_file_id=?"

    :goto_10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    const/4 v3, 0x0

    :try_start_17
    iget-object v4, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_56

    const-string p1, "cloud_file_name"

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "cloud_parent_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_51
    .catchall {:try_start_17 .. :try_end_51} :catchall_5a

    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object p1, v4

    goto :goto_10

    :cond_56
    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catchall_5a
    move-exception p1

    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :cond_5f
    return-object v2
.end method

.method public queryFolderParentInfo(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/FolderParentInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_16
    const-string v2, "select * from sync_file_info where cloud_file_id=?"

    :goto_18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const/4 v3, 0x0

    :try_start_1f
    iget-object v4, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5c

    const-string p1, "cloud_file_name"

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "cloud_file_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cloud_parent_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/micloud/midrive/infos/FolderParentInfo;

    invoke-direct {v6, v4, p1}, Lcom/micloud/midrive/infos/FolderParentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_57
    .catchall {:try_start_1f .. :try_end_57} :catchall_60

    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object p1, v5

    goto :goto_18

    :cond_5c
    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_65

    :catchall_60
    move-exception p1

    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :cond_65
    :goto_65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public queryGroupId(Ljava/lang/String;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "select distinct group_id from sync_file_info where group_id<?"

    const-string v1, " and (cloud_status is NULL  or cloud_status not in (\'deleted\',\'purged\')) and group_id is not NULL and cloud_file_id is not NULL and (cloud_privacy_status is NULL  or cloud_privacy_status != ?) and (local_status is NULL  or local_status!=?)"

    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_12
    const-string v0, "select distinct group_id from sync_file_info where  (cloud_status is NULL  or cloud_status not in (\'deleted\',\'purged\')) and group_id is not NULL and cloud_file_id is not NULL and (cloud_privacy_status is NULL  or cloud_privacy_status != ?) and (local_status is NULL  or local_status!=?)"

    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " order by group_id desc limit "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "PRIVACY"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_42

    new-array p1, v2, [Ljava/lang/String;

    aput-object v3, p1, v5

    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    goto :goto_52

    :cond_42
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v5

    aput-object v3, v1, v4

    sget-object p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    move-object p1, v1

    :goto_52
    invoke-virtual {v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_5b
    :try_start_5b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryGroupId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catchall {:try_start_5b .. :try_end_68} :catchall_6d

    goto :goto_5b

    :cond_69
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p2

    :catchall_6d
    move-exception p2

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method public queryLatestCountFiles(IZ)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    if-eqz p2, :cond_8

    const-string p2, "select * from sync_file_info where (cloud_status not in (\'deleted\',\'purged\') and cloud_privacy_status !=?  and cloud_type !=?  and( local_status is NULL  or local_status !=?)) order by max(cloud_modify_time , local_modify_time) desc limit ?"

    goto :goto_a

    :cond_8
    const-string p2, "select * from sync_file_info where (cloud_status not in (\'deleted\',\'purged\') and cloud_privacy_status !=?  and cloud_type !=?  and( local_status is NULL  or local_status !=?)) order by cloud_modify_time desc limit ?"

    :goto_a
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "PRIVACY"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "folder"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_2d
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_32
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_2d .. :try_end_3f} :catchall_44

    goto :goto_32

    :cond_40
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p2

    :catchall_44
    move-exception p2

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method public queryLocalFilesByAncestorId(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3b

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryLocalFilesByParentId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryFolderIdsByParentId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_3b
    return-object v0
.end method

.method public queryTotalFileCountByParentId(Ljava/lang/String;)I
    .registers 6

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const/4 p1, 0x2

    const-string v3, "PRIVACY"

    aput-object v3, v1, p1

    sget-object p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v1, v3

    const-string p1, "select count(*) from sync_file_info where (cloud_parent_id=? or local_parent_id=?) and cloud_privacy_status != ? and (cloud_status not in (\'deleted\',\'purged\') or local_status!=?)"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_22
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_34

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :cond_30
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v2

    :catchall_34
    move-exception v0

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 5

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "select * from sync_file_info where cloud_file_id=? or local_file_id=?;"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_27

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :cond_22
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_27
    move-exception v0

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public queryTotalFileInfoByGroupId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "select * from sync_file_info where group_id=? and cloud_file_id is not NULL  and (cloud_privacy_status is NULL  or cloud_privacy_status != ?) and (cloud_status is NULL  or cloud_status not in (\'deleted\',\'purged\')) and (local_status is NULL  or local_status!=?)"

    const-string v1, " order by "

    invoke-static {v0, v1, p2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p3, :cond_16

    const-string p3, " asc;"

    goto :goto_18

    :cond_16
    const-string p3, " desc;"

    :goto_18
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_22

    :cond_20
    const-string p2, "select * from sync_file_info where group_id=? and cloud_file_id is not NULL  and (cloud_privacy_status is NULL  or cloud_privacy_status != ?) and (cloud_status is NULL  or cloud_status not in (\'deleted\',\'purged\')) and (local_status is NULL  or local_status!=?);"

    :goto_22
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const-string v1, "PRIVACY"

    aput-object v1, v0, p1

    const/4 p1, 0x2

    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-virtual {p3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_41
    :try_start_41
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_4f

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_53

    goto :goto_41

    :cond_4f
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p2

    :catchall_53
    move-exception p2

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method public queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 5

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "select * from sync_file_info where local_file_id=?;"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_11
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_24

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_24
    move-exception v0

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "select * from sync_file_info where (cloud_parent_id=? or local_parent_id=?) and (cloud_privacy_status is NULL  or cloud_privacy_status != ?) and (cloud_status is NULL  or cloud_status not in (\'deleted\',\'purged\')) and (local_status is NULL  or local_status!=?)"

    const-string v1, " order by "

    invoke-static {v0, v1, p2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p3, :cond_16

    const-string p3, " asc;"

    goto :goto_18

    :cond_16
    const-string p3, " desc;"

    :goto_18
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_22

    :cond_20
    const-string p2, "select * from sync_file_info where (cloud_parent_id=? or local_parent_id=?) and (cloud_privacy_status is NULL  or cloud_privacy_status != ?) and (cloud_status is NULL  or cloud_status not in (\'deleted\',\'purged\')) and (local_status is NULL  or local_status!=?);"

    :goto_22
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "PRIVACY"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-virtual {p3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_44
    :try_start_44
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_52

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_56

    goto :goto_44

    :cond_52
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p2

    :catchall_56
    move-exception p2

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method public queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 5

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "select * from sync_file_info where transfer_id=?;"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_11
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_24

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_24
    move-exception v0

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public searchKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select * from sync_file_info where cloud_status not in (\'deleted\',\'purged\') and (cloud_privacy_status is NULL  or cloud_privacy_status != \'PRIVACY\')"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, " and ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(local_file_name IS NULL and cloud_file_name like \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(local_file_name IS NOT NULL and local_file_name like \'%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " and cloud_type=\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    const-string p1, " order by cloud_modify_time desc;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_80
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_85
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_92
    .catchall {:try_start_80 .. :try_end_92} :catchall_97

    goto :goto_85

    :cond_93
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p2

    :catchall_97
    move-exception p2

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method public setTransactionSuccessful()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public updateAccount(Landroid/accounts/Account;)V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sync_data_account_key"

    invoke-static {v0, v1, p1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->updateAccount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/accounts/Account;)J

    return-void
.end method

.method public updateDownloadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J
    .registers 6

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_parent_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_file_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_file_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "local_file_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "local_modify_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_sha1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object p2

    const-string v1, "target_sync_sha1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "local_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "transfer_id"

    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "sync_file_info"

    const-string v2, "transfer_id=?"

    invoke-virtual {p2, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public updateInfoWhenSyncComplete()J
    .registers 8

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryAllSyncCompleteFiles()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v2, 0x0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    sget-object v5, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "local_status"

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v5, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    const-string v6, "target_revision"

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_12

    :cond_3d
    return-wide v2
.end method

.method public updateLocalFileIdByCloudFileId(Ljava/lang/String;)J
    .registers 6

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "local_file_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "sync_file_info"

    const-string v3, "cloud_file_id=? and local_file_id is NULL"

    invoke-virtual {v1, p1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public updateLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J
    .registers 8

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_parent_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_file_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_file_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "local_file_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "local_modify_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_sha1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p2, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "local_version"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-wide p1, p2, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "sync_file_info"

    const-string p2, "local_file_id=? and local_version=?"

    invoke-virtual {v1, p1, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_10

    :cond_2c
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_30
    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "sync_file_info"

    const-string v2, "local_file_id=?"

    invoke-virtual {p2, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)J
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_10

    :cond_2c
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_30
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "local_file_id=?"

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, " and "

    if-eqz v4, :cond_66

    const-string v3, " is NULL"

    invoke-static {p1, v5, v2, v3}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_66
    const-string v4, "=?"

    invoke-static {p1, v5, v2, v4}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_6f
    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    const-string v1, "sync_file_info"

    invoke-virtual {p2, v1, v0, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public updateLocalStatus(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;Ljava/lang/Long;)J
    .registers 6

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "local_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_25

    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "local_file_id=? and local_version=?"

    goto :goto_27

    :cond_25
    const-string p1, "local_file_id=?"

    :goto_27
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    const-string v1, "sync_file_info"

    invoke-virtual {p3, v1, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)J
    .registers 7

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "target_sync_parent_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "target_sync_file_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncSha1()Ljava/lang/String;

    move-result-object p2

    const-string v1, "target_sync_sha1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_37

    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "local_file_id=? and local_version=?"

    goto :goto_39

    :cond_37
    const-string p1, "local_file_id=?"

    :goto_39
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    const-string v1, "sync_file_info"

    invoke-virtual {p3, v1, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public updateTargetRevision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)J
    .registers 6

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "target_revision"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_21

    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "local_file_id=? and local_version=?"

    goto :goto_23

    :cond_21
    const-string p1, "local_file_id=?"

    :goto_23
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    const-string v1, "sync_file_info"

    invoke-virtual {p3, v1, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public updateTransferId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)J
    .registers 6

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "transfer_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_21

    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "local_file_id=? and local_version=?"

    goto :goto_23

    :cond_21
    const-string p1, "local_file_id=?"

    :goto_23
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    const-string v1, "sync_file_info"

    invoke-virtual {p3, v1, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public updateUploadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncCloudFileInfo;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J
    .registers 14

    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    const-string v1, "transfer_id=?"

    const-string v2, "target_sync_sha1"

    const-string v3, "local_status"

    const-string v4, "local_file_id"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "sync_file_info"

    if-nez v0, :cond_aa

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v8, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v4

    const-string v8, "local_parent_id"

    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v8, "local_file_path"

    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "local_file_name"

    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v8, "local_file_size"

    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v8, "local_modify_time"

    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->generateGroupId(J)Ljava/lang/String;

    move-result-object v4

    const-string v8, "group_id"

    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object p3

    const-string v4, "local_sha1"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    const-string v3, "target_sync_parent_id"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    const-string v2, "target_sync_file_name"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    const-string v2, "target_revision"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-array v2, v6, [Ljava/lang/String;

    iget-object p2, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    aput-object p2, v2, v5

    const-string p2, "cloud_file_id=?"

    invoke-virtual {p3, v7, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-array v0, v6, [Ljava/lang/String;

    aput-object p1, v0, v5

    invoke-virtual {p3, v7, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    add-int/2addr p2, p1

    int-to-long p1, p2

    return-wide p1

    :cond_aa
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object p2, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "transfer_id"

    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-array p3, v6, [Ljava/lang/String;

    aput-object p1, p3, v5

    invoke-virtual {p2, v7, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method
