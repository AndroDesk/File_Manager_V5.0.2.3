.class Lorg/greenrobot/greendao/database/SqlCipherEncryptedHelper;
.super Lnet/sqlcipher/database/SQLiteOpenHelper;
.source "SqlCipherEncryptedHelper.java"

# interfaces
.implements Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;


# instance fields
.field private final delegate:Lorg/greenrobot/greendao/database/DatabaseOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/DatabaseOpenHelper;Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lorg/greenrobot/greendao/database/SqlCipherEncryptedHelper;->delegate:Lorg/greenrobot/greendao/database/DatabaseOpenHelper;

    if-eqz p5, :cond_b

    invoke-static {p2}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    :cond_b
    return-void
.end method

.method private wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;
    .registers 3

    new-instance v0, Lorg/greenrobot/greendao/database/EncryptedDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/EncryptedDatabase;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;)V

    return-object v0
.end method


# virtual methods
.method public getEncryptedReadableDb(Ljava/lang/String;)Lorg/greenrobot/greendao/database/Database;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/SqlCipherEncryptedHelper;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/database/SqlCipherEncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    return-object p1
.end method

.method public getEncryptedReadableDb([C)Lorg/greenrobot/greendao/database/Database;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/SqlCipherEncryptedHelper;->getReadableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/database/SqlCipherEncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    return-object p1
.end method

.method public getEncryptedWritableDb(Ljava/lang/String;)Lorg/greenrobot/greendao/database/Database;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/SqlCipherEncryptedHelper;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/database/SqlCipherEncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    return-object p1
.end method

.method public getEncryptedWritableDb([C)Lorg/greenrobot/greendao/database/Database;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/SqlCipherEncryptedHelper;->getWritableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/database/SqlCipherEncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .registers 3

    iget-object v0, p0, Lorg/greenrobot/greendao/database/SqlCipherEncryptedHelper;->delegate:Lorg/greenrobot/greendao/database/DatabaseOpenHelper;

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/database/SqlCipherEncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onCreate(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public onOpen(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .registers 3

    iget-object v0, p0, Lorg/greenrobot/greendao/database/SqlCipherEncryptedHelper;->delegate:Lorg/greenrobot/greendao/database/DatabaseOpenHelper;

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/database/SqlCipherEncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onOpen(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .registers 5

    iget-object v0, p0, Lorg/greenrobot/greendao/database/SqlCipherEncryptedHelper;->delegate:Lorg/greenrobot/greendao/database/DatabaseOpenHelper;

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/database/SqlCipherEncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V

    return-void
.end method
