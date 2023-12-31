.class public Lcom/micloud/midrive/database/SyncFileDatabaseModel;
.super Lcom/micloud/midrive/database/AccountDatabaseModel;
.source "SyncFileDatabaseModel.java"


# static fields
.field public static final COLUMN_BIGINT_CLOUD_CREATE_TIME:Ljava/lang/String; = "cloud_create_time"

.field public static final COLUMN_BIGINT_CLOUD_FILE_SIZE:Ljava/lang/String; = "cloud_file_size"

.field public static final COLUMN_BIGINT_CLOUD_LOCAL_CREATE_TIME:Ljava/lang/String; = "cloud_local_create_time"

.field public static final COLUMN_BIGINT_CLOUD_LOCAL_MODIFY_TIME:Ljava/lang/String; = "cloud_local_modify_time"

.field public static final COLUMN_BIGINT_CLOUD_MODIFY_TIME:Ljava/lang/String; = "cloud_modify_time"

.field public static final COLUMN_BIGINT_LOCAL_FILE_SIZE:Ljava/lang/String; = "local_file_size"

.field public static final COLUMN_BIGINT_LOCAL_MODIFY_TIME:Ljava/lang/String; = "local_modify_time"

.field public static final COLUMN_BIGINT_LOCAL_VERSION:Ljava/lang/String; = "local_version"

.field public static final COLUMN_INT_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_TEXT_CLOUD_FILE_ID:Ljava/lang/String; = "cloud_file_id"

.field public static final COLUMN_TEXT_CLOUD_FILE_NAME:Ljava/lang/String; = "cloud_file_name"

.field public static final COLUMN_TEXT_CLOUD_LABEL:Ljava/lang/String; = "cloud_label"

.field public static final COLUMN_TEXT_CLOUD_PARENT_ID:Ljava/lang/String; = "cloud_parent_id"

.field public static final COLUMN_TEXT_CLOUD_PRIVACY_STATUS:Ljava/lang/String; = "cloud_privacy_status"

.field public static final COLUMN_TEXT_CLOUD_REVISION:Ljava/lang/String; = "cloud_revision"

.field public static final COLUMN_TEXT_CLOUD_SHA1:Ljava/lang/String; = "cloud_sha1"

.field public static final COLUMN_TEXT_CLOUD_STATUS:Ljava/lang/String; = "cloud_status"

.field public static final COLUMN_TEXT_CLOUD_TYPE:Ljava/lang/String; = "cloud_type"

.field public static final COLUMN_TEXT_GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final COLUMN_TEXT_LOCAL_FILE_ID:Ljava/lang/String; = "local_file_id"

.field public static final COLUMN_TEXT_LOCAL_FILE_NAME:Ljava/lang/String; = "local_file_name"

.field public static final COLUMN_TEXT_LOCAL_FILE_PATH:Ljava/lang/String; = "local_file_path"

.field public static final COLUMN_TEXT_LOCAL_PARENT_ID:Ljava/lang/String; = "local_parent_id"

.field public static final COLUMN_TEXT_LOCAL_SHA1:Ljava/lang/String; = "local_sha1"

.field public static final COLUMN_TEXT_LOCAL_STATUS:Ljava/lang/String; = "local_status"

.field public static final COLUMN_TEXT_TARGET_REVISION:Ljava/lang/String; = "target_revision"

.field public static final COLUMN_TEXT_TARGET_SYNC_FILE_NAME:Ljava/lang/String; = "target_sync_file_name"

.field public static final COLUMN_TEXT_TARGET_SYNC_PARENT_ID:Ljava/lang/String; = "target_sync_parent_id"

.field public static final COLUMN_TEXT_TARGET_SYNC_SHA1:Ljava/lang/String; = "target_sync_sha1"

.field public static final COLUMN_TEXT_TRANSFER_ID:Ljava/lang/String; = "transfer_id"

.field public static final DATABASE_NAME:Ljava/lang/String; = "sync_file.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_NAME:Ljava/lang/String; = "sync_file_info"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    const-string v0, "sync_file.db"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/micloud/midrive/database/AccountDatabaseModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 8
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 1
    const-string v0, "CREATE TABLE sync_file_info ( id INTEGER PRIMARY KEY AUTOINCREMENT, cloud_file_id TEXT, cloud_file_name TEXT, cloud_file_size BIGINT DEFAULT 0 NOT NULL, cloud_parent_id TEXT, cloud_revision TEXT, cloud_sha1 TEXT, cloud_type TEXT, cloud_label TEXT, cloud_create_time BIGINT DEFAULT 0 NOT NULL, cloud_modify_time BIGINT DEFAULT 0 NOT NULL, cloud_local_create_time BIGINT DEFAULT 0 NOT NULL, cloud_local_modify_time BIGINT DEFAULT 0 NOT NULL, cloud_status TEXT, cloud_privacy_status TEXT, local_file_id TEXT, local_parent_id TEXT, local_file_path TEXT, local_file_name TEXT, local_file_size BIGINT DEFAULT 0 NOT NULL, local_modify_time BIGINT DEFAULT 0 NOT NULL, local_sha1 TEXT, local_version BIGINT DEFAULT 0 NOT NULL, local_status TEXT, target_revision TEXT, target_sync_parent_id TEXT, target_sync_file_name TEXT, target_sync_sha1 TEXT, transfer_id TEXT, group_id TEXT );"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    const-string v0, "CREATE UNIQUE INDEX cloud_file_id_idx ON sync_file_info (cloud_file_id);"

    .line 8
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 11
    const-string v0, "CREATE INDEX cloud_parent_id_idx ON sync_file_info (cloud_parent_id);"

    .line 13
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 16
    const-string v0, "CREATE INDEX local_file_id_idx ON sync_file_info (local_file_id);"

    .line 18
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    const-string v0, "CREATE INDEX local_parent_id_idx ON sync_file_info (local_parent_id);"

    .line 23
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    const-string v0, "CREATE INDEX local_status_idx ON sync_file_info (local_status);"

    .line 28
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    const-string v0, "CREATE INDEX transfer_id_idx ON sync_file_info (transfer_id);"

    .line 33
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    const-string v0, "CREATE INDEX group_id_idx ON sync_file_info (group_id);"

    .line 38
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 1
    const-string v0, "DROP TABLE IF EXISTS sync_file_info"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/micloud/midrive/database/SyncFileDatabaseModel;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/micloud/midrive/database/AccountDatabaseModel;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v2, "DB upgrade from "

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string p2, " to "

    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    const/4 p3, 0x0

    .line 33
    aput-object p2, v0, p3

    .line 35
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/micloud/midrive/database/SyncFileDatabaseModel;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/micloud/midrive/database/SyncFileDatabaseModel;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    return-void
.end method
