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
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDaoSession()Lcom/android/fileexplorer/dao/fav/DaoSession;
    .registers 5

    .line 1
    const-class v0, Lcom/android/fileexplorer/dao/db/FavDaoUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/dao/db/FavDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/fav/DaoSession;

    .line 6
    if-nez v1, :cond_22

    .line 8
    new-instance v1, Lcom/android/fileexplorer/dao/db/FavDaoUtils$FavoriteOpenHelper;

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "file_explorer"

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lcom/android/fileexplorer/dao/db/FavDaoUtils$FavoriteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 20
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lcom/android/fileexplorer/dao/fav/DaoMaster;

    .line 26
    invoke-direct {v2, v1}, Lcom/android/fileexplorer/dao/fav/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 29
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/fav/DaoMaster;->newSession()Lcom/android/fileexplorer/dao/fav/DaoSession;

    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lcom/android/fileexplorer/dao/db/FavDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/fav/DaoSession;

    .line 35
    :cond_22
    sget-object v1, Lcom/android/fileexplorer/dao/db/FavDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/fav/DaoSession;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    .line 37
    monitor-exit v0

    .line 38
    return-object v1

    .line 39
    :catchall_26
    move-exception v1

    .line 40
    monitor-exit v0

    .line 41
    throw v1
.end method
