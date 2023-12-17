.class public Lcom/xiaomi/onetrack/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AdMonitorManager"

.field private static final b:I = 0x32000

.field private static final c:I = 0x64

.field private static final d:I = 0x4

.field private static final e:I = 0x12c

.field private static final f:Ljava/lang/String; = "_id ASC"

.field private static final g:I = 0x7

.field private static h:Lcom/xiaomi/onetrack/a/a;


# instance fields
.field private final i:Lcom/xiaomi/onetrack/a/a$a;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/xiaomi/onetrack/a/a$a;

    .line 10
    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/a/a$a;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object v1, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    .line 15
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/a;->c()V

    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/a/a;Lcom/xiaomi/onetrack/a/b/a;)J
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/a;->a(Lcom/xiaomi/onetrack/a/b/a;)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Lcom/xiaomi/onetrack/a/b/a;)J
    .registers 10

    .line 18
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    monitor-enter v0

    const-wide/16 v1, -0x1

    .line 19
    :try_start_5
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->h()Z

    move-result v3

    if-nez v3, :cond_27

    const-string v3, "AdMonitorManager"

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAdMonitorToDatabase event is inValid, event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_a0

    .line 21
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_bd

    return-wide v1

    .line 22
    :cond_27
    :try_start_27
    iget-object v3, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 23
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "appid"

    .line 24
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "package"

    .line 25
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "event_name"

    .line 26
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "timestamp"

    .line 27
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "url"

    .line 28
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "monitor"

    const/4 v5, 0x0

    .line 29
    invoke-virtual {v3, p1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-string p1, "AdMonitorManager"

    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB-Thread: AdMonitorManager.addAdMonitorToDatabase , row="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-boolean p1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz p1, :cond_9e

    const-string p1, "AdMonitorManager"

    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "添加后，ad monitor url 中事件个数为 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/a;->e()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catchall {:try_start_27 .. :try_end_9e} :catchall_a0

    .line 33
    :cond_9e
    :try_start_9e
    monitor-exit v0

    return-wide v3

    :catchall_a0
    move-exception p1

    const-string v3, "AdMonitorManager"

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAdMonitorToDatabase Throwable："

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    monitor-exit v0

    return-wide v1

    :catchall_bd
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_9e .. :try_end_bf} :catchall_bd

    throw p1
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/a/a;)Lcom/xiaomi/onetrack/a/a$a;
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/a/a;
    .registers 1

    .line 3
    sget-object v0, Lcom/xiaomi/onetrack/a/a;->h:Lcom/xiaomi/onetrack/a/a;

    if-nez v0, :cond_b

    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/xiaomi/onetrack/a/a;->a(Landroid/content/Context;)V

    .line 6
    :cond_b
    sget-object v0, Lcom/xiaomi/onetrack/a/a;->h:Lcom/xiaomi/onetrack/a/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 7
    sget-object p0, Lcom/xiaomi/onetrack/a/a;->h:Lcom/xiaomi/onetrack/a/a;

    if-nez p0, :cond_17

    .line 8
    const-class p0, Lcom/xiaomi/onetrack/a/a;

    monitor-enter p0

    .line 9
    :try_start_7
    sget-object v0, Lcom/xiaomi/onetrack/a/a;->h:Lcom/xiaomi/onetrack/a/a;

    if-nez v0, :cond_12

    .line 10
    new-instance v0, Lcom/xiaomi/onetrack/a/a;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/a/a;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/a/a;->h:Lcom/xiaomi/onetrack/a/a;

    .line 11
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    :goto_17
    return-void
.end method

.method private f()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "monitor"

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 13
    const-string v0, "AdMonitorManager"

    .line 15
    const-string v1, "delete table monitor"

    .line 17
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 20
    goto :goto_18

    .line 21
    :catch_14
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    :goto_18
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_ba

    .line 38
    :try_start_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_bc

    if-nez v2, :cond_e

    goto/16 :goto_ba

    .line 39
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 40
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x10

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "_id"

    .line 43
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_4a
    if-ge v4, v3, :cond_5b

    const-string v6, ","

    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    :cond_5b
    const-string p1, ")"

    .line 47
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "monitor"

    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string v2, "AdMonitorManager"

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** *** deleted ad monitor count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-boolean v2, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v2, :cond_9f

    const-string v2, "AdMonitorManager"

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after delete ad monitor record remains="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/a;->e()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_9f} :catch_a1
    .catchall {:try_start_e .. :try_end_9f} :catchall_bc

    .line 52
    :cond_9f
    :try_start_9f
    monitor-exit v0

    return p1

    :catch_a1
    move-exception p1

    const-string v2, "AdMonitorManager"

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    monitor-exit v0

    return v1

    .line 55
    :cond_ba
    :goto_ba
    monitor-exit v0

    return v1

    :catchall_bc
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_be
    .catchall {:try_start_9f .. :try_end_be} :catchall_bc

    throw p1
.end method

.method public a(Lcom/xiaomi/onetrack/f/b;)V
    .registers 3

    .line 12
    :try_start_0
    new-instance v0, Lcom/xiaomi/onetrack/a/b;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/a/b;-><init>(Lcom/xiaomi/onetrack/a/a;Lcom/xiaomi/onetrack/f/b;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_20

    :catchall_9
    move-exception p1

    const-string v0, "filterAdMonitor Throwable："

    .line 13
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdMonitorManager"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-void
.end method

.method public a(JJI)Z
    .registers 9

    const/4 v0, 0x1

    if-gtz p5, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge p5, v1, :cond_1a

    sub-int/2addr p5, v0

    .line 57
    invoke-static {p5}, Lcom/xiaomi/onetrack/b/n;->a(I)I

    move-result p5

    sub-long/2addr p1, p3

    .line 58
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    int-to-long p3, p5

    cmp-long p1, p1, p3

    if-ltz p1, :cond_18

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    return v0

    :cond_1a
    return v2
.end method

.method public b()Lcom/xiaomi/onetrack/a/c/a;
    .registers 23

    move-object/from16 v7, p0

    .line 1
    iget-object v8, v7, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    monitor-enter v8

    const/4 v12, 0x0

    const/16 v17, 0x0

    .line 2
    :try_start_8
    iget-object v0, v7, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v10, "monitor"

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "_id ASC"

    .line 3
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_8 .. :try_end_1a} :catch_e7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_d7
    .catchall {:try_start_8 .. :try_end_1a} :catchall_d5

    :try_start_1a
    const-string v0, "_id"

    .line 4
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "appid"

    .line 5
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v1, "package"

    .line 6
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v1, "event_name"

    .line 7
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v1, "timestamp"

    .line 8
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v1, "url"

    .line 9
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v1, "send_count"

    .line 10
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 11
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v16, 0x0

    move/from16 v18, v16

    .line 13
    :goto_4e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 14
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 15
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v1, p0

    move-wide v2, v14

    move-wide/from16 v19, v4

    move/from16 v21, v6

    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/onetrack/a/a;->a(JJI)Z

    move-result v1

    if-nez v1, :cond_6a

    goto :goto_4e

    .line 17
    :cond_6a
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 18
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 19
    new-instance v3, Lcom/xiaomi/onetrack/a/b/a;

    invoke-direct {v3}, Lcom/xiaomi/onetrack/a/b/a;-><init>()V

    .line 20
    invoke-virtual {v3, v2}, Lcom/xiaomi/onetrack/a/b/a;->b(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, v1}, Lcom/xiaomi/onetrack/a/b/a;->a(I)V

    move-wide/from16 v1, v19

    .line 22
    invoke-virtual {v3, v1, v2}, Lcom/xiaomi/onetrack/a/b/a;->a(J)V

    move/from16 v1, v21

    .line 23
    invoke-virtual {v3, v1}, Lcom/xiaomi/onetrack/a/b/a;->b(I)V

    .line 24
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v18, 0x1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_91

    goto :goto_96

    :cond_91
    move/from16 v18, v1

    goto :goto_4e

    :cond_94
    move/from16 v1, v18

    .line 25
    :goto_96
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_c7

    const-string v0, "AdMonitorManager"

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get ad monitor size :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_c5

    const-string v0, "AdMonitorManager"

    const-string v3, "cursor isAfterLast"

    .line 28
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c7

    :cond_c5
    move/from16 v2, v16

    .line 29
    :cond_c7
    :goto_c7
    new-instance v0, Lcom/xiaomi/onetrack/a/c/a;

    invoke-direct {v0, v1, v13, v2}, Lcom/xiaomi/onetrack/a/c/a;-><init>(ILjava/util/ArrayList;Z)V
    :try_end_cc
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_1a .. :try_end_cc} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_cc} :catch_d1
    .catchall {:try_start_1a .. :try_end_cc} :catchall_f9

    .line 30
    :try_start_cc
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    monitor-exit v8
    :try_end_d0
    .catchall {:try_start_cc .. :try_end_d0} :catchall_102

    return-object v0

    :catch_d1
    move-exception v0

    goto :goto_da

    :catch_d3
    move-exception v0

    goto :goto_ea

    :catchall_d5
    move-exception v0

    goto :goto_fc

    :catch_d7
    move-exception v0

    move-object/from16 v9, v17

    :goto_da
    :try_start_da
    const-string v1, "AdMonitorManager"

    const-string v2, ""

    .line 31
    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e1
    .catchall {:try_start_da .. :try_end_e1} :catchall_f9

    if-eqz v9, :cond_f7

    .line 32
    :goto_e3
    :try_start_e3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_102

    goto :goto_f7

    :catch_e7
    move-exception v0

    move-object/from16 v9, v17

    :goto_ea
    :try_start_ea
    const-string v1, "AdMonitorManager"

    const-string v2, "blob too big ***"

    .line 33
    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/a/a;->f()V
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_f9

    if-eqz v9, :cond_f7

    goto :goto_e3

    .line 35
    :cond_f7
    :goto_f7
    :try_start_f7
    monitor-exit v8

    return-object v17

    :catchall_f9
    move-exception v0

    move-object/from16 v17, v9

    :goto_fc
    if-eqz v17, :cond_101

    .line 36
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 37
    :cond_101
    throw v0

    :catchall_102
    move-exception v0

    .line 38
    monitor-exit v8
    :try_end_104
    .catchall {:try_start_f7 .. :try_end_104} :catchall_102

    throw v0
.end method

.method public b(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    monitor-enter v0

    if-eqz p1, :cond_fc

    .line 40
    :try_start_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_df

    if-gtz v1, :cond_d

    goto/16 :goto_fc

    :cond_d
    const/4 v1, 0x0

    .line 41
    :try_start_e
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "update %s set %s = %s + 1 where %s = %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "monitor"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "send_count"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "send_count"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1b

    .line 45
    :cond_53
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_56} :catch_7d
    .catchall {:try_start_e .. :try_end_56} :catchall_7b

    .line 46
    :try_start_56
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 47
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5c} :catch_5e
    .catchall {:try_start_56 .. :try_end_5c} :catchall_df

    goto/16 :goto_fa

    :catch_5e
    move-exception p1

    :try_start_5f
    const-string v1, "AdMonitorManager"

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAdMonitorsRetryCount endTransaction error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_76
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_5f .. :try_end_79} :catchall_df

    goto/16 :goto_fa

    :catchall_7b
    move-exception p1

    goto :goto_ba

    :catch_7d
    move-exception p1

    :try_start_7e
    const-string v2, "AdMonitorManager"

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAdMonitorsRetryCount Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_7e .. :try_end_98} :catchall_7b

    if-eqz v1, :cond_fa

    .line 50
    :try_start_9a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 51
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a0} :catch_a1
    .catchall {:try_start_9a .. :try_end_a0} :catchall_df

    goto :goto_fa

    :catch_a1
    move-exception p1

    :try_start_a2
    const-string v1, "AdMonitorManager"

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAdMonitorsRetryCount endTransaction error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_b9
    .catchall {:try_start_a2 .. :try_end_b9} :catchall_df

    goto :goto_76

    :goto_ba
    if-eqz v1, :cond_de

    .line 53
    :try_start_bc
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 54
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c2} :catch_c3
    .catchall {:try_start_bc .. :try_end_c2} :catchall_df

    goto :goto_de

    :catch_c3
    move-exception v1

    :try_start_c4
    const-string v2, "AdMonitorManager"

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAdMonitorsRetryCount endTransaction error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_de
    :goto_de
    throw p1
    :try_end_df
    .catchall {:try_start_c4 .. :try_end_df} :catchall_df

    :catchall_df
    move-exception p1

    :try_start_e0
    const-string v1, "AdMonitorManager"

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAdMonitorsRetryCount Throwable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_fa
    :goto_fa
    monitor-exit v0

    return-void

    .line 59
    :cond_fc
    :goto_fc
    monitor-exit v0

    return-void

    :catchall_fe
    move-exception p1

    .line 60
    monitor-exit v0
    :try_end_100
    .catchall {:try_start_e0 .. :try_end_100} :catchall_fe

    throw p1
.end method

.method public c()V
    .registers 2

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/a/c;

    .line 3
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/a/c;-><init>(Lcom/xiaomi/onetrack/a/a;)V

    .line 6
    invoke-static {v0}, Lcom/xiaomi/onetrack/a/a/a;->a(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public d()V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_4
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    .line 7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    move-result-object v2

    .line 11
    const-string v11, "send_count >= ? "

    .line 13
    const/4 v3, 0x1

    .line 14
    new-array v12, v3, [Ljava/lang/String;

    .line 16
    const/4 v3, 0x0

    .line 17
    const-wide/16 v4, 0x4

    .line 19
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 22
    move-result-object v4

    .line 23
    aput-object v4, v12, v3

    .line 25
    const-string v4, "monitor"

    .line 27
    const-string v3, "timestamp"

    .line 29
    filled-new-array {v3}, [Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x0

    .line 35
    const-string v10, "_id ASC"

    .line 37
    move-object v3, v2

    .line 38
    move-object v6, v11

    .line 39
    move-object v7, v12

    .line 40
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_4d

    .line 50
    const-string v3, "monitor"

    .line 52
    invoke-virtual {v2, v3, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 55
    move-result v2

    .line 56
    const-string v3, "AdMonitorManager"

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v5, "*** deleted obsolete ad monitor count="

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_4d
    sget-boolean v2, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 80
    if-eqz v2, :cond_6b

    .line 82
    const-string v2, "AdMonitorManager"

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string v4, "after delete obsolete ad monitor record remains="

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/a;->e()J

    .line 97
    move-result-wide v4

    .line 98
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6b} :catch_71
    .catchall {:try_start_4 .. :try_end_6b} :catchall_6f

    .line 108
    :cond_6b
    :goto_6b
    :try_start_6b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_93

    .line 111
    goto :goto_8b

    .line 112
    :catchall_6f
    move-exception v2

    .line 113
    goto :goto_8d

    .line 114
    :catch_71
    move-exception v2

    .line 115
    :try_start_72
    const-string v3, "AdMonitorManager"

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    const-string v5, "remove obsolete ad monitor failed with "

    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v2

    .line 134
    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_72 .. :try_end_88} :catchall_6f

    .line 137
    if-eqz v1, :cond_8b

    .line 139
    goto :goto_6b

    .line 140
    :cond_8b
    :goto_8b
    :try_start_8b
    monitor-exit v0

    .line 141
    return-void

    .line 142
    :goto_8d
    if-eqz v1, :cond_92

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_92
    throw v2

    .line 148
    :catchall_93
    move-exception v1

    .line 149
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_8b .. :try_end_95} :catchall_93

    .line 150
    throw v1
.end method

.method public e()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "monitor"

    .line 9
    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method
