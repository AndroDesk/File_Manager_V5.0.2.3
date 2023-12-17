.class public Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FavoriteDatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "file_explorer"

.field private static final DATABASE_VERSION:I = 0x1

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
.method private constructor <init>()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "file_explorer"

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 12
    :try_start_b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12

    .line 18
    goto :goto_1b

    .line 19
    :catch_12
    const-class v0, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;

    .line 21
    const-string v0, "FavoriteDatabaseHelper"

    .line 23
    const-string v1, "Cannot open database"

    .line 25
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_1b
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;
    .registers 2

    .line 1
    const-class v0, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->instance:Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;

    .line 6
    if-nez v1, :cond_e

    .line 8
    new-instance v1, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;

    .line 10
    invoke-direct {v1}, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;-><init>()V

    .line 13
    sput-object v1, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->instance:Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;

    .line 15
    :cond_e
    sget-object v1, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->instance:Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_12
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    .line 4
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_7f

    .line 9
    if-nez v1, :cond_c

    .line 11
    monitor-exit p0

    .line 12
    return-object v0

    .line 13
    :cond_c
    :try_start_c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_7f

    .line 17
    if-eqz v1, :cond_14

    .line 19
    monitor-exit p0

    .line 20
    return-object v0

    .line 21
    :cond_14
    :try_start_14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const/4 v2, 0x0

    .line 27
    move v3, v2

    .line 28
    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 31
    move-result v4

    .line 32
    if-ge v3, v4, :cond_34

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2c

    .line 40
    const-string v4, ","

    .line 42
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_2c
    const-string v4, "?"

    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 52
    goto :goto_1b

    .line 53
    :cond_34
    const-string v3, "location"

    .line 55
    filled-new-array {v3}, [Ljava/lang/String;

    .line 58
    move-result-object v6

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v4, "lower(location) in ("

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ")"

    .line 74
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v7

    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 84
    move-result v1

    .line 85
    new-array v8, v1, [Ljava/lang/String;

    .line 87
    invoke-interface {p1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    iget-object v4, p0, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 92
    const-string v5, "favorite"

    .line 94
    const/4 v9, 0x0

    .line 95
    const/4 v10, 0x0

    .line 96
    const/4 v11, 0x0

    .line 97
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 100
    move-result-object p1
    :try_end_64
    .catchall {:try_start_14 .. :try_end_64} :catchall_7f

    .line 101
    if-nez p1, :cond_68

    .line 103
    monitor-exit p0

    .line 104
    return-object v0

    .line 105
    :cond_68
    :goto_68
    :try_start_68
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_7a

    .line 111
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    goto :goto_68

    .line 123
    :cond_7a
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_7d
    .catchall {:try_start_68 .. :try_end_7d} :catchall_7f

    .line 126
    monitor-exit p0

    .line 127
    return-object v0

    .line 128
    :catchall_7f
    move-exception p1

    .line 129
    monitor-exit p0

    .line 130
    throw p1
.end method

.method public declared-synchronized onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "Create table favorite(_id integer primary key autoincrement,title text, location text );"

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->firstCreate:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string p2, " DROP TABLE IF EXISTS favorite"

    .line 4
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/FavoriteDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method
