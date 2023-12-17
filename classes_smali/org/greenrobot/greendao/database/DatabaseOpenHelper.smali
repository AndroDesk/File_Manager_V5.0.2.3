.class public abstract Lorg/greenrobot/greendao/database/DatabaseOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private encryptedHelper:Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

.field private loadSQLCipherNativeLibs:Z

.field private final name:Ljava/lang/String;

.field private final version:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p3, 0x1

    .line 3
    iput-boolean p3, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->loadSQLCipherNativeLibs:Z

    .line 4
    iput-object p1, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->name:Ljava/lang/String;

    .line 6
    iput p4, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->version:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 7
    invoke-direct/range {p0 .. p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    const/4 p3, 0x1

    .line 8
    iput-boolean p3, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->loadSQLCipherNativeLibs:Z

    .line 9
    iput-object p1, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->context:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->name:Ljava/lang/String;

    .line 11
    iput p4, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->version:I

    return-void
.end method

.method private checkEncryptedHelper()Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;
    .registers 10

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->encryptedHelper:Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    .line 3
    if-nez v0, :cond_63

    .line 5
    :try_start_4
    const-string v0, "net.sqlcipher.database.SQLiteOpenHelper"

    .line 7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_5b

    .line 10
    :try_start_9
    const-string v0, "org.greenrobot.greendao.database.SqlCipherEncryptedHelper"

    .line 12
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x5

    .line 17
    new-array v2, v1, [Ljava/lang/Class;

    .line 19
    const-class v3, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;

    .line 21
    const/4 v4, 0x0

    .line 22
    aput-object v3, v2, v4

    .line 24
    const-class v3, Landroid/content/Context;

    .line 26
    const/4 v5, 0x1

    .line 27
    aput-object v3, v2, v5

    .line 29
    const-class v3, Ljava/lang/String;

    .line 31
    const/4 v6, 0x2

    .line 32
    aput-object v3, v2, v6

    .line 34
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 36
    const/4 v7, 0x3

    .line 37
    aput-object v3, v2, v7

    .line 39
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 41
    const/4 v8, 0x4

    .line 42
    aput-object v3, v2, v8

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 47
    move-result-object v0

    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    .line 50
    aput-object p0, v1, v4

    .line 52
    iget-object v2, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->context:Landroid/content/Context;

    .line 54
    aput-object v2, v1, v5

    .line 56
    iget-object v2, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->name:Ljava/lang/String;

    .line 58
    aput-object v2, v1, v6

    .line 60
    iget v2, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->version:I

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v2

    .line 66
    aput-object v2, v1, v7

    .line 68
    iget-boolean v2, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->loadSQLCipherNativeLibs:Z

    .line 70
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    move-result-object v2

    .line 74
    aput-object v2, v1, v8

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    .line 82
    iput-object v0, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->encryptedHelper:Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_53} :catch_54

    .line 84
    goto :goto_63

    .line 85
    :catch_54
    move-exception v0

    .line 86
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    .line 88
    invoke-direct {v1, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/Throwable;)V

    .line 91
    throw v1

    .line 92
    :catch_5b
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 94
    const-string v1, "Using an encrypted database requires SQLCipher, make sure to add it to dependencies: https://greenrobot.org/greendao/documentation/database-encryption/"

    .line 96
    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 99
    throw v0

    .line 100
    :cond_63
    :goto_63
    iget-object v0, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->encryptedHelper:Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    .line 102
    return-object v0
.end method


# virtual methods
.method public getEncryptedReadableDb(Ljava/lang/String;)Lorg/greenrobot/greendao/database/Database;
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->checkEncryptedHelper()Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->getEncryptedReadableDb(Ljava/lang/String;)Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    return-object p1
.end method

.method public getEncryptedReadableDb([C)Lorg/greenrobot/greendao/database/Database;
    .registers 3

    .line 3
    invoke-direct {p0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->checkEncryptedHelper()Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->getEncryptedReadableDb([C)Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    return-object p1
.end method

.method public getEncryptedWritableDb(Ljava/lang/String;)Lorg/greenrobot/greendao/database/Database;
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->checkEncryptedHelper()Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->getEncryptedWritableDb(Ljava/lang/String;)Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    return-object p1
.end method

.method public getEncryptedWritableDb([C)Lorg/greenrobot/greendao/database/Database;
    .registers 3

    .line 3
    invoke-direct {p0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->checkEncryptedHelper()Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->getEncryptedWritableDb([C)Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    return-object p1
.end method

.method public getReadableDb()Lorg/greenrobot/greendao/database/Database;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getWritableDb()Lorg/greenrobot/greendao/database/Database;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onCreate(Lorg/greenrobot/greendao/database/Database;)V

    .line 8
    return-void
.end method

.method public onCreate(Lorg/greenrobot/greendao/database/Database;)V
    .registers 2

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onOpen(Lorg/greenrobot/greendao/database/Database;)V

    .line 8
    return-void
.end method

.method public onOpen(Lorg/greenrobot/greendao/database/Database;)V
    .registers 2

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V

    .line 8
    return-void
.end method

.method public onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
    .registers 4

    return-void
.end method

.method public setLoadSQLCipherNativeLibs(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->loadSQLCipherNativeLibs:Z

    .line 3
    return-void
.end method

.method public wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;
    .registers 3

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    .line 3
    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6
    return-object v0
.end method
