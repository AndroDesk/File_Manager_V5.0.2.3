.class Lcom/android/fileexplorer/dao/db/FavDaoUtils;
.super Ljava/lang/Object;
.source "FavDaoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/dao/db/FavDaoUtils$FavoriteOpenHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "file_explorer"

.field private static sDaoSession:Lcom/android/fileexplorer/dao/fav/DaoSession;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDaoSession()Lcom/android/fileexplorer/dao/fav/DaoSession;
    .registers 5

    const-class v0, Lcom/android/fileexplorer/dao/db/FavDaoUtils;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/dao/db/FavDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/fav/DaoSession;

    if-nez v1, :cond_22

    new-instance v1, Lcom/android/fileexplorer/dao/db/FavDaoUtils$FavoriteOpenHelper;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "file_explorer"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/fileexplorer/dao/db/FavDaoUtils$FavoriteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/dao/fav/DaoMaster;

    invoke-direct {v2, v1}, Lcom/android/fileexplorer/dao/fav/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/fav/DaoMaster;->newSession()Lcom/android/fileexplorer/dao/fav/DaoSession;

    move-result-object v1

    sput-object v1, Lcom/android/fileexplorer/dao/db/FavDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/fav/DaoSession;

    :cond_22
    sget-object v1, Lcom/android/fileexplorer/dao/db/FavDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/fav/DaoSession;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    monitor-exit v0

    return-object v1

    :catchall_26
    move-exception v1

    monitor-exit v0

    throw v1
.end method
