.class public Lorg/greenrobot/greendao/DbUtils;
.super Ljava/lang/Object;
.source "DbUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyAllBytes(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 7

    .line 1
    const/16 v0, 0x1000

    .line 3
    new-array v0, v0, [B

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 10
    move-result v3

    .line 11
    const/4 v4, -0x1

    .line 12
    if-ne v3, v4, :cond_e

    .line 14
    return v2

    .line 15
    :cond_e
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 18
    add-int/2addr v2, v3

    .line 19
    goto :goto_6
.end method

.method public static executeSqlScript(Landroid/content/Context;Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Lorg/greenrobot/greendao/DbUtils;->executeSqlScript(Landroid/content/Context;Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static executeSqlScript(Landroid/content/Context;Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;Z)I
    .registers 6

    .line 2
    invoke-static {p0, p2}, Lorg/greenrobot/greendao/DbUtils;->readAsset(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p0, ";(\\s)*[\n\r]"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p3, :cond_18

    .line 5
    invoke-static {p1, p0}, Lorg/greenrobot/greendao/DbUtils;->executeSqlStatementsInTx(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/String;)I

    move-result p0

    goto :goto_1c

    .line 6
    :cond_18
    invoke-static {p1, p0}, Lorg/greenrobot/greendao/DbUtils;->executeSqlStatements(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/String;)I

    move-result p0

    .line 7
    :goto_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Executed "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " statements from SQL script \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/greenrobot/greendao/DaoLog;->i(Ljava/lang/String;)I

    return p0
.end method

.method public static executeSqlStatements(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/String;)I
    .registers 7

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-ge v1, v0, :cond_19

    .line 6
    aget-object v3, p1, v1

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 15
    move-result v4

    .line 16
    if-lez v4, :cond_16

    .line 18
    invoke-interface {p0, v3}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 23
    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_3

    .line 26
    :cond_19
    return v2
.end method

.method public static executeSqlStatementsInTx(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-interface {p0}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 4
    :try_start_3
    invoke-static {p0, p1}, Lorg/greenrobot/greendao/DbUtils;->executeSqlStatements(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/String;)I

    .line 7
    move-result p1

    .line 8
    invoke-interface {p0}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 11
    invoke-interface {p0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 14
    return p1

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    invoke-interface {p0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 19
    throw p1
.end method

.method public static logTableDump(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 10

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v3, 0x0

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v7, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 12
    move-result-object p0

    .line 13
    :try_start_c
    invoke-static {p0}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_17

    .line 20
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 23
    return-void

    .line 24
    :catchall_17
    move-exception p1

    .line 25
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 28
    throw p1
.end method

.method public static readAllBytes(Ljava/io/InputStream;)[B
    .registers 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-static {p0, v0}, Lorg/greenrobot/greendao/DbUtils;->copyAllBytes(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static readAsset(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 12
    move-result-object p0

    .line 13
    :try_start_c
    invoke-static {p0}, Lorg/greenrobot/greendao/DbUtils;->readAllBytes(Ljava/io/InputStream;)[B

    .line 16
    move-result-object p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 17
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 20
    return-object p1

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 25
    throw p1
.end method

.method public static vacuum(Lorg/greenrobot/greendao/database/Database;)V
    .registers 2

    .line 1
    const-string v0, "VACUUM"

    .line 3
    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 6
    return-void
.end method
