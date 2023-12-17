.class Lcom/android/fileexplorer/dao/db/ScanDaoUtils;
.super Ljava/lang/Object;
.source "ScanDaoUtils.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "scan.db"

.field private static final DB_VERSION:I = 0xf

.field private static sDaoSession:Lcom/android/fileexplorer/dao/scan/DaoSession;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDaoSession()Lcom/android/fileexplorer/dao/scan/DaoSession;
    .registers 6

    .line 1
    const-class v0, Lcom/android/fileexplorer/dao/db/ScanDaoUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/dao/db/ScanDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/scan/DaoSession;

    .line 6
    if-nez v1, :cond_24

    .line 8
    new-instance v1, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "scan.db"

    .line 16
    const/4 v4, 0x0

    .line 17
    const/16 v5, 0xf

    .line 19
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 22
    invoke-virtual {v1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Lcom/android/fileexplorer/dao/scan/DaoMaster;

    .line 28
    invoke-direct {v2, v1}, Lcom/android/fileexplorer/dao/scan/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 31
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/scan/DaoMaster;->newSession()Lcom/android/fileexplorer/dao/scan/DaoSession;

    .line 34
    move-result-object v1

    .line 35
    sput-object v1, Lcom/android/fileexplorer/dao/db/ScanDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/scan/DaoSession;

    .line 37
    :cond_24
    sget-object v1, Lcom/android/fileexplorer/dao/db/ScanDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/scan/DaoSession;
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    .line 39
    monitor-exit v0

    .line 40
    return-object v1

    .line 41
    :catchall_28
    move-exception v1

    .line 42
    monitor-exit v0

    .line 43
    throw v1
.end method
