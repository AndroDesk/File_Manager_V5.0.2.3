.class Lcom/android/fileexplorer/dao/db/ParseDaoUtils;
.super Ljava/lang/Object;
.source "ParseDaoUtils.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "parse.db"

.field private static final DB_VERSION:I = 0x1

.field private static sDaoSession:Lcom/android/fileexplorer/dao/parse/DaoSession;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDaoSession()Lcom/android/fileexplorer/dao/parse/DaoSession;
    .registers 6

    .line 1
    const-class v0, Lcom/android/fileexplorer/dao/db/ParseDaoUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/dao/db/ParseDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/parse/DaoSession;

    .line 6
    if-nez v1, :cond_23

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;

    .line 14
    const-string v3, "parse.db"

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-direct {v2, v1, v3, v4, v5}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 21
    invoke-virtual {v2}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lcom/android/fileexplorer/dao/parse/DaoMaster;

    .line 27
    invoke-direct {v2, v1}, Lcom/android/fileexplorer/dao/parse/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 30
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/parse/DaoMaster;->newSession()Lcom/android/fileexplorer/dao/parse/DaoSession;

    .line 33
    move-result-object v1

    .line 34
    sput-object v1, Lcom/android/fileexplorer/dao/db/ParseDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/parse/DaoSession;

    .line 36
    :cond_23
    sget-object v1, Lcom/android/fileexplorer/dao/db/ParseDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/parse/DaoSession;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    .line 38
    monitor-exit v0

    .line 39
    return-object v1

    .line 40
    :catchall_27
    move-exception v1

    .line 41
    monitor-exit v0

    .line 42
    throw v1
.end method
