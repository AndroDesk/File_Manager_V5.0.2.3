.class public Lorg/greenrobot/greendao/database/StandardDatabase;
.super Ljava/lang/Object;
.source "StandardDatabase.java"

# interfaces
.implements Lorg/greenrobot/greendao/database/Database;


# instance fields
.field private final delegate:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6
    return-void
.end method

.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 6
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;
    .registers 4

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;

    .line 3
    iget-object v1, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    .line 12
    return-object v0
.end method

.method public endTransaction()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6
    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getRawDatabase()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    return-object v0
.end method

.method public getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    return-object v0
.end method

.method public inTransaction()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isDbLockedByCurrentThread()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public setTransactionSuccessful()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 6
    return-void
.end method
