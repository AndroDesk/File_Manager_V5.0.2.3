.class public Lorg/greenrobot/greendao/DbUtils;
.super Ljava/lang/Object;
.source "DbUtils.java"


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

.method public static copyAllBytes(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 7

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_e

    return v2

    :cond_e
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v2, v3

    goto :goto_6
.end method

.method public static executeSqlScript(Landroid/content/Context;Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/greenrobot/greendao/DbUtils;->executeSqlScript(Landroid/content/Context;Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static executeSqlScript(Landroid/content/Context;Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;Z)I
    .registers 6

    invoke-static {p0, p2}, Lorg/greenrobot/greendao/DbUtils;->readAsset(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p0, ";(\\s)*[\n\r]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p3, :cond_18

    invoke-static {p1, p0}, Lorg/greenrobot/greendao/DbUtils;->executeSqlStatementsInTx(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/String;)I

    move-result p0

    goto :goto_1c

    :cond_18
    invoke-static {p1, p0}, Lorg/greenrobot/greendao/DbUtils;->executeSqlStatements(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/String;)I

    move-result p0

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

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_19

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_16

    invoke-interface {p0, v3}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_19
    return v2
.end method

.method public static executeSqlStatementsInTx(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/String;)I
    .registers 2

    invoke-interface {p0}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    :try_start_3
    invoke-static {p0, p1}, Lorg/greenrobot/greendao/DbUtils;->executeSqlStatements(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-interface {p0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    return p1

    :catchall_e
    move-exception p1

    invoke-interface {p0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    throw p1
.end method

.method public static logTableDump(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_c
    invoke-static {p0}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_17

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_17
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public static readAllBytes(Ljava/io/InputStream;)[B
    .registers 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lorg/greenrobot/greendao/DbUtils;->copyAllBytes(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static readAsset(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :try_start_c
    invoke-static {p0}, Lorg/greenrobot/greendao/DbUtils;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_14
    move-exception p1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public static vacuum(Lorg/greenrobot/greendao/database/Database;)V
    .registers 2

    const-string v0, "VACUUM"

    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method
