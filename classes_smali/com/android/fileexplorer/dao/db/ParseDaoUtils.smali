.class Lcom/android/fileexplorer/dao/db/ParseDaoUtils;
.super Ljava/lang/Object;
.source "ParseDaoUtils.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "parse.db"

.field private static final DB_VERSION:I

.field private static sDaoSession:Lcom/android/fileexplorer/dao/parse/DaoSession;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/dao/db/ParseDaoUtils;->DB_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDaoSession()Lcom/android/fileexplorer/dao/parse/DaoSession;
    .registers 6

    const-class v0, Lcom/android/fileexplorer/dao/db/ParseDaoUtils;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/dao/db/ParseDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/parse/DaoSession;

    if-nez v1, :cond_23

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;

    const-string v3, "parse.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v2}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/dao/parse/DaoMaster;

    invoke-direct {v2, v1}, Lcom/android/fileexplorer/dao/parse/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/parse/DaoMaster;->newSession()Lcom/android/fileexplorer/dao/parse/DaoSession;

    move-result-object v1

    sput-object v1, Lcom/android/fileexplorer/dao/db/ParseDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/parse/DaoSession;

    :cond_23
    sget-object v1, Lcom/android/fileexplorer/dao/db/ParseDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/parse/DaoSession;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    monitor-exit v0

    return-object v1

    :catchall_27
    move-exception v1

    monitor-exit v0

    throw v1
.end method
