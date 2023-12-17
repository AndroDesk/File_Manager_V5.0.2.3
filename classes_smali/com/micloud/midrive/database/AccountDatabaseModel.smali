.class public Lcom/micloud/midrive/database/AccountDatabaseModel;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AccountDatabaseModel.java"


# static fields
.field private static final COLUMN_STR_ACCOUNT_KEY:Ljava/lang/String; = "account_key"

.field private static final COLUMN_STR_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final COLUMN_STR_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field private static final TABLE_ACCOUNT_INFO:Ljava/lang/String; = "account_info"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 4
    return-void
.end method

.method private createSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 1
    const-string v0, "CREATE TABLE account_info ( account_key TEXT PRIMARY KEY, account_name TEXT, account_type TEXT );"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private dropSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 1
    const-string v0, "DROP TABLE IF EXISTS account_info"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static queryAccountOrNull(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/accounts/Account;
    .registers 11

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v5, v0, [Ljava/lang/String;

    .line 4
    const/4 v0, 0x0

    .line 5
    aput-object p1, v5, v0

    .line 7
    const-string v2, "account_info"

    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "account_key=?"

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    move-object v1, p0

    .line 16
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 19
    move-result-object p0

    .line 20
    :try_start_13
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_36

    .line 26
    const-string p1, "account_name"

    .line 28
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 31
    move-result p1

    .line 32
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    const-string v0, "account_type"

    .line 38
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 41
    move-result v0

    .line 42
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Landroid/accounts/Account;

    .line 48
    invoke-direct {v1, p1, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_3b

    .line 51
    invoke-static {p0}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    .line 54
    return-object v1

    .line 55
    :cond_36
    invoke-static {p0}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    .line 58
    const/4 p0, 0x0

    .line 59
    return-object p0

    .line 60
    :catchall_3b
    move-exception p1

    .line 61
    invoke-static {p0}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    .line 64
    throw p1
.end method

.method public static updateAccount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/accounts/Account;)J
    .registers 5

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    const-string v1, "account_key"

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 13
    const-string v1, "account_name"

    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 20
    const-string p2, "account_type"

    .line 22
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string p1, "account_info"

    .line 27
    const/4 p2, 0x0

    .line 28
    const/4 v1, 0x5

    .line 29
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 32
    move-result-wide p0

    .line 33
    return-wide p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->createSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->createSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->dropSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7
    return-void
.end method
