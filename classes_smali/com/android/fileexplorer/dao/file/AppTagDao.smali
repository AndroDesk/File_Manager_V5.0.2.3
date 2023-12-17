.class public Lcom/android/fileexplorer/dao/file/AppTagDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "AppTagDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/dao/file/AppTagDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/android/fileexplorer/dao/file/AppTag;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "APP_TAG"


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
    const-string p1, "\"APP_TAG\" (\"_id\" INTEGER PRIMARY KEY ,\"PACKAGE_NAME\" TEXT NOT NULL ,\"APP_NAME\" TEXT,\"APP_ICON\" TEXT,\"FILE_COUNT\" INTEGER NOT NULL );"

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
    const-string p1, "\"APP_TAG\""

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
.method public final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/android/fileexplorer/dao/file/AppTag;)V
    .registers 7

    .line 12
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 13
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/AppTag;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    :cond_11
    const/4 v0, 0x2

    .line 15
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    const/4 v1, 0x3

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 18
    :cond_23
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppIcon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    const/4 v1, 0x4

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    :cond_2d
    const/4 v0, 0x5

    .line 20
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/dao/file/AppTagDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/android/fileexplorer/dao/file/AppTag;)V

    return-void
.end method

.method public final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/android/fileexplorer/dao/file/AppTag;)V
    .registers 7

    .line 3
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 4
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/AppTag;->getId()Ljava/lang/Long;

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
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    const/4 v1, 0x3

    .line 8
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 9
    :cond_23
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppIcon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    const/4 v1, 0x4

    .line 10
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_2d
    const/4 v0, 0x5

    .line 11
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 2
    check-cast p2, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/dao/file/AppTagDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/android/fileexplorer/dao/file/AppTag;)V

    return-void
.end method

.method public getKey(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/Long;
    .registers 2

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/AppTagDao;->getKey(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/android/fileexplorer/dao/file/AppTag;)Z
    .registers 2

    .line 2
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/AppTagDao;->hasKey(Lcom/android/fileexplorer/dao/file/AppTag;)Z

    move-result p1

    return p1
.end method

.method public final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/android/fileexplorer/dao/file/AppTag;
    .registers 10

    .line 3
    new-instance v6, Lcom/android/fileexplorer/dao/file/AppTag;

    add-int/lit8 v0, p2, 0x0

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    move-object v1, v2

    goto :goto_16

    :cond_d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    :goto_16
    add-int/lit8 v0, p2, 0x1

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, p2, 0x2

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_26

    move-object v4, v2

    goto :goto_2b

    :cond_26
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_2b
    add-int/lit8 v0, p2, 0x3

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_35

    move-object v5, v2

    goto :goto_3a

    :cond_35
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_3a
    add-int/lit8 p2, p2, 0x4

    .line 8
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    move-object v0, v6

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/dao/file/AppTagDao;->readEntity(Landroid/database/Cursor;I)Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/android/fileexplorer/dao/file/AppTag;I)V
    .registers 7

    add-int/lit8 v0, p3, 0x0

    .line 9
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
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/AppTag;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/AppTag;->setPackageName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_29

    move-object v0, v2

    goto :goto_2d

    :cond_29
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/AppTag;->setAppName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_3d

    :cond_39
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3d
    invoke-virtual {p2, v2}, Lcom/android/fileexplorer/dao/file/AppTag;->setAppIcon(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x4

    .line 13
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/dao/file/AppTag;->setFileCount(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 2
    check-cast p2, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/dao/file/AppTagDao;->readEntity(Landroid/database/Cursor;Lcom/android/fileexplorer/dao/file/AppTag;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/dao/file/AppTagDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final updateKeyAfterInsert(Lcom/android/fileexplorer/dao/file/AppTag;J)Ljava/lang/Long;
    .registers 5

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/dao/file/AppTag;->setId(Ljava/lang/Long;)V

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/dao/file/AppTagDao;->updateKeyAfterInsert(Lcom/android/fileexplorer/dao/file/AppTag;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
