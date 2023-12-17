.class public Lcom/micloud/midrive/database/AccountDatabaseModel;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AccountDatabaseModel.java"


# static fields
.field private static final COLUMN_STR_ACCOUNT_KEY:Ljava/lang/String; = "account_key"

.field private static final COLUMN_STR_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final COLUMN_STR_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field private static final TABLE_ACCOUNT_INFO:Ljava/lang/String; = "account_info"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE account_info ( account_key TEXT PRIMARY KEY, account_name TEXT, account_type TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private dropSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "DROP TABLE IF EXISTS account_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static queryAccountOrNull(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/accounts/Account;
    .registers 11

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const-string v2, "account_info"

    const/4 v3, 0x0

    const-string v4, "account_key=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_13
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_36

    const-string p1, "account_name"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "account_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, p1, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_3b

    invoke-static {p0}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    return-object v1

    :cond_36
    invoke-static {p0}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    return-object p0

    :catchall_3b
    move-exception p1

    invoke-static {p0}, Lcom/micloud/midrive/utils/AutoClose;->closeQuietlyAllowNull(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static updateAccount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/accounts/Account;)J
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "account_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string p2, "account_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "account_info"

    const/4 p2, 0x0

    const/4 v1, 0x5

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->createSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->createSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/micloud/midrive/database/AccountDatabaseModel;->dropSessionJobTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
