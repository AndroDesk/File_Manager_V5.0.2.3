.class public Lcom/micloud/midrive/database/SessionJobDatabaseModel;
.super Lcom/micloud/midrive/database/AccountDatabaseModel;
.source "SessionJobDatabaseModel.java"


# static fields
.field public static final COLUMN_BOOL_AUTO_SYNC:Ljava/lang/String; = "auto_sync"

.field public static final COLUMN_BOOL_FREE_NETWORK_ONLY:Ljava/lang/String; = "free_network_only"

.field public static final COLUMN_LONG_ADD_TIME:Ljava/lang/String; = "add_time"

.field public static final COLUMN_LONG_LAST_UPDATE_TIME:Ljava/lang/String; = "last_update_time"

.field public static final COLUMN_LONG_PROGRESS:Ljava/lang/String; = "progress"

.field public static final COLUMN_STR_JOB_INFO:Ljava/lang/String; = "job_info"

.field public static final COLUMN_STR_JOB_KEY:Ljava/lang/String; = "job_key"

.field public static final COLUMN_STR_JOB_STATUS:Ljava/lang/String; = "job_status"

.field public static final DATABASE_NAME:Ljava/lang/String; = "session.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_DOWNLOAD_SESSION_JOB:Ljava/lang/String; = "download_session_job"

.field public static final TABLE_UPLOAD_SESSION_JOB:Ljava/lang/String; = "upload_session_job"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    const-string v0, "session.db"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/micloud/midrive/database/AccountDatabaseModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 8
    return-void
.end method

.method private createSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "CREATE TABLE "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string p2, " ( "

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string p2, "job_key"

    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string p2, " TEXT PRIMARY KEY, "

    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string p2, "job_info"

    .line 31
    const-string v1, " TEXT, "

    .line 33
    const-string v2, "job_status"

    .line 35
    invoke-static {v0, p2, v1, v2, v1}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string p2, "progress"

    .line 40
    const-string v1, " LONG, "

    .line 42
    const-string v2, "add_time"

    .line 44
    invoke-static {v0, p2, v1, v2, v1}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string p2, "last_update_time"

    .line 49
    const-string v2, "free_network_only"

    .line 51
    const-string v3, " BOOLEAN, "

    .line 53
    invoke-static {v0, p2, v1, v2, v3}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string p2, "auto_sync"

    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string p2, " BOOLEAN );"

    .line 63
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private dropSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "DROP TABLE IF EXISTS "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    const-string v0, "upload_session_job"

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/micloud/midrive/database/SessionJobDatabaseModel;->createSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 9
    const-string v0, "download_session_job"

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/micloud/midrive/database/SessionJobDatabaseModel;->createSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 14
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
    const-string p2, "upload_session_job"

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/database/SessionJobDatabaseModel;->dropSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 43
    const-string p3, "download_session_job"

    .line 45
    invoke-direct {p0, p1, p3}, Lcom/micloud/midrive/database/SessionJobDatabaseModel;->dropSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/database/SessionJobDatabaseModel;->createSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1, p3}, Lcom/micloud/midrive/database/SessionJobDatabaseModel;->createSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 54
    return-void
.end method
