.class Lcom/android/fileexplorer/dao/db/FileDaoUtils$FileOpenHelper;
.super Lcom/android/fileexplorer/dao/file/DaoMaster$OpenHelper;
.source "FileDaoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/dao/db/FileDaoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileOpenHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/dao/file/DaoMaster$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/dao/file/DaoMaster$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    return-void
.end method


# virtual methods
.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "Downgrading schema from version "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string p2, " to "

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string p2, " by dropping all tables"

    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    const-string p3, "greenDAO"

    .line 33
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    .line 39
    move-result-object p1

    .line 40
    const/4 p2, 0x1

    .line 41
    invoke-static {p1, p2}, Lcom/android/fileexplorer/dao/file/DaoMaster;->dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/DaoMaster$OpenHelper;->onCreate(Lorg/greenrobot/greendao/database/Database;)V

    .line 47
    const/4 p1, -0x1

    .line 48
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setLastScanID(I)V

    .line 51
    return-void
.end method

.method public onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "Upgrading schema from version "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " to "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string p3, " by dropping all tables"

    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p3

    .line 31
    const-string v0, "greenDAO"

    .line 33
    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/16 p3, 0x1a

    .line 38
    const/4 v0, 0x1

    .line 39
    if-eq p2, p3, :cond_3c

    .line 41
    const/16 p3, 0x1b

    .line 43
    if-eq p2, p3, :cond_2d

    .line 45
    goto :goto_3f

    .line 46
    :cond_2d
    sget-boolean p2, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 48
    if-eqz p2, :cond_3f

    .line 50
    invoke-static {p1, v0}, Lcom/android/fileexplorer/dao/file/DaoMaster;->dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/DaoMaster$OpenHelper;->onCreate(Lorg/greenrobot/greendao/database/Database;)V

    .line 56
    const/4 p1, -0x1

    .line 57
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setLastScanID(I)V

    .line 60
    goto :goto_3f

    .line 61
    :cond_3c
    invoke-static {p1, v0}, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 64
    :cond_3f
    :goto_3f
    return-void
.end method
