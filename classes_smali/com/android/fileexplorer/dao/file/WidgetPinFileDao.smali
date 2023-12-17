.class public Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "WidgetPinFileDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/dao/file/WidgetPinFileDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/android/fileexplorer/dao/file/WidgetPinFile;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "WIDGET_PIN_FILE"


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
    const-string p1, "\"WIDGET_PIN_FILE\" (\"_id\" INTEGER PRIMARY KEY ,\"FILE_NAME\" TEXT,\"FILE_ABSOLUTE_PATH\" TEXT NOT NULL ,\"MODIFY_TIME\" INTEGER,\"FILE_CATEGORY_TYPE\" INTEGER,\"FILE_SIZE\" INTEGER,\"ADD_TIME\" INTEGER,\"FILE_ID\" INTEGER);"

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
    const-string p1, "\"WIDGET_PIN_FILE\""

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
.method public final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/android/fileexplorer/dao/file/WidgetPinFile;)V
    .registers 7

    .line 19
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 20
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 22
    :cond_11
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x2

    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    :cond_1b
    const/4 v0, 0x3

    .line 24
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getModifyTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_31

    const/4 v1, 0x4

    .line 26
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 27
    :cond_31
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileCategoryType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_40

    const/4 v1, 0x5

    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 29
    :cond_40
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4e

    const/4 v1, 0x6

    .line 30
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 31
    :cond_4e
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getAddTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5c

    const/4 v1, 0x7

    .line 32
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 33
    :cond_5c
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileId()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_6b

    const/16 v0, 0x8

    .line 34
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    :cond_6b
    return-void
.end method

.method public bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/android/fileexplorer/dao/file/WidgetPinFile;)V

    return-void
.end method

.method public final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/android/fileexplorer/dao/file/WidgetPinFile;)V
    .registers 7

    .line 3
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 4
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 6
    :cond_11
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x2

    .line 7
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_1b
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getModifyTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_31

    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 11
    :cond_31
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileCategoryType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_40

    const/4 v1, 0x5

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 13
    :cond_40
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4e

    const/4 v1, 0x6

    .line 14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 15
    :cond_4e
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getAddTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5c

    const/4 v1, 0x7

    .line 16
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 17
    :cond_5c
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileId()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_6b

    const/16 v0, 0x8

    .line 18
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_6b
    return-void
.end method

.method public bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .line 2
    check-cast p2, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/android/fileexplorer/dao/file/WidgetPinFile;)V

    return-void
.end method

.method public getKey(Lcom/android/fileexplorer/dao/file/WidgetPinFile;)Ljava/lang/Long;
    .registers 2

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;->getKey(Lcom/android/fileexplorer/dao/file/WidgetPinFile;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/android/fileexplorer/dao/file/WidgetPinFile;)Z
    .registers 2

    .line 2
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;->hasKey(Lcom/android/fileexplorer/dao/file/WidgetPinFile;)Z

    move-result p1

    return p1
.end method

.method public final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/android/fileexplorer/dao/file/WidgetPinFile;
    .registers 15

    .line 3
    new-instance v9, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

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
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_20

    move-object v3, v2

    goto :goto_25

    :cond_20
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_25
    add-int/lit8 v0, p2, 0x2

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, p2, 0x3

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_35

    move-object v5, v2

    goto :goto_3e

    :cond_35
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v5, v0

    :goto_3e
    add-int/lit8 v0, p2, 0x4

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_48

    move-object v6, v2

    goto :goto_51

    :cond_48
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v6, v0

    :goto_51
    add-int/lit8 v0, p2, 0x5

    .line 9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_5b

    move-object v7, v2

    goto :goto_64

    :cond_5b
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v7, v0

    :goto_64
    add-int/lit8 v0, p2, 0x6

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_6e

    move-object v8, v2

    goto :goto_77

    :cond_6e
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v8, v0

    :goto_77
    add-int/lit8 p2, p2, 0x7

    .line 11
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_81

    move-object p1, v2

    goto :goto_89

    :cond_81
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_89
    move-object v0, v9

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v9
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;->readEntity(Landroid/database/Cursor;I)Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/android/fileexplorer/dao/file/WidgetPinFile;I)V
    .registers 7

    add-int/lit8 v0, p3, 0x0

    .line 12
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
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 13
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_20

    move-object v0, v2

    goto :goto_24

    :cond_20
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 14
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileAbsolutePath(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 15
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    move-object v0, v2

    goto :goto_42

    :cond_3a
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_42
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setModifyTime(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x4

    .line 16
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    move-object v0, v2

    goto :goto_57

    :cond_4f
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_57
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileCategoryType(Ljava/lang/Integer;)V

    add-int/lit8 v0, p3, 0x5

    .line 17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_64

    move-object v0, v2

    goto :goto_6c

    :cond_64
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_6c
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileSize(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x6

    .line 18
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_79

    move-object v0, v2

    goto :goto_81

    :cond_79
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_81
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setAddTime(Ljava/lang/Long;)V

    add-int/lit8 p3, p3, 0x7

    .line 19
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8d

    goto :goto_95

    :cond_8d
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_95
    invoke-virtual {p2, v2}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileId(Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .line 2
    check-cast p2, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;->readEntity(Landroid/database/Cursor;Lcom/android/fileexplorer/dao/file/WidgetPinFile;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final updateKeyAfterInsert(Lcom/android/fileexplorer/dao/file/WidgetPinFile;J)Ljava/lang/Long;
    .registers 5

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setId(Ljava/lang/Long;)V

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;->updateKeyAfterInsert(Lcom/android/fileexplorer/dao/file/WidgetPinFile;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
