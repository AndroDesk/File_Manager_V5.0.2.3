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

.field private static final DATABASE_VERSION:I

.field public static final TABLE_DOWNLOAD_SESSION_JOB:Ljava/lang/String; = "download_session_job"

.field public static final TABLE_UPLOAD_SESSION_JOB:Ljava/lang/String; = "upload_session_job"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/database/SessionJobDatabaseModel;->DATABASE_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "session.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/micloud/midrive/database/AccountDatabaseModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ( "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "job_key"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT PRIMARY KEY, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "job_info"

    const-string v1, " TEXT, "

    const-string v2, "job_status"

    invoke-static {v0, p2, v1, v2, v1}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "progress"

    const-string v1, " LONG, "

    const-string v2, "add_time"

    invoke-static {v0, p2, v1, v2, v1}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "last_update_time"

    const-string v2, "free_network_only"

    const-string v3, " BOOLEAN, "

    invoke-static {v0, p2, v1, v2, v3}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "auto_sync"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " BOOLEAN );"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private dropSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "upload_session_job"

    invoke-direct {p0, p1, v0}, Lcom/micloud/midrive/database/SessionJobDatabaseModel;->createSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "download_session_job"

    invoke-direct {p0, p1, v0}, Lcom/micloud/midrive/database/SessionJobDatabaseModel;->createSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/micloud/midrive/database/AccountDatabaseModel;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB upgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v0, p3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    const-string p2, "upload_session_job"

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/database/SessionJobDatabaseModel;->dropSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p3, "download_session_job"

    invoke-direct {p0, p1, p3}, Lcom/micloud/midrive/database/SessionJobDatabaseModel;->dropSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/database/SessionJobDatabaseModel;->createSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/micloud/midrive/database/SessionJobDatabaseModel;->createSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method
