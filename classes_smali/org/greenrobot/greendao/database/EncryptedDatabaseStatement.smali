.class public Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;
.super Ljava/lang/Object;
.source "EncryptedDatabaseStatement.java"

# interfaces
.implements Lorg/greenrobot/greendao/database/DatabaseStatement;


# instance fields
.field private final delegate:Lnet/sqlcipher/database/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lnet/sqlcipher/database/SQLiteStatement;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->delegate:Lnet/sqlcipher/database/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .registers 4

    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->delegate:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Lnet/sqlcipher/database/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public bindDouble(ID)V
    .registers 5

    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->delegate:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteStatement;->bindDouble(ID)V

    return-void
.end method

.method public bindLong(IJ)V
    .registers 5

    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->delegate:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bindNull(I)V
    .registers 3

    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->delegate:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0, p1}, Lnet/sqlcipher/database/SQLiteStatement;->bindNull(I)V

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->delegate:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Lnet/sqlcipher/database/SQLiteStatement;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public clearBindings()V
    .registers 2

    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->delegate:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->clearBindings()V

    return-void
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->delegate:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    return-void
.end method

.method public execute()V
    .registers 2

    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->delegate:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->execute()V

    return-void
.end method

.method public executeInsert()J
    .registers 3

    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->delegate:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRawStatement()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->delegate:Lnet/sqlcipher/database/SQLiteStatement;

    return-object v0
.end method

.method public simpleQueryForLong()J
    .registers 3

    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;->delegate:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method