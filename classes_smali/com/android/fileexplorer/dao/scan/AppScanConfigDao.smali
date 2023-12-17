.class public Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "AppScanConfigDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/android/fileexplorer/dao/scan/AppScanConfig;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "APP_SCAN_CONFIG"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/scan/DaoSession;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_5

    .line 3
    const-string p1, "IF NOT EXISTS "

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    const-string p1, ""

    .line 8
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v1, "CREATE TABLE "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string p1, "\"APP_SCAN_CONFIG\" (\"DIR_ID\" INTEGER PRIMARY KEY ,\"APP_ID\" INTEGER,\"DIR_NAME\" TEXT,\"DIR_TYPE\" INTEGER,\"SUB_DIR_NAME\" TEXT,\"SUB_DIR_FLAG\" TEXT,\"DIRECT_NAME\" TEXT,\"APP_DIR_TAG\" TEXT,\"STATE\" TEXT,\"APP_DIR_PATH\" TEXT,\"NOTIFICATION\" INTEGER,\"USER_MODIFIED\" INTEGER);"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 3

    .line 1
    const-string v0, "DROP TABLE "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    if-eqz p1, :cond_b

    .line 9
    const-string p1, "IF EXISTS "

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const-string p1, ""

    .line 14
    :goto_d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, "\"APP_SCAN_CONFIG\""

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/android/fileexplorer/dao/scan/AppScanConfig;)V
    .registers 11

    .line 28
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 29
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 31
    :cond_11
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x2

    .line 32
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 33
    :cond_1f
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    const/4 v1, 0x3

    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 35
    :cond_29
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_38

    const/4 v1, 0x4

    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 37
    :cond_38
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    const/4 v1, 0x5

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 39
    :cond_42
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirFlag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    const/4 v1, 0x6

    .line 40
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 41
    :cond_4c
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirectName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    const/4 v1, 0x7

    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 43
    :cond_56
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    const/16 v1, 0x8

    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 45
    :cond_61
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    const/16 v1, 0x9

    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 47
    :cond_6c
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    const/16 v1, 0xa

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 49
    :cond_77
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getNotification()Ljava/lang/Boolean;

    move-result-object v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_8f

    const/16 v5, 0xb

    .line 50
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8b

    move-wide v6, v1

    goto :goto_8c

    :cond_8b
    move-wide v6, v3

    :goto_8c
    invoke-virtual {p1, v5, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 51
    :cond_8f
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getUserModified()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_a2

    const/16 v0, 0xc

    .line 52
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9e

    goto :goto_9f

    :cond_9e
    move-wide v1, v3

    :goto_9f
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    :cond_a2
    return-void
.end method

.method public bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/android/fileexplorer/dao/scan/AppScanConfig;)V

    return-void
.end method

.method public final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/android/fileexplorer/dao/scan/AppScanConfig;)V
    .registers 11

    .line 3
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 4
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 6
    :cond_11
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 8
    :cond_1f
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    const/4 v1, 0x3

    .line 9
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 10
    :cond_29
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_38

    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 12
    :cond_38
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    const/4 v1, 0x5

    .line 13
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 14
    :cond_42
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirFlag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    const/4 v1, 0x6

    .line 15
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 16
    :cond_4c
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirectName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    const/4 v1, 0x7

    .line 17
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 18
    :cond_56
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    const/16 v1, 0x8

    .line 19
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 20
    :cond_61
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    const/16 v1, 0x9

    .line 21
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 22
    :cond_6c
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    const/16 v1, 0xa

    .line 23
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 24
    :cond_77
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getNotification()Ljava/lang/Boolean;

    move-result-object v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_8f

    const/16 v5, 0xb

    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8b

    move-wide v6, v1

    goto :goto_8c

    :cond_8b
    move-wide v6, v3

    :goto_8c
    invoke-interface {p1, v5, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 26
    :cond_8f
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getUserModified()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_a2

    const/16 v0, 0xc

    .line 27
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9e

    goto :goto_9f

    :cond_9e
    move-wide v1, v3

    :goto_9f
    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_a2
    return-void
.end method

.method public bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 2
    check-cast p2, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/android/fileexplorer/dao/scan/AppScanConfig;)V

    return-void
.end method

.method public getKey(Lcom/android/fileexplorer/dao/scan/AppScanConfig;)Ljava/lang/Long;
    .registers 2

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;->getKey(Lcom/android/fileexplorer/dao/scan/AppScanConfig;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/android/fileexplorer/dao/scan/AppScanConfig;)Z
    .registers 2

    .line 2
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;->hasKey(Lcom/android/fileexplorer/dao/scan/AppScanConfig;)Z

    move-result p1

    return p1
.end method

.method public final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/android/fileexplorer/dao/scan/AppScanConfig;
    .registers 21

    move-object/from16 v0, p1

    .line 3
    new-instance v13, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    add-int/lit8 v1, p2, 0x0

    .line 4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    move-object v1, v3

    goto :goto_17

    :cond_f
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_17
    add-int/lit8 v2, p2, 0x1

    .line 5
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object v2, v3

    goto :goto_29

    :cond_21
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_29
    add-int/lit8 v4, p2, 0x2

    .line 6
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_33

    move-object v4, v3

    goto :goto_37

    :cond_33
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_37
    add-int/lit8 v5, p2, 0x3

    .line 7
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_41

    move-object v5, v3

    goto :goto_49

    :cond_41
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_49
    add-int/lit8 v6, p2, 0x4

    .line 8
    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_53

    move-object v6, v3

    goto :goto_57

    :cond_53
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_57
    add-int/lit8 v7, p2, 0x5

    .line 9
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_61

    move-object v7, v3

    goto :goto_65

    :cond_61
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_65
    add-int/lit8 v8, p2, 0x6

    .line 10
    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_6f

    move-object v8, v3

    goto :goto_73

    :cond_6f
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_73
    add-int/lit8 v9, p2, 0x7

    .line 11
    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_7d

    move-object v9, v3

    goto :goto_81

    :cond_7d
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_81
    add-int/lit8 v10, p2, 0x8

    .line 12
    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_8b

    move-object v10, v3

    goto :goto_8f

    :cond_8b
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_8f
    add-int/lit8 v11, p2, 0x9

    .line 13
    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_99

    move-object v11, v3

    goto :goto_9d

    :cond_99
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_9d
    add-int/lit8 v12, p2, 0xa

    .line 14
    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v14, :cond_aa

    move-object v12, v3

    goto :goto_b8

    :cond_aa
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getShort(I)S

    move-result v12

    if-eqz v12, :cond_b2

    move v12, v15

    goto :goto_b4

    :cond_b2
    move/from16 v12, v16

    :goto_b4
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    :goto_b8
    add-int/lit8 v14, p2, 0xb

    .line 15
    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c2

    move-object v14, v3

    goto :goto_d0

    :cond_c2
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_c9

    goto :goto_cb

    :cond_c9
    move/from16 v15, v16

    :goto_cb
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v14, v0

    :goto_d0
    move-object v0, v13

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v14

    invoke-direct/range {v0 .. v12}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v13
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;->readEntity(Landroid/database/Cursor;I)Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/android/fileexplorer/dao/scan/AppScanConfig;I)V
    .registers 9

    add-int/lit8 v0, p3, 0x0

    .line 16
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    move-object v0, v2

    goto :goto_13

    :cond_b
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_13
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_20

    move-object v0, v2

    goto :goto_28

    :cond_20
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_28
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x2

    .line 18
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_35

    move-object v0, v2

    goto :goto_39

    :cond_35
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_39
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 19
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_46

    move-object v0, v2

    goto :goto_4e

    :cond_46
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_4e
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirType(Ljava/lang/Integer;)V

    add-int/lit8 v0, p3, 0x4

    .line 20
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    move-object v0, v2

    goto :goto_5f

    :cond_5b
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5f
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setSubDirName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    move-object v0, v2

    goto :goto_70

    :cond_6c
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_70
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setSubDirFlag(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x6

    .line 22
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7d

    move-object v0, v2

    goto :goto_81

    :cond_7d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_81
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirectName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x7

    .line 23
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8e

    move-object v0, v2

    goto :goto_92

    :cond_8e
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_92
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppDirTag(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    .line 24
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9f

    move-object v0, v2

    goto :goto_a3

    :cond_9f
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a3
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setState(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x9

    .line 25
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b0

    move-object v0, v2

    goto :goto_b4

    :cond_b0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b4
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppDirPath(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xa

    .line 26
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_c3

    move-object v0, v2

    goto :goto_d0

    :cond_c3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_cb

    move v0, v3

    goto :goto_cc

    :cond_cb
    move v0, v4

    :goto_cc
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_d0
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setNotification(Ljava/lang/Boolean;)V

    add-int/lit8 p3, p3, 0xb

    .line 27
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_dc

    goto :goto_e8

    :cond_dc
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    if-eqz p1, :cond_e3

    goto :goto_e4

    :cond_e3
    move v3, v4

    :goto_e4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_e8
    invoke-virtual {p2, v2}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setUserModified(Ljava/lang/Boolean;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 2
    check-cast p2, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;->readEntity(Landroid/database/Cursor;Lcom/android/fileexplorer/dao/scan/AppScanConfig;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 4

    add-int/lit8 p2, p2, 0x0

    .line 2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    goto :goto_12

    :cond_a
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_12
    return-object p1
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final updateKeyAfterInsert(Lcom/android/fileexplorer/dao/scan/AppScanConfig;J)Ljava/lang/Long;
    .registers 5

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirId(Ljava/lang/Long;)V

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/scan/AppScanConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;->updateKeyAfterInsert(Lcom/android/fileexplorer/dao/scan/AppScanConfig;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
