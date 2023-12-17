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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/micloud/midrive/database/SyncFileDatabaseModel;

    .line 6
    invoke-direct {v0, p1}, Lcom/micloud/midrive/database/SyncFileDatabaseModel;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mSyncFileDatabaseModel:Lcom/micloud/midrive/database/SyncFileDatabaseModel;

    .line 11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    return-void
.end method

.method private checkDatabaseAvailableState()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    const-string v1, "database is already closed."

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method private generateGroupId(J)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/micloud/midrive/utils/CalendarUtils;->generateGroupId(J)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
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

    .line 1
    const-string v0, "select * from sync_file_info where local_status in (\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "\',\'"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    sget-object v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "\') and "

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, "target_sync_file_name"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v2, "="

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v3, "cloud_file_name"

    .line 47
    const-string v4, " and "

    .line 49
    const-string v5, "target_sync_parent_id"

    .line 51
    invoke-static {v0, v3, v4, v5, v2}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "cloud_parent_id"

    .line 56
    const-string v6, "target_sync_sha1"

    .line 58
    invoke-static {v0, v3, v4, v6, v2}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "cloud_sha1"

    .line 63
    invoke-static {v0, v3, v4, v1, v2}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "local_file_name"

    .line 68
    invoke-static {v0, v1, v4, v5, v2}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "local_parent_id"

    .line 73
    invoke-static {v0, v1, v4, v6, v2}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "local_sha1"

    .line 78
    const-string v2, ";"

    .line 80
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 86
    const/4 v2, 0x0

    .line 87
    new-array v2, v2, [Ljava/lang/String;

    .line 89
    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 92
    move-result-object v0

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    .line 95
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    :goto_61
    :try_start_61
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_6f

    .line 104
    invoke-direct {p0, v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_73

    .line 111
    goto :goto_61

    .line 112
    :cond_6f
    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 115
    return-object v1

    .line 116
    :catchall_73
    move-exception v1

    .line 117
    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 120
    throw v1
.end method

.method private queryCloudFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;
    .registers 24

    .line 1
    move-object/from16 v0, p1

    .line 3
    const-string v1, "cloud_file_id"

    .line 5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 8
    move-result v1

    .line 9
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_14

    .line 19
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    :cond_14
    const-string v1, "cloud_file_name"

    .line 23
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 26
    move-result v1

    .line 27
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    const-string v1, "cloud_parent_id"

    .line 33
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 36
    move-result v1

    .line 37
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object v14

    .line 41
    const-string v1, "cloud_revision"

    .line 43
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 46
    move-result v1

    .line 47
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 50
    move-result-object v15

    .line 51
    const-string v1, "cloud_sha1"

    .line 53
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 56
    move-result v1

    .line 57
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 60
    move-result-object v20

    .line 61
    const-string v1, "cloud_type"

    .line 63
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 66
    move-result v1

    .line 67
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object v13

    .line 71
    const-string v1, "cloud_label"

    .line 73
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 76
    move-result v1

    .line 77
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v19

    .line 81
    const-string v1, "cloud_status"

    .line 83
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 86
    move-result v1

    .line 87
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 90
    move-result-object v16

    .line 91
    const-string v1, "cloud_privacy_status"

    .line 93
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 96
    move-result v1

    .line 97
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 100
    move-result-object v21

    .line 101
    const-string v1, "cloud_file_size"

    .line 103
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 106
    move-result v1

    .line 107
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 110
    move-result-wide v17

    .line 111
    const-string v1, "cloud_create_time"

    .line 113
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 116
    move-result v1

    .line 117
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 120
    move-result-wide v7

    .line 121
    const-string v1, "cloud_modify_time"

    .line 123
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 126
    move-result v1

    .line 127
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 130
    move-result-wide v5

    .line 131
    const-string v1, "cloud_local_create_time"

    .line 133
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 136
    move-result v1

    .line 137
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 140
    move-result-wide v11

    .line 141
    const-string v1, "cloud_local_modify_time"

    .line 143
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 146
    move-result v1

    .line 147
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 150
    move-result-wide v9

    .line 151
    new-instance v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 153
    move-object v2, v0

    .line 154
    invoke-direct/range {v2 .. v21}, Lcom/micloud/midrive/infos/SyncCloudFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
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

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "folder"

    .line 12
    aput-object v3, v1, v2

    .line 14
    const/4 v2, 0x1

    .line 15
    aput-object p1, v1, v2

    .line 17
    const-string p1, "select * from sync_file_info where cloud_type=? and cloud_parent_id=?;"

    .line 19
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2d

    .line 34
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryCloudFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1b

    .line 40
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_31

    .line 45
    goto :goto_1b

    .line 46
    :cond_2d
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 49
    return-object v0

    .line 50
    :catchall_31
    move-exception v0

    .line 51
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 54
    throw v0
.end method

.method private queryGroupId(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3

    const-string v0, "group_id"

    .line 18
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private queryLocalFileId(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "local_file_id"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private queryLocalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncLocalFileInfo;
    .registers 15

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryLocalFileId(Landroid/database/Cursor;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_c

    .line 12
    return-object v1

    .line 13
    :cond_c
    const-string v0, "local_parent_id"

    .line 15
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 18
    move-result v0

    .line 19
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    return-object v1

    .line 30
    :cond_1d
    const-string v0, "local_file_path"

    .line 32
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 35
    move-result v0

    .line 36
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    const-string v0, "local_file_name"

    .line 42
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 45
    move-result v0

    .line 46
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 50
    const-string v0, "local_file_size"

    .line 52
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 55
    move-result v0

    .line 56
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 59
    move-result-wide v6

    .line 60
    const-string v0, "local_modify_time"

    .line 62
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 65
    move-result v0

    .line 66
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 69
    move-result-wide v8

    .line 70
    const-string v0, "local_sha1"

    .line 72
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 75
    move-result v0

    .line 76
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    move-result-object v10

    .line 80
    const-string v0, "local_version"

    .line 82
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 85
    move-result v0

    .line 86
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 89
    move-result-wide v11

    .line 90
    new-instance p1, Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 92
    move-object v2, p1

    .line 93
    invoke-direct/range {v2 .. v12}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;J)V

    .line 96
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

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p1, v1, v2

    .line 12
    const-string p1, "select * from sync_file_info where local_file_id is not NULL and cloud_parent_id=?;"

    .line 14
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :goto_16
    :try_start_16
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_24

    .line 29
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_28

    .line 36
    goto :goto_16

    .line 37
    :cond_24
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 40
    return-object v0

    .line 41
    :catchall_28
    move-exception v0

    .line 42
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 45
    throw v0
.end method

.method private queryLocalStatus(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;
    .registers 3

    .line 1
    const-string v0, "local_status"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->createFromString(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private queryTargetInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTargetInfo;
    .registers 5

    .line 1
    const-string v0, "target_sync_parent_id"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_12

    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_12
    const-string v1, "target_sync_file_name"

    .line 21
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 24
    move-result v1

    .line 25
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    const-string v2, "target_sync_sha1"

    .line 31
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 34
    move-result v2

    .line 35
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    new-instance v2, Lcom/micloud/midrive/infos/SyncTargetInfo;

    .line 41
    invoke-direct {v2, v0, v1, p1}, Lcom/micloud/midrive/infos/SyncTargetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-object v2
.end method

.method private queryTargetRevision(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "target_revision"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 11

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryCloudFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 4
    move-result-object v1

    .line 5
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryLocalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 8
    move-result-object v2

    .line 9
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTargetInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTargetInfo;

    .line 12
    move-result-object v3

    .line 13
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryLocalFileId(Landroid/database/Cursor;)Ljava/lang/String;

    .line 16
    move-result-object v4

    .line 17
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryLocalStatus(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 20
    move-result-object v6

    .line 21
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTargetRevision(Landroid/database/Cursor;)Ljava/lang/String;

    .line 24
    move-result-object v7

    .line 25
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTransferId(Landroid/database/Cursor;)Ljava/lang/String;

    .line 28
    move-result-object v8

    .line 29
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryGroupId(Landroid/database/Cursor;)Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 33
    new-instance p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 35
    move-object v0, p1

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;-><init>(Lcom/micloud/midrive/infos/SyncCloudFileInfo;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1, v6}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->setStatus(Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;)V

    .line 42
    invoke-virtual {p1, v7}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->setTargetRevision(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1, v8}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->setTransferId(Ljava/lang/String;)V

    .line 48
    return-object p1
.end method

.method private queryTransferId(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "transfer_id"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private shouldUpdateCloudFileInfo(Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p1, v1, v2

    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object p1, v1, v2

    .line 15
    const-string p1, "select * from sync_file_info where (cloud_file_id = ? or local_file_id = ?);"

    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 20
    move-result-object p1

    .line 21
    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 24
    move-result v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1c

    .line 25
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 28
    return v0

    .line 29
    :catchall_1c
    move-exception v0

    .line 30
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 33
    throw v0
.end method


# virtual methods
.method public beginTransaction()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6
    return-void
.end method

.method public clearAllLocalFilePart(Ljava/lang/String;)J
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_c

    .line 10
    const-wide/16 v0, 0x0

    .line 12
    return-wide v0

    .line 13
    :cond_c
    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "local_file_id=?"

    .line 18
    const-string v3, "sync_file_info"

    .line 20
    const/4 v4, 0x0

    .line 21
    if-nez v0, :cond_22

    .line 23
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    new-array v1, v1, [Ljava/lang/String;

    .line 27
    aput-object p1, v1, v4

    .line 29
    invoke-virtual {v0, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 32
    move-result p1

    .line 33
    :goto_20
    int-to-long v0, p1

    .line 34
    return-wide v0

    .line 35
    :cond_22
    new-instance v0, Landroid/content/ContentValues;

    .line 37
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 40
    const-string v5, "local_file_id"

    .line 42
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 45
    const-string v5, "local_parent_id"

    .line 47
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 50
    const-string v5, "local_file_path"

    .line 52
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 55
    const-string v5, "local_file_name"

    .line 57
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v5

    .line 64
    const-string v6, "local_file_size"

    .line 66
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v5

    .line 73
    const-string v6, "local_modify_time"

    .line 75
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string v5, "local_sha1"

    .line 80
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 83
    const-string v5, "local_status"

    .line 85
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 88
    const-string v5, "transfer_id"

    .line 90
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 93
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v5

    .line 97
    const-string v6, "local_version"

    .line 99
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v5, "target_sync_file_name"

    .line 104
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 107
    const-string v5, "target_sync_parent_id"

    .line 109
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 112
    const-string v5, "target_sync_sha1"

    .line 114
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 117
    const-string v5, "target_revision"

    .line 119
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 122
    iget-object v5, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 124
    new-array v1, v1, [Ljava/lang/String;

    .line 126
    aput-object p1, v1, v4

    .line 128
    invoke-virtual {v5, v3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    move-result p1

    .line 132
    goto :goto_20
.end method

.method public clearData()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    const-string v1, "sync_file_info"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 9
    return-void
.end method

.method public clearLocalAndTargetFileInfo(Ljava/lang/String;)J
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    const-string v1, "local_parent_id"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 14
    const-string v1, "local_file_path"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 19
    const-string v1, "local_file_name"

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v2

    .line 29
    const-string v3, "local_file_size"

    .line 31
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    const-string v3, "local_modify_time"

    .line 36
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    const-string v3, "local_sha1"

    .line 41
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 44
    sget-object v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 46
    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    const-string v4, "local_status"

    .line 52
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v3, "transfer_id"

    .line 57
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 60
    const-string v3, "local_version"

    .line 62
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    const-string v2, "target_sync_sha1"

    .line 67
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 70
    const-string v2, "target_revision"

    .line 72
    const-string v3, "0"

    .line 74
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 79
    const/4 v3, 0x1

    .line 80
    new-array v3, v3, [Ljava/lang/String;

    .line 82
    aput-object p1, v3, v1

    .line 84
    const-string p1, "sync_file_info"

    .line 86
    const-string v1, "local_file_id=?"

    .line 88
    invoke-virtual {v2, p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    move-result p1

    .line 92
    int-to-long v0, p1

    .line 93
    return-wide v0
.end method

.method public close()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mSyncFileDatabaseModel:Lcom/micloud/midrive/database/SyncFileDatabaseModel;

    .line 6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 9
    return-void
.end method

.method public endTransaction()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6
    return-void
.end method

.method public firstDownloadFile(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)J
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    const-string v1, "local_file_id"

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 16
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const-string v2, "local_status"

    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v1, "transfer_id"

    .line 27
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    .line 33
    move-result-object p3

    .line 34
    const-string v1, "target_sync_parent_id"

    .line 36
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    const-string p3, "target_sync_file_name"

    .line 45
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string p2, "target_revision"

    .line 50
    const-string p3, "0"

    .line 52
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    const/4 p3, 0x1

    .line 58
    new-array p3, p3, [Ljava/lang/String;

    .line 60
    const/4 v1, 0x0

    .line 61
    aput-object p1, p3, v1

    .line 63
    const-string p1, "sync_file_info"

    .line 65
    const-string v1, "cloud_file_id=? and local_file_id is NULL"

    .line 67
    invoke-virtual {p2, p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 70
    move-result p1

    .line 71
    int-to-long p1, p1

    .line 72
    return-wide p1
.end method

.method public firstUploadFile(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)J
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    const-string v1, "local_file_id"

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string v1, "local_parent_id"

    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    const-string v1, "local_file_path"

    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    const-string v1, "local_file_name"

    .line 38
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    .line 44
    move-result-wide v1

    .line 45
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    move-result-object p1

    .line 49
    const-string v1, "local_file_size"

    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 57
    move-result-wide v1

    .line 58
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    move-result-object p1

    .line 62
    const-string v1, "local_modify_time"

    .line 64
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 70
    move-result-wide v1

    .line 71
    invoke-direct {p0, v1, v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->generateGroupId(J)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    const-string v1, "group_id"

    .line 77
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    const-string v1, "local_sha1"

    .line 86
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 91
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    const-string v1, "local_status"

    .line 97
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string p1, "transfer_id"

    .line 102
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    const-string p3, "target_sync_parent_id"

    .line 111
    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    const-string p2, "target_sync_file_name"

    .line 120
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    const-string p2, "sync_file_info"

    .line 127
    const/4 p3, 0x0

    .line 128
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 131
    move-result-wide p1

    .line 132
    return-wide p1
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    const-string v1, "sync_data_account_key"

    .line 5
    invoke-static {v0, v1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->queryAccountOrNull(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/accounts/Account;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public insertLocalAndTargetFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)J
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    const-string v1, "local_file_id"

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    const-string v2, "local_parent_id"

    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    const-string v2, "local_file_path"

    .line 29
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    const-string v2, "local_file_name"

    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    .line 44
    move-result-wide v1

    .line 45
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    move-result-object v1

    .line 49
    const-string v2, "local_file_size"

    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 57
    move-result-wide v1

    .line 58
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    move-result-object v1

    .line 62
    const-string v2, "local_modify_time"

    .line 64
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 70
    move-result-wide v1

    .line 71
    invoke-direct {p0, v1, v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->generateGroupId(J)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    const-string v2, "group_id"

    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    .line 83
    move-result-object p2

    .line 84
    const-string v1, "local_sha1"

    .line 86
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 91
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 94
    move-result-object p2

    .line 95
    const-string v1, "local_status"

    .line 97
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    .line 103
    move-result-object p2

    .line 104
    const-string v1, "target_sync_parent_id"

    .line 106
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncSha1()Ljava/lang/String;

    .line 112
    move-result-object p2

    .line 113
    const-string v1, "target_sync_sha1"

    .line 115
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    .line 121
    move-result-object p2

    .line 122
    const-string p3, "target_sync_file_name"

    .line 124
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string p2, "target_revision"

    .line 129
    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 134
    const/4 p3, 0x1

    .line 135
    new-array p3, p3, [Ljava/lang/String;

    .line 137
    const/4 p4, 0x0

    .line 138
    aput-object p1, p3, p4

    .line 140
    const-string p1, "sync_file_info"

    .line 142
    const-string p4, "cloud_file_id=? and local_file_id is NULL"

    .line 144
    invoke-virtual {p2, p1, v0, p4, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    move-result p1

    .line 148
    int-to-long p1, p1

    .line 149
    return-wide p1
.end method

.method public insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    const-string v1, "local_file_id"

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string v1, "local_parent_id"

    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    const-string v1, "local_file_path"

    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    const-string v1, "local_file_name"

    .line 38
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    .line 44
    move-result-wide v1

    .line 45
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    move-result-object p1

    .line 49
    const-string v1, "local_file_size"

    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 57
    move-result-wide v1

    .line 58
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    move-result-object p1

    .line 62
    const-string v1, "local_modify_time"

    .line 64
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 70
    move-result-wide v1

    .line 71
    invoke-direct {p0, v1, v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->generateGroupId(J)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    const-string v1, "group_id"

    .line 77
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    const-string p2, "local_sha1"

    .line 86
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 91
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    const-string p2, "local_status"

    .line 97
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 102
    const-string p2, "sync_file_info"

    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 108
    move-result-wide p1

    .line 109
    return-wide p1
.end method

.method public insertOrUpdateCloudFileInfo(Lcom/micloud/midrive/infos/SyncCloudFileInfo;)J
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    new-instance v2, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 9
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 11
    const-string v1, "cloud_file_id"

    .line 13
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 18
    const-string v1, "cloud_file_name"

    .line 20
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-wide v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "cloud_file_size"

    .line 31
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    .line 36
    const-string v1, "cloud_parent_id"

    .line 38
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    .line 43
    const-string v1, "cloud_revision"

    .line 45
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    .line 50
    const-string v1, "cloud_sha1"

    .line 52
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 57
    iget-object v1, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    .line 59
    invoke-static {v0, v1}, Lcom/micloud/midrive/infos/CloudFileType;->transferToLocalTypeIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    const-string v1, "cloud_type"

    .line 65
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->label:Ljava/lang/String;

    .line 70
    const-string v1, "cloud_label"

    .line 72
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-wide v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->createTime:J

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    move-result-object v0

    .line 81
    const-string v1, "cloud_create_time"

    .line 83
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    iget-wide v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->modifyTime:J

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    move-result-object v0

    .line 92
    const-string v1, "cloud_modify_time"

    .line 94
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    iget-wide v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->localCreateTime:J

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    move-result-object v0

    .line 103
    const-string v1, "cloud_local_create_time"

    .line 105
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    iget-wide v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->localModifyTime:J

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    move-result-object v0

    .line 114
    const-string v1, "cloud_local_modify_time"

    .line 116
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->status:Ljava/lang/String;

    .line 121
    const-string v1, "cloud_status"

    .line 123
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->privacyStatus:Ljava/lang/String;

    .line 128
    const-string v1, "cloud_privacy_status"

    .line 130
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    .line 135
    const-string v1, "folder"

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_99

    .line 143
    iget-wide v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->modifyTime:J

    .line 145
    invoke-direct {p0, v0, v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->generateGroupId(J)Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    const-string v1, "group_id"

    .line 151
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_99
    iget-object v0, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 156
    invoke-direct {p0, v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->shouldUpdateCloudFileInfo(Ljava/lang/String;)Z

    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_b9

    .line 162
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 164
    const/4 v1, 0x2

    .line 165
    new-array v4, v1, [Ljava/lang/String;

    .line 167
    const/4 v1, 0x0

    .line 168
    iget-object p1, p1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 170
    aput-object p1, v4, v1

    .line 172
    const/4 v1, 0x1

    .line 173
    aput-object p1, v4, v1

    .line 175
    const/4 v5, 0x5

    .line 176
    const-string v1, "sync_file_info"

    .line 178
    const-string v3, "cloud_file_id=? or local_file_id=?"

    .line 180
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    .line 183
    move-result p1

    .line 184
    int-to-long v0, p1

    .line 185
    return-wide v0

    .line 186
    :cond_b9
    iget-object p1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 188
    const/4 v0, 0x0

    .line 189
    const/4 v1, 0x5

    .line 190
    const-string v3, "sync_file_info"

    .line 192
    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 195
    move-result-wide v0

    .line 196
    return-wide v0
.end method

.method public queryAllFileCount()I
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    const/4 v1, 0x3

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    const-string v2, "PRIVACY"

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v1, v3

    .line 14
    const/4 v2, 0x1

    .line 15
    const-string v4, "folder"

    .line 17
    aput-object v4, v1, v2

    .line 19
    sget-object v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 21
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    const/4 v4, 0x2

    .line 26
    aput-object v2, v1, v4

    .line 28
    const-string v2, "select count(*) from sync_file_info where (cloud_status not in (\'deleted\',\'purged\') and cloud_privacy_status !=?  and cloud_type !=?  and( local_status is NULL  or local_status !=?))"

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 33
    move-result-object v0

    .line 34
    :try_start_21
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2f

    .line 40
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 43
    move-result v1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_33

    .line 44
    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 47
    return v1

    .line 48
    :cond_2f
    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 51
    return v3

    .line 52
    :catchall_33
    move-exception v1

    .line 53
    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 56
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

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    const-string v2, "select * from sync_file_info where local_file_id is not NULL"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 14
    move-result-object v0

    .line 15
    :try_start_e
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    :goto_13
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_21

    .line 26
    invoke-direct {p0, v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_25

    .line 33
    goto :goto_13

    .line 34
    :cond_21
    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 37
    return-object v1

    .line 38
    :catchall_25
    move-exception v1

    .line 39
    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 42
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

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    const-string v0, "select * from sync_file_info where local_file_id is not NULL and (local_status =?  or local_file_name is NULL  or cloud_file_id is NULL  or local_file_name != target_sync_file_name or cloud_revision != target_revision or local_parent_id != target_sync_parent_id or local_sha1 != target_sync_sha1) and local_status in (\'"

    .line 6
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "\',\'"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    sget-object v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    sget-object v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    sget-object v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "\');"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 60
    const/4 v3, 0x1

    .line 61
    new-array v3, v3, [Ljava/lang/String;

    .line 63
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    const/4 v4, 0x0

    .line 68
    aput-object v2, v3, v4

    .line 70
    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 73
    move-result-object v0

    .line 74
    :try_start_49
    new-instance v1, Ljava/util/ArrayList;

    .line 76
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    :goto_4e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_5c

    .line 85
    invoke-direct {p0, v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catchall {:try_start_49 .. :try_end_5b} :catchall_60

    .line 92
    goto :goto_4e

    .line 93
    :cond_5c
    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 96
    return-object v1

    .line 97
    :catchall_60
    move-exception v1

    .line 98
    invoke-static {v0}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 101
    throw v1
.end method

.method public queryCloudFilePathByCloudFileId(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    const-string v0, "0"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    const-string v2, ""

    .line 12
    if-eqz v1, :cond_e

    .line 14
    return-object v2

    .line 15
    :cond_e
    const-string v1, "select * from sync_file_info where cloud_file_id=?"

    .line 17
    :goto_10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_5f

    .line 23
    const/4 v3, 0x0

    .line 24
    :try_start_17
    iget-object v4, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    const/4 v5, 0x1

    .line 27
    new-array v5, v5, [Ljava/lang/String;

    .line 29
    const/4 v6, 0x0

    .line 30
    aput-object p1, v5, v6

    .line 32
    invoke-virtual {v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_56

    .line 42
    const-string p1, "cloud_file_name"

    .line 44
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 47
    move-result p1

    .line 48
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    const-string v4, "cloud_parent_id"

    .line 54
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 57
    move-result v4

    .line 58
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v2
    :try_end_51
    .catchall {:try_start_17 .. :try_end_51} :catchall_5a

    .line 82
    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 85
    move-object p1, v4

    .line 86
    goto :goto_10

    .line 87
    :cond_56
    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 90
    return-object v2

    .line 91
    :catchall_5a
    move-exception p1

    .line 92
    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 95
    throw p1

    .line 96
    :cond_5f
    return-object v2
.end method

.method public queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    const-string v0, "0"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    const-string v2, ""

    .line 12
    if-eqz v1, :cond_e

    .line 14
    return-object v2

    .line 15
    :cond_e
    const-string v1, "select * from sync_file_info where cloud_file_id=?"

    .line 17
    :goto_10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_5f

    .line 23
    const/4 v3, 0x0

    .line 24
    :try_start_17
    iget-object v4, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    const/4 v5, 0x1

    .line 27
    new-array v5, v5, [Ljava/lang/String;

    .line 29
    const/4 v6, 0x0

    .line 30
    aput-object p1, v5, v6

    .line 32
    invoke-virtual {v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_56

    .line 42
    const-string p1, "cloud_file_name"

    .line 44
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 47
    move-result p1

    .line 48
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    const-string v4, "cloud_parent_id"

    .line 54
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 57
    move-result v4

    .line 58
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v6, "/"

    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v2
    :try_end_51
    .catchall {:try_start_17 .. :try_end_51} :catchall_5a

    .line 82
    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 85
    move-object p1, v4

    .line 86
    goto :goto_10

    .line 87
    :cond_56
    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 90
    return-object v2

    .line 91
    :catchall_5a
    move-exception p1

    .line 92
    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 95
    throw p1

    .line 96
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

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    const-string v1, "0"

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_16

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    return-object p1

    .line 23
    :cond_16
    const-string v2, "select * from sync_file_info where cloud_file_id=?"

    .line 25
    :goto_18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_65

    .line 31
    const/4 v3, 0x0

    .line 32
    :try_start_1f
    iget-object v4, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    const/4 v5, 0x1

    .line 35
    new-array v5, v5, [Ljava/lang/String;

    .line 37
    const/4 v6, 0x0

    .line 38
    aput-object p1, v5, v6

    .line 40
    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_5c

    .line 50
    const-string p1, "cloud_file_name"

    .line 52
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 55
    move-result p1

    .line 56
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    const-string v4, "cloud_file_id"

    .line 62
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 65
    move-result v4

    .line 66
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 70
    const-string v5, "cloud_parent_id"

    .line 72
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 75
    move-result v5

    .line 76
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    move-result-object v5

    .line 80
    new-instance v6, Lcom/micloud/midrive/infos/FolderParentInfo;

    .line 82
    invoke-direct {v6, v4, p1}, Lcom/micloud/midrive/infos/FolderParentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_57
    .catchall {:try_start_1f .. :try_end_57} :catchall_60

    .line 88
    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    move-object p1, v5

    .line 92
    goto :goto_18

    .line 93
    :cond_5c
    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 96
    goto :goto_65

    .line 97
    :catchall_60
    move-exception p1

    .line 98
    invoke-static {v3}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 101
    throw p1

    .line 102
    :cond_65
    :goto_65
    new-instance p1, Ljava/util/ArrayList;

    .line 104
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
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

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "select distinct group_id from sync_file_info where group_id<?"

    const-string v1, " and (cloud_status is NULL  or cloud_status not in (\'deleted\',\'purged\')) and group_id is not NULL and cloud_file_id is not NULL and (cloud_privacy_status is NULL  or cloud_privacy_status != ?) and (local_status is NULL  or local_status!=?)"

    .line 3
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_12
    const-string v0, "select distinct group_id from sync_file_info where  (cloud_status is NULL  or cloud_status not in (\'deleted\',\'purged\')) and group_id is not NULL and cloud_file_id is not NULL and (cloud_privacy_status is NULL  or cloud_privacy_status != ?) and (local_status is NULL  or local_status!=?)"

    .line 4
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " order by group_id desc limit "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
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

    .line 6
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

    .line 7
    :goto_52
    invoke-virtual {v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :goto_5b
    :try_start_5b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 10
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryGroupId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catchall {:try_start_5b .. :try_end_68} :catchall_6d

    goto :goto_5b

    .line 11
    :cond_69
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p2

    :catchall_6d
    move-exception p2

    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 12
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

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    if-eqz p2, :cond_8

    .line 6
    const-string p2, "select * from sync_file_info where (cloud_status not in (\'deleted\',\'purged\') and cloud_privacy_status !=?  and cloud_type !=?  and( local_status is NULL  or local_status !=?)) order by max(cloud_modify_time , local_modify_time) desc limit ?"

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    const-string p2, "select * from sync_file_info where (cloud_status not in (\'deleted\',\'purged\') and cloud_privacy_status !=?  and cloud_type !=?  and( local_status is NULL  or local_status !=?)) order by cloud_modify_time desc limit ?"

    .line 11
    :goto_a
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 13
    const/4 v1, 0x4

    .line 14
    new-array v1, v1, [Ljava/lang/String;

    .line 16
    const/4 v2, 0x0

    .line 17
    const-string v3, "PRIVACY"

    .line 19
    aput-object v3, v1, v2

    .line 21
    const/4 v2, 0x1

    .line 22
    const-string v3, "folder"

    .line 24
    aput-object v3, v1, v2

    .line 26
    const/4 v2, 0x2

    .line 27
    sget-object v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 29
    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    aput-object v3, v1, v2

    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    aput-object p1, v1, v2

    .line 42
    invoke-virtual {v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 45
    move-result-object p1

    .line 46
    :try_start_2d
    new-instance p2, Ljava/util/ArrayList;

    .line 48
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    :goto_32
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_40

    .line 57
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_2d .. :try_end_3f} :catchall_44

    .line 64
    goto :goto_32

    .line 65
    :cond_40
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 68
    return-object p2

    .line 69
    :catchall_44
    move-exception p2

    .line 70
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 73
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

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v1, Ljava/util/ArrayDeque;

    .line 11
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    .line 17
    :cond_10
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_3b

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryLocalFilesByParentId(Ljava/lang/String;)Ljava/util/List;

    .line 32
    move-result-object v2

    .line 33
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryFolderIdsByParentId(Ljava/lang/String;)Ljava/util/List;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p1

    .line 44
    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_10

    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/String;

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    .line 59
    goto :goto_2b

    .line 60
    :cond_3b
    return-object v0
.end method

.method public queryTotalFileCountByParentId(Ljava/lang/String;)I
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    const/4 v1, 0x4

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p1, v1, v2

    .line 12
    const/4 v3, 0x1

    .line 13
    aput-object p1, v1, v3

    .line 15
    const/4 p1, 0x2

    .line 16
    const-string v3, "PRIVACY"

    .line 18
    aput-object v3, v1, p1

    .line 20
    sget-object p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 22
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const/4 v3, 0x3

    .line 27
    aput-object p1, v1, v3

    .line 29
    const-string p1, "select count(*) from sync_file_info where (cloud_parent_id=? or local_parent_id=?) and cloud_privacy_status != ? and (cloud_status not in (\'deleted\',\'purged\') or local_status!=?)"

    .line 31
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 34
    move-result-object p1

    .line 35
    :try_start_22
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_30

    .line 41
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 44
    move-result v0
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_34

    .line 45
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 48
    return v0

    .line 49
    :cond_30
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 52
    return v2

    .line 53
    :catchall_34
    move-exception v0

    .line 54
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 57
    throw v0
.end method

.method public queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p1, v1, v2

    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object p1, v1, v2

    .line 15
    const-string p1, "select * from sync_file_info where cloud_file_id=? or local_file_id=?;"

    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 20
    move-result-object p1

    .line 21
    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_22

    .line 27
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 30
    move-result-object v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_27

    .line 31
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 34
    return-object v0

    .line 35
    :cond_22
    const/4 v0, 0x0

    .line 36
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 39
    return-object v0

    .line 40
    :catchall_27
    move-exception v0

    .line 41
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 44
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

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_20

    .line 10
    const-string v0, "select * from sync_file_info where group_id=? and cloud_file_id is not NULL  and (cloud_privacy_status is NULL  or cloud_privacy_status != ?) and (cloud_status is NULL  or cloud_status not in (\'deleted\',\'purged\')) and (local_status is NULL  or local_status!=?)"

    .line 12
    const-string v1, " order by "

    .line 14
    invoke-static {v0, v1, p2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object p2

    .line 18
    if-eqz p3, :cond_16

    .line 20
    const-string p3, " asc;"

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    const-string p3, " desc;"

    .line 25
    :goto_18
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    const-string p2, "select * from sync_file_info where group_id=? and cloud_file_id is not NULL  and (cloud_privacy_status is NULL  or cloud_privacy_status != ?) and (cloud_status is NULL  or cloud_status not in (\'deleted\',\'purged\')) and (local_status is NULL  or local_status!=?);"

    .line 35
    :goto_22
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    const/4 v0, 0x3

    .line 38
    new-array v0, v0, [Ljava/lang/String;

    .line 40
    const/4 v1, 0x0

    .line 41
    aput-object p1, v0, v1

    .line 43
    const/4 p1, 0x1

    .line 44
    const-string v1, "PRIVACY"

    .line 46
    aput-object v1, v0, p1

    .line 48
    const/4 p1, 0x2

    .line 49
    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 51
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    aput-object v1, v0, p1

    .line 57
    invoke-virtual {p3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 60
    move-result-object p1

    .line 61
    new-instance p2, Ljava/util/ArrayList;

    .line 63
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    :goto_41
    :try_start_41
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 69
    move-result p3

    .line 70
    if-eqz p3, :cond_4f

    .line 72
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 75
    move-result-object p3

    .line 76
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_53

    .line 79
    goto :goto_41

    .line 80
    :cond_4f
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    return-object p2

    .line 84
    :catchall_53
    move-exception p2

    .line 85
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 88
    throw p2
.end method

.method public queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p1, v1, v2

    .line 12
    const-string p1, "select * from sync_file_info where local_file_id=?;"

    .line 14
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    move-result-object p1

    .line 18
    :try_start_11
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1f

    .line 24
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 27
    move-result-object v0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_24

    .line 28
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 31
    return-object v0

    .line 32
    :cond_1f
    const/4 v0, 0x0

    .line 33
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 36
    return-object v0

    .line 37
    :catchall_24
    move-exception v0

    .line 38
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 41
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

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_20

    .line 10
    const-string v0, "select * from sync_file_info where (cloud_parent_id=? or local_parent_id=?) and (cloud_privacy_status is NULL  or cloud_privacy_status != ?) and (cloud_status is NULL  or cloud_status not in (\'deleted\',\'purged\')) and (local_status is NULL  or local_status!=?)"

    .line 12
    const-string v1, " order by "

    .line 14
    invoke-static {v0, v1, p2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object p2

    .line 18
    if-eqz p3, :cond_16

    .line 20
    const-string p3, " asc;"

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    const-string p3, " desc;"

    .line 25
    :goto_18
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    const-string p2, "select * from sync_file_info where (cloud_parent_id=? or local_parent_id=?) and (cloud_privacy_status is NULL  or cloud_privacy_status != ?) and (cloud_status is NULL  or cloud_status not in (\'deleted\',\'purged\')) and (local_status is NULL  or local_status!=?);"

    .line 35
    :goto_22
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    const/4 v0, 0x4

    .line 38
    new-array v0, v0, [Ljava/lang/String;

    .line 40
    const/4 v1, 0x0

    .line 41
    aput-object p1, v0, v1

    .line 43
    const/4 v1, 0x1

    .line 44
    aput-object p1, v0, v1

    .line 46
    const/4 p1, 0x2

    .line 47
    const-string v1, "PRIVACY"

    .line 49
    aput-object v1, v0, p1

    .line 51
    const/4 p1, 0x3

    .line 52
    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 54
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    aput-object v1, v0, p1

    .line 60
    invoke-virtual {p3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 63
    move-result-object p1

    .line 64
    new-instance p2, Ljava/util/ArrayList;

    .line 66
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    :goto_44
    :try_start_44
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 72
    move-result p3

    .line 73
    if-eqz p3, :cond_52

    .line 75
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 78
    move-result-object p3

    .line 79
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_56

    .line 82
    goto :goto_44

    .line 83
    :cond_52
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 86
    return-object p2

    .line 87
    :catchall_56
    move-exception p2

    .line 88
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    throw p2
.end method

.method public queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p1, v1, v2

    .line 12
    const-string p1, "select * from sync_file_info where transfer_id=?;"

    .line 14
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    move-result-object p1

    .line 18
    :try_start_11
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1f

    .line 24
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 27
    move-result-object v0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_24

    .line 28
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 31
    return-object v0

    .line 32
    :cond_1f
    const/4 v0, 0x0

    .line 33
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 36
    return-object v0

    .line 37
    :catchall_24
    move-exception v0

    .line 38
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 41
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

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "select * from sync_file_info where cloud_status not in (\'deleted\',\'purged\') and (cloud_privacy_status is NULL  or cloud_privacy_status != \'PRIVACY\')"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_4f

    .line 17
    const-string v1, " and ("

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v2, "(local_file_name IS NULL and cloud_file_name like \'%"

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "%\')"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, " or "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const-string v3, "(local_file_name IS NOT NULL and local_file_name like \'%"

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string p1, ")"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_4f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_6e

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    const-string v1, " and cloud_type=\'"

    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string p2, "\'"

    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_6e
    const-string p1, " order by cloud_modify_time desc;"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object p1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p2

    .line 122
    const/4 v0, 0x0

    .line 123
    new-array v0, v0, [Ljava/lang/String;

    .line 125
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 128
    move-result-object p1

    .line 129
    :try_start_80
    new-instance p2, Ljava/util/ArrayList;

    .line 131
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    :goto_85
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_93

    .line 140
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfo(Landroid/database/Cursor;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_92
    .catchall {:try_start_80 .. :try_end_92} :catchall_97

    .line 147
    goto :goto_85

    .line 148
    :cond_93
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 151
    return-object p2

    .line 152
    :catchall_97
    move-exception p2

    .line 153
    invoke-static {p1}, Lcom/micloud/midrive/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 156
    throw p2
.end method

.method public setTransactionSuccessful()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 6
    return-void
.end method

.method public updateAccount(Landroid/accounts/Account;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    const-string v1, "sync_data_account_key"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->updateAccount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/accounts/Account;)J

    .line 8
    return-void
.end method

.method public updateDownloadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "local_parent_id"

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "local_file_path"

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string v2, "local_file_name"

    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    .line 39
    move-result-wide v1

    .line 40
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    move-result-object v1

    .line 44
    const-string v2, "local_file_size"

    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 52
    move-result-wide v1

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    move-result-object v1

    .line 57
    const-string v2, "local_modify_time"

    .line 59
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    const-string v2, "local_sha1"

    .line 68
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    .line 74
    move-result-object p2

    .line 75
    const-string v1, "target_sync_sha1"

    .line 77
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 82
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 86
    const-string v1, "local_status"

    .line 88
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string p2, "transfer_id"

    .line 93
    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 98
    const/4 v1, 0x1

    .line 99
    new-array v1, v1, [Ljava/lang/String;

    .line 101
    const/4 v2, 0x0

    .line 102
    aput-object p1, v1, v2

    .line 104
    const-string p1, "sync_file_info"

    .line 106
    const-string v2, "transfer_id=?"

    .line 108
    invoke-virtual {p2, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    move-result p1

    .line 112
    int-to-long p1, p1

    .line 113
    return-wide p1
.end method

.method public updateInfoWhenSyncComplete()J
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryAllSyncCompleteFiles()Ljava/util/List;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/util/HashMap;

    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    const-wide/16 v2, 0x0

    .line 19
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_3d

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 31
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 34
    sget-object v5, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 36
    invoke-virtual {v5}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 39
    move-result-object v5

    .line 40
    const-string v6, "local_status"

    .line 42
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v5, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 47
    iget-object v5, v5, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    .line 49
    const-string v6, "target_revision"

    .line 51
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 56
    invoke-virtual {p0, v4, v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;)J

    .line 59
    move-result-wide v4

    .line 60
    add-long/2addr v2, v4

    .line 61
    goto :goto_12

    .line 62
    :cond_3d
    return-wide v2
.end method

.method public updateLocalFileIdByCloudFileId(Ljava/lang/String;)J
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    const-string v1, "local_file_id"

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 16
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const-string v2, "local_status"

    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    const/4 v2, 0x1

    .line 28
    new-array v2, v2, [Ljava/lang/String;

    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object p1, v2, v3

    .line 33
    const-string p1, "sync_file_info"

    .line 35
    const-string v3, "cloud_file_id=? and local_file_id is NULL"

    .line 37
    invoke-virtual {v1, p1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 40
    move-result p1

    .line 41
    int-to-long v0, p1

    .line 42
    return-wide v0
.end method

.method public updateLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "local_parent_id"

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "local_file_path"

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string v2, "local_file_name"

    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    .line 39
    move-result-wide v1

    .line 40
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    move-result-object v1

    .line 44
    const-string v2, "local_file_size"

    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 52
    move-result-wide v1

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    move-result-object v1

    .line 57
    const-string v2, "local_modify_time"

    .line 59
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    const-string v2, "local_sha1"

    .line 68
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-wide v1, p2, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    .line 73
    const-wide/16 v3, 0x1

    .line 75
    add-long/2addr v1, v3

    .line 76
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    move-result-object v1

    .line 80
    const-string v2, "local_version"

    .line 82
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    iget-object v1, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 87
    const/4 v2, 0x2

    .line 88
    new-array v2, v2, [Ljava/lang/String;

    .line 90
    const/4 v3, 0x0

    .line 91
    aput-object p1, v2, v3

    .line 93
    iget-wide p1, p2, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    .line 95
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    const/4 p2, 0x1

    .line 100
    aput-object p1, v2, p2

    .line 102
    const-string p1, "sync_file_info"

    .line 104
    const-string p2, "local_file_id=? and local_version=?"

    .line 106
    invoke-virtual {v1, p1, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    move-result p1

    .line 110
    int-to-long p1, p1

    .line 111
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

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3
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

    .line 4
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_10

    .line 7
    :cond_2c
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 8
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

    .line 9
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 10
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 11
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

    .line 12
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_10

    .line 15
    :cond_2c
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 16
    :cond_30
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "local_file_id=?"

    .line 18
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 19
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

    .line 20
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 21
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, " and "

    if-eqz v4, :cond_66

    const-string v3, " is NULL"

    .line 22
    invoke-static {p1, v5, v2, v3}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_66
    const-string v4, "=?"

    .line 23
    invoke-static {p1, v5, v2, v4}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 25
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

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    const-string v1, "local_status"

    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance p2, Ljava/util/ArrayList;

    .line 20
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    if-eqz p3, :cond_25

    .line 28
    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    const-string p1, "local_file_id=? and local_version=?"

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    const-string p1, "local_file_id=?"

    .line 40
    :goto_27
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    const/4 v1, 0x0

    .line 43
    new-array v1, v1, [Ljava/lang/String;

    .line 45
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 48
    move-result-object p2

    .line 49
    check-cast p2, [Ljava/lang/String;

    .line 51
    const-string v1, "sync_file_info"

    .line 53
    invoke-virtual {p3, v1, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 56
    move-result p1

    .line 57
    int-to-long p1, p1

    .line 58
    return-wide p1
.end method

.method public updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)J
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncParentId()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "target_sync_parent_id"

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncName()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "target_sync_file_name"

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTargetInfo;->getTargetSyncSha1()Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    const-string v1, "target_sync_sha1"

    .line 33
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    .line 38
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    if-eqz p3, :cond_37

    .line 46
    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    const-string p1, "local_file_id=? and local_version=?"

    .line 55
    goto :goto_39

    .line 56
    :cond_37
    const-string p1, "local_file_id=?"

    .line 58
    :goto_39
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 60
    const/4 v1, 0x0

    .line 61
    new-array v1, v1, [Ljava/lang/String;

    .line 63
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 66
    move-result-object p2

    .line 67
    check-cast p2, [Ljava/lang/String;

    .line 69
    const-string v1, "sync_file_info"

    .line 71
    invoke-virtual {p3, v1, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    move-result p1

    .line 75
    int-to-long p1, p1

    .line 76
    return-wide p1
.end method

.method public updateTargetRevision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)J
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    const-string v1, "target_revision"

    .line 11
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    .line 16
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    if-eqz p3, :cond_21

    .line 24
    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    const-string p1, "local_file_id=? and local_version=?"

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    const-string p1, "local_file_id=?"

    .line 36
    :goto_23
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    const/4 v1, 0x0

    .line 39
    new-array v1, v1, [Ljava/lang/String;

    .line 41
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 44
    move-result-object p2

    .line 45
    check-cast p2, [Ljava/lang/String;

    .line 47
    const-string v1, "sync_file_info"

    .line 49
    invoke-virtual {p3, v1, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 52
    move-result p1

    .line 53
    int-to-long p1, p1

    .line 54
    return-wide p1
.end method

.method public updateTransferId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)J
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    const-string v1, "transfer_id"

    .line 11
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    .line 16
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    if-eqz p3, :cond_21

    .line 24
    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    const-string p1, "local_file_id=? and local_version=?"

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    const-string p1, "local_file_id=?"

    .line 36
    :goto_23
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    const/4 v1, 0x0

    .line 39
    new-array v1, v1, [Ljava/lang/String;

    .line 41
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 44
    move-result-object p2

    .line 45
    check-cast p2, [Ljava/lang/String;

    .line 47
    const-string v1, "sync_file_info"

    .line 49
    invoke-virtual {p3, v1, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 52
    move-result p1

    .line 53
    int-to-long p1, p1

    .line 54
    return-wide p1
.end method

.method public updateUploadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncCloudFileInfo;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J
    .registers 14

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->checkDatabaseAvailableState()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 10
    const-string v1, "transfer_id=?"

    .line 12
    const-string v2, "target_sync_sha1"

    .line 14
    const-string v3, "local_status"

    .line 16
    const-string v4, "local_file_id"

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    const-string v7, "sync_file_info"

    .line 22
    if-nez v0, :cond_aa

    .line 24
    new-instance v0, Landroid/content/ContentValues;

    .line 26
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 29
    iget-object v8, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    const-string v8, "local_parent_id"

    .line 40
    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 46
    move-result-object v4

    .line 47
    const-string v8, "local_file_path"

    .line 49
    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getName()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    const-string v8, "local_file_name"

    .line 58
    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSize()J

    .line 64
    move-result-wide v8

    .line 65
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    move-result-object v4

    .line 69
    const-string v8, "local_file_size"

    .line 71
    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 74
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 77
    move-result-wide v8

    .line 78
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    move-result-object v4

    .line 82
    const-string v8, "local_modify_time"

    .line 84
    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getModifyTime()J

    .line 90
    move-result-wide v8

    .line 91
    invoke-direct {p0, v8, v9}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->generateGroupId(J)Ljava/lang/String;

    .line 94
    move-result-object v4

    .line 95
    const-string v8, "group_id"

    .line 97
    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    .line 103
    move-result-object p3

    .line 104
    const-string v4, "local_sha1"

    .line 106
    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 111
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 114
    move-result-object p3

    .line 115
    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p3, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    .line 120
    const-string v3, "target_sync_parent_id"

    .line 122
    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object p3, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p3, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 132
    const-string v2, "target_sync_file_name"

    .line 134
    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object p3, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    .line 139
    const-string v2, "target_revision"

    .line 141
    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 146
    new-array v2, v6, [Ljava/lang/String;

    .line 148
    iget-object p2, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 150
    aput-object p2, v2, v5

    .line 152
    const-string p2, "cloud_file_id=?"

    .line 154
    invoke-virtual {p3, v7, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    move-result p2

    .line 158
    iget-object p3, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 160
    new-array v0, v6, [Ljava/lang/String;

    .line 162
    aput-object p1, v0, v5

    .line 164
    invoke-virtual {p3, v7, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    move-result p1

    .line 168
    add-int/2addr p2, p1

    .line 169
    int-to-long p1, p2

    .line 170
    return-wide p1

    .line 171
    :cond_aa
    new-instance v0, Landroid/content/ContentValues;

    .line 173
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 176
    iget-object p2, p2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD_FINISH:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 183
    invoke-virtual {p2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 186
    move-result-object p2

    .line 187
    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getSha1()Ljava/lang/String;

    .line 193
    move-result-object p2

    .line 194
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string p2, "transfer_id"

    .line 199
    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 202
    iget-object p2, p0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 204
    new-array p3, v6, [Ljava/lang/String;

    .line 206
    aput-object p1, p3, v5

    .line 208
    invoke-virtual {p2, v7, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 211
    move-result p1

    .line 212
    int-to-long p1, p1

    .line 213
    return-wide p1
.end method
