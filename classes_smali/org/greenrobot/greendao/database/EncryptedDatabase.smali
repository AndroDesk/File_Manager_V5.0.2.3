.class public Lorg/greenrobot/greendao/database/EncryptedDatabase;
.super Ljava/lang/Object;
.source "EncryptedDatabase.java"

# interfaces
.implements Lorg/greenrobot/greendao/database/Database;


# instance fields
.field private final delegate:Lnet/sqlcipher/database/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 6
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V

    .line 6
    return-void
.end method

.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 6
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;
    .registers 4

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;

    .line 3
    iget-object v1, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 5
    invoke-virtual {v1, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;-><init>(Lnet/sqlcipher/database/SQLiteStatement;)V

    .line 12
    return-object v0
.end method

.method public endTransaction()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 6
    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getRawDatabase()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 3
    return-object v0
.end method

.method public getSQLiteDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 3
    return-object v0
.end method

.method public inTransaction()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->inTransaction()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isDbLockedByCurrentThread()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 3
    invoke-virtual {v0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public setTransactionSuccessful()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V

    .line 6
    return-void
.end method
