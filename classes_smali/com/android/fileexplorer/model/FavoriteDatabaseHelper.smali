.class public Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FavoriteDatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "file_explorer"

.field private static final DATABASE_VERSION:I

.field private static final FIELD_ID:Ljava/lang/String; = "_id"

.field public static final FIELD_LOCATION:Ljava/lang/String; = "location"

.field private static final FIELD_TITLE:Ljava/lang/String; = "title"

.field private static final TABLE_NAME:Ljava/lang/String; = "favorite"

.field private static final TAG:Ljava/lang/String; = "FavoriteDatabaseHelper"

.field private static instance:Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private firstCreate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->DATABASE_VERSION:I

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "file_explorer"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    :try_start_b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12

    goto :goto_1b

    :catch_12
    const-class v0, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;

    const-string v0, "FavoriteDatabaseHelper"

    const-string v1, "Cannot open database"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->instance:Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;

    invoke-direct {v1}, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->instance:Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;

    :cond_e
    sget-object v1, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->instance:Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getFavListInLowerCase(Ljava/util/List;)Ljava/util/HashSet;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_7f

    if-nez v1, :cond_c

    monitor-exit p0

    return-object v0

    :cond_c
    :try_start_c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_7f

    if-eqz v1, :cond_14

    monitor-exit p0

    return-object v0

    :cond_14
    :try_start_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_2c

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    const-string v4, "?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_34
    const-string v3, "location"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lower(location) in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v8, v1, [Ljava/lang/String;

    invoke-interface {p1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "favorite"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_64
    .catchall {:try_start_14 .. :try_end_64} :catchall_7f

    if-nez p1, :cond_68

    monitor-exit p0

    return-object v0

    :cond_68
    :goto_68
    :try_start_68
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_7a
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_7d
    .catchall {:try_start_68 .. :try_end_7d} :catchall_7f

    monitor-exit p0

    return-object v0

    :catchall_7f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "Create table favorite(_id integer primary key autoincrement,title text, location text );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->firstCreate:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string p2, " DROP TABLE IF EXISTS favorite"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
