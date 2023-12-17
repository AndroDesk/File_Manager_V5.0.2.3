.class public Lcom/android/fileexplorer/dao/file/FileGroupDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "FileGroupDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/android/fileexplorer/dao/file/FileGroup;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "FILE_GROUP"


# instance fields
.field private daoSession:Lcom/android/fileexplorer/dao/file/DaoSession;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/file/DaoSession;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/dao/file/FileGroupDao;->daoSession:Lcom/android/fileexplorer/dao/file/DaoSession;

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
    const-string p1, "\"FILE_GROUP\" (\"_id\" INTEGER PRIMARY KEY ,\"GROUP_KEY\" TEXT NOT NULL ,\"GROUP_TYPE\" INTEGER NOT NULL ,\"GROUP_NAME\" TEXT,\"GROUP_CREATE_TIME\" INTEGER,\"GROUP_START_TIME\" INTEGER,\"GROUP_END_TIME\" INTEGER,\"GROUP_PATH\" TEXT,\"GROUP_FILE_TYPE\" INTEGER,\"GROUP_SUMMARY\" TEXT,\"DIR_ID\" INTEGER,\"APP_NAME\" TEXT,\"PACKAGE_NAME\" TEXT,\"GROUP_TAG1\" TEXT,\"GROUP_TAG2\" TEXT,\"GROUP_TAG3\" TEXT,\"APP_ICON\" TEXT,\"APP_ID\" INTEGER,\"SUMMARY_TIME\" INTEGER);"

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
    const-string p1, "\"FILE_GROUP\""

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
.method public final attachEntity(Lcom/android/fileexplorer/dao/file/FileGroup;)V
    .registers 3

    .line 2
    invoke-super {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroupDao;->daoSession:Lcom/android/fileexplorer/dao/file/DaoSession;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->__setDaoSession(Lcom/android/fileexplorer/dao/file/DaoSession;)V

    return-void
.end method

.method public bridge synthetic attachEntity(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/FileGroupDao;->attachEntity(Lcom/android/fileexplorer/dao/file/FileGroup;)V

    return-void
.end method

.method public final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/android/fileexplorer/dao/file/FileGroup;)V
    .registers 7

    .line 40
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 41
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    :cond_11
    const/4 v0, 0x2

    .line 43
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 44
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupType()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 45
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    const/4 v1, 0x4

    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 47
    :cond_2c
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3a

    const/4 v1, 0x5

    .line 48
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 49
    :cond_3a
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupStartTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_48

    const/4 v1, 0x6

    .line 50
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 51
    :cond_48
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupEndTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_56

    const/4 v1, 0x7

    .line 52
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 53
    :cond_56
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    const/16 v1, 0x8

    .line 54
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 55
    :cond_61
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupFileType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_71

    const/16 v1, 0x9

    .line 56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 57
    :cond_71
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupSummary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    const/16 v1, 0xa

    .line 58
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 59
    :cond_7c
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getDirId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_8b

    const/16 v1, 0xb

    .line 60
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 61
    :cond_8b
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_96

    const/16 v1, 0xc

    .line 62
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 63
    :cond_96
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a1

    const/16 v1, 0xd

    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 65
    :cond_a1
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ac

    const/16 v1, 0xe

    .line 66
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 67
    :cond_ac
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b7

    const/16 v1, 0xf

    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 69
    :cond_b7
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag3()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c2

    const/16 v1, 0x10

    .line 70
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 71
    :cond_c2
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppIcon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cd

    const/16 v1, 0x11

    .line 72
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 73
    :cond_cd
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_dc

    const/16 v1, 0x12

    .line 74
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 75
    :cond_dc
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getSummaryTime()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_eb

    const/16 v0, 0x13

    .line 76
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    :cond_eb
    return-void
.end method

.method public bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/dao/file/FileGroupDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/android/fileexplorer/dao/file/FileGroup;)V

    return-void
.end method

.method public final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/android/fileexplorer/dao/file/FileGroup;)V
    .registers 7

    .line 3
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 4
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_11
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 7
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 8
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    const/4 v1, 0x4

    .line 9
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 10
    :cond_2c
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupCreateTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3a

    const/4 v1, 0x5

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 12
    :cond_3a
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupStartTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_48

    const/4 v1, 0x6

    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 14
    :cond_48
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupEndTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_56

    const/4 v1, 0x7

    .line 15
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 16
    :cond_56
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    const/16 v1, 0x8

    .line 17
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 18
    :cond_61
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupFileType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_71

    const/16 v1, 0x9

    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 20
    :cond_71
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupSummary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    const/16 v1, 0xa

    .line 21
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 22
    :cond_7c
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getDirId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_8b

    const/16 v1, 0xb

    .line 23
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 24
    :cond_8b
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_96

    const/16 v1, 0xc

    .line 25
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 26
    :cond_96
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a1

    const/16 v1, 0xd

    .line 27
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 28
    :cond_a1
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ac

    const/16 v1, 0xe

    .line 29
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 30
    :cond_ac
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b7

    const/16 v1, 0xf

    .line 31
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 32
    :cond_b7
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupTag3()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c2

    const/16 v1, 0x10

    .line 33
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 34
    :cond_c2
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppIcon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cd

    const/16 v1, 0x11

    .line 35
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 36
    :cond_cd
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getAppId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_dc

    const/16 v1, 0x12

    .line 37
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 38
    :cond_dc
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileGroup;->getSummaryTime()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_eb

    const/16 v0, 0x13

    .line 39
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_eb
    return-void
.end method

.method public bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 2
    check-cast p2, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/dao/file/FileGroupDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/android/fileexplorer/dao/file/FileGroup;)V

    return-void
.end method

.method public getKey(Lcom/android/fileexplorer/dao/file/FileGroup;)Ljava/lang/Long;
    .registers 2

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/FileGroupDao;->getKey(Lcom/android/fileexplorer/dao/file/FileGroup;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/android/fileexplorer/dao/file/FileGroup;)Z
    .registers 2

    .line 2
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/FileGroupDao;->hasKey(Lcom/android/fileexplorer/dao/file/FileGroup;)Z

    move-result p1

    return p1
.end method

.method public final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/android/fileexplorer/dao/file/FileGroup;
    .registers 27

    move-object/from16 v0, p1

    .line 3
    new-instance v20, Lcom/android/fileexplorer/dao/file/FileGroup;

    add-int/lit8 v1, p2, 0x0

    .line 4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x0

    goto :goto_16

    :cond_e
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_16
    add-int/lit8 v2, p2, 0x1

    .line 5
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, p2, 0x2

    .line 6
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v5, p2, 0x3

    .line 7
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2c

    const/4 v5, 0x0

    goto :goto_30

    :cond_2c
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_30
    add-int/lit8 v6, p2, 0x4

    .line 8
    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3a

    const/4 v6, 0x0

    goto :goto_42

    :cond_3a
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_42
    add-int/lit8 v7, p2, 0x5

    .line 9
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4c

    const/4 v7, 0x0

    goto :goto_54

    :cond_4c
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :goto_54
    add-int/lit8 v8, p2, 0x6

    .line 10
    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_5e

    const/4 v8, 0x0

    goto :goto_66

    :cond_5e
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :goto_66
    add-int/lit8 v9, p2, 0x7

    .line 11
    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_70

    const/4 v9, 0x0

    goto :goto_74

    :cond_70
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_74
    add-int/lit8 v10, p2, 0x8

    .line 12
    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_7e

    const/4 v10, 0x0

    goto :goto_86

    :cond_7e
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :goto_86
    add-int/lit8 v11, p2, 0x9

    .line 13
    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_90

    const/4 v11, 0x0

    goto :goto_94

    :cond_90
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_94
    add-int/lit8 v12, p2, 0xa

    .line 14
    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_9e

    const/4 v12, 0x0

    goto :goto_a6

    :cond_9e
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    :goto_a6
    add-int/lit8 v13, p2, 0xb

    .line 15
    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_b0

    const/4 v13, 0x0

    goto :goto_b4

    :cond_b0
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_b4
    add-int/lit8 v14, p2, 0xc

    .line 16
    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_be

    const/4 v14, 0x0

    goto :goto_c2

    :cond_be
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_c2
    add-int/lit8 v15, p2, 0xd

    .line 17
    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_cc

    const/4 v15, 0x0

    goto :goto_d0

    :cond_cc
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_d0
    add-int/lit8 v3, p2, 0xe

    .line 18
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_db

    const/16 v17, 0x0

    goto :goto_e1

    :cond_db
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    :goto_e1
    add-int/lit8 v3, p2, 0xf

    .line 19
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_ec

    const/16 v18, 0x0

    goto :goto_f2

    :cond_ec
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    :goto_f2
    add-int/lit8 v3, p2, 0x10

    .line 20
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_fd

    const/16 v19, 0x0

    goto :goto_103

    :cond_fd
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    :goto_103
    add-int/lit8 v3, p2, 0x11

    .line 21
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_10e

    const/16 v21, 0x0

    goto :goto_118

    :cond_10e
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v21, v3

    :goto_118
    add-int/lit8 v3, p2, 0x12

    .line 22
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_123

    const/16 v22, 0x0

    goto :goto_12d

    :cond_123
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v22, v0

    :goto_12d
    move-object/from16 v0, v20

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v21

    move-object/from16 v19, v22

    invoke-direct/range {v0 .. v19}, Lcom/android/fileexplorer/dao/file/FileGroup;-><init>(Ljava/lang/Long;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v20
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/dao/file/FileGroupDao;->readEntity(Landroid/database/Cursor;I)Lcom/android/fileexplorer/dao/file/FileGroup;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/android/fileexplorer/dao/file/FileGroup;I)V
    .registers 7

    add-int/lit8 v0, p3, 0x0

    .line 23
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
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 24
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupKey(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 25
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupType(I)V

    add-int/lit8 v0, p3, 0x3

    .line 26
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_32

    move-object v0, v2

    goto :goto_36

    :cond_32
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_36
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 27
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_43

    move-object v0, v2

    goto :goto_4b

    :cond_43
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_4b
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupCreateTime(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x5

    .line 28
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_58

    move-object v0, v2

    goto :goto_60

    :cond_58
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_60
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupStartTime(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x6

    .line 29
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6d

    move-object v0, v2

    goto :goto_75

    :cond_6d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_75
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupEndTime(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x7

    .line 30
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_82

    move-object v0, v2

    goto :goto_86

    :cond_82
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_86
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupPath(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    .line 31
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_93

    move-object v0, v2

    goto :goto_9b

    :cond_93
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_9b
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupFileType(Ljava/lang/Integer;)V

    add-int/lit8 v0, p3, 0x9

    .line 32
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a8

    move-object v0, v2

    goto :goto_ac

    :cond_a8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_ac
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupSummary(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xa

    .line 33
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b9

    move-object v0, v2

    goto :goto_c1

    :cond_b9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_c1
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setDirId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0xb

    .line 34
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ce

    move-object v0, v2

    goto :goto_d2

    :cond_ce
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d2
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xc

    .line 35
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_df

    move-object v0, v2

    goto :goto_e3

    :cond_df
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_e3
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setPackageName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xd

    .line 36
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_f0

    move-object v0, v2

    goto :goto_f4

    :cond_f0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_f4
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupTag1(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xe

    .line 37
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_101

    move-object v0, v2

    goto :goto_105

    :cond_101
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_105
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupTag2(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xf

    .line 38
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_112

    move-object v0, v2

    goto :goto_116

    :cond_112
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_116
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setGroupTag3(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x10

    .line 39
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_123

    move-object v0, v2

    goto :goto_127

    :cond_123
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_127
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppIcon(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x11

    .line 40
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_134

    move-object v0, v2

    goto :goto_13c

    :cond_134
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_13c
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setAppId(Ljava/lang/Long;)V

    add-int/lit8 p3, p3, 0x12

    .line 41
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_148

    goto :goto_150

    :cond_148
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_150
    invoke-virtual {p2, v2}, Lcom/android/fileexplorer/dao/file/FileGroup;->setSummaryTime(Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 2
    check-cast p2, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/dao/file/FileGroupDao;->readEntity(Landroid/database/Cursor;Lcom/android/fileexplorer/dao/file/FileGroup;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/dao/file/FileGroupDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final updateKeyAfterInsert(Lcom/android/fileexplorer/dao/file/FileGroup;J)Ljava/lang/Long;
    .registers 5

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/dao/file/FileGroup;->setId(Ljava/lang/Long;)V

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/dao/file/FileGroupDao;->updateKeyAfterInsert(Lcom/android/fileexplorer/dao/file/FileGroup;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
