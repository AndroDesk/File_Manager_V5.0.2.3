.class public Lcom/android/fileexplorer/dao/db/FileDaoUtils;
.super Ljava/lang/Object;
.source "FileDaoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/dao/db/FileDaoUtils$FileOpenHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "xl_file_db"

.field private static volatile sDaoSession:Lcom/android/fileexplorer/dao/file/DaoSession;


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

.method public static declared-synchronized getDaoSession()Lcom/android/fileexplorer/dao/file/DaoSession;
    .registers 5

    const-class v0, Lcom/android/fileexplorer/dao/db/FileDaoUtils;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/dao/db/FileDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/file/DaoSession;

    if-nez v1, :cond_22

    new-instance v1, Lcom/android/fileexplorer/dao/db/FileDaoUtils$FileOpenHelper;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "xl_file_db"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/fileexplorer/dao/db/FileDaoUtils$FileOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/dao/file/DaoMaster;

    invoke-direct {v2, v1}, Lcom/android/fileexplorer/dao/file/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/DaoMaster;->newSession()Lcom/android/fileexplorer/dao/file/DaoSession;

    move-result-object v1

    sput-object v1, Lcom/android/fileexplorer/dao/db/FileDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/file/DaoSession;

    :cond_22
    sget-object v1, Lcom/android/fileexplorer/dao/db/FileDaoUtils;->sDaoSession:Lcom/android/fileexplorer/dao/file/DaoSession;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    monitor-exit v0

    return-object v1

    :catchall_26
    move-exception v1

    monitor-exit v0

    throw v1
.end method
