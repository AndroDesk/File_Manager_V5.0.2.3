.class Lcom/android/fileexplorer/dao/db/ScanDaoUtils;
.super Ljava/lang/Object;
.source "ScanDaoUtils.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "scan.db"

.field private static final DB_VERSION:I

.field private static sDaoSession:Lcom/android/fileexplorer/dao/scan/DaoSession;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d99

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/dao/db/ScanDaoUtils;->DB_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDaoSession()Lcom/android/fileexplorer/dao/scan/DaoSession;
    .registers 6

    const-class v0, Lcom/android/fileexplorer/dao/db/ScanDaoUtils;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/dao/db/ScanDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/scan/DaoSession;

    if-nez v1, :cond_24

    new-instance v1, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "scan.db"

    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/dao/scan/DaoMaster;

    invoke-direct {v2, v1}, Lcom/android/fileexplorer/dao/scan/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/scan/DaoMaster;->newSession()Lcom/android/fileexplorer/dao/scan/DaoSession;

    move-result-object v1

    sput-object v1, Lcom/android/fileexplorer/dao/db/ScanDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/scan/DaoSession;

    :cond_24
    sget-object v1, Lcom/android/fileexplorer/dao/db/ScanDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/scan/DaoSession;
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    monitor-exit v0

    return-object v1

    :catchall_28
    move-exception v1

    monitor-exit v0

    throw v1
.end method
