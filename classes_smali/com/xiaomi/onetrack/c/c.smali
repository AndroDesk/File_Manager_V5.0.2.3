.class public Lcom/xiaomi/onetrack/c/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/c/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "EventManager"

.field private static final b:Z = false

.field private static final c:I = 0x32000

.field private static final d:I = 0x4b000

.field private static final e:I = 0x12c

.field private static final f:Ljava/lang/String; = "priority ASC, _id ASC"

.field private static final g:I = 0x7

.field private static h:Lcom/xiaomi/onetrack/c/c;

.field private static j:Landroid/content/BroadcastReceiver;


# instance fields
.field private i:Lcom/xiaomi/onetrack/c/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/c/d;

    .line 3
    invoke-direct {v0}, Lcom/xiaomi/onetrack/c/d;-><init>()V

    .line 6
    sput-object v0, Lcom/xiaomi/onetrack/c/c;->j:Landroid/content/BroadcastReceiver;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/xiaomi/onetrack/c/c$a;

    .line 10
    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/c/c$a;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object v1, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    .line 15
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/c/c;->b()V

    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/c/c;)Lcom/xiaomi/onetrack/c/c$a;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/c/c;
    .registers 1

    .line 3
    sget-object v0, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    if-nez v0, :cond_b

    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/c;->a(Landroid/content/Context;)V

    .line 6
    :cond_b
    sget-object v0, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    .line 77
    invoke-static {}, Lcom/xiaomi/onetrack/d/c;->a()[B

    move-result-object v0

    const/4 v1, 0x1

    .line 78
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/d/d;->a([BZ)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/a;->b([B[B)[B

    move-result-object p0

    .line 80
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .line 7
    sget-object v0, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    if-nez v0, :cond_17

    .line 8
    const-class v0, Lcom/xiaomi/onetrack/c/c;

    monitor-enter v0

    .line 9
    :try_start_7
    sget-object v1, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    if-nez v1, :cond_12

    .line 10
    new-instance v1, Lcom/xiaomi/onetrack/c/c;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/c/c;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/c/c;->h:Lcom/xiaomi/onetrack/c/c;

    .line 11
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 12
    :cond_17
    :goto_17
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/c/c;Lcom/xiaomi/onetrack/f/b;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/c/c;->b(Lcom/xiaomi/onetrack/f/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 3

    .line 74
    invoke-static {}, Lcom/xiaomi/onetrack/d/c;->a()[B

    move-result-object v0

    const/4 v1, 0x1

    .line 75
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/d/d;->a([BZ)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/a;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/xiaomi/onetrack/c/c;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private b(Lcom/xiaomi/onetrack/f/b;)V
    .registers 8

    .line 5
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    monitor-enter v0

    .line 6
    :try_start_3
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->i()Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "EventManager"

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEventToDatabase event is inValid, event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_25
    iget-object v1, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 10
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "appid"

    .line 11
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "package"

    .line 12
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "event_name"

    .line 13
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "priority"

    .line 14
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "timestamp"

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->g()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/onetrack/c/c;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 17
    array-length v4, v3

    const v5, 0x32000

    if-le v4, v5, :cond_80

    const-string p1, "EventManager"

    const-string v1, "Too large data, discard ***"

    .line 18
    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    monitor-exit v0

    return-void

    :cond_80
    const-string v4, "data"

    .line 20
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "events"

    const/4 v4, 0x0

    .line 21
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-string v3, "EventManager"

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB-Thread: EventManager.addEventToDatabase , row="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_dd

    .line 23
    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v1, :cond_c6

    const-string v1, "EventManager"

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "添加后，DB 中事件个数为 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/c/c;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_c6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "onetrack_active"

    .line 26
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d9

    .line 27
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/aa;->a(J)V

    :cond_d9
    const/4 p1, 0x0

    .line 28
    invoke-static {p1}, Lcom/xiaomi/onetrack/b/n;->a(Z)V

    .line 29
    :cond_dd
    monitor-exit v0

    return-void

    :catchall_df
    move-exception p1

    monitor-exit v0
    :try_end_e1
    .catchall {:try_start_3 .. :try_end_e1} :catchall_df

    throw p1
.end method

.method private d()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "events"

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 13
    const-string v0, "EventManager"

    .line 15
    const-string v1, "delete table events"

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
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_c5

    .line 54
    :try_start_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_c7

    if-nez v2, :cond_e

    goto/16 :goto_c5

    .line 55
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 56
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x10

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "_id"

    .line 59
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v4

    :goto_4a
    if-ge v6, v3, :cond_5b

    const-string v7, ","

    .line 62
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    :cond_5b
    const-string p1, ")"

    .line 63
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "events"

    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string v2, "EventManager"

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleted events count "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/xiaomi/onetrack/c/c;->a()Lcom/xiaomi/onetrack/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/c/c;->c()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-nez v5, :cond_90

    goto :goto_91

    :cond_90
    move v4, v1

    .line 67
    :goto_91
    invoke-static {v4}, Lcom/xiaomi/onetrack/b/n;->a(Z)V

    const-string v4, "EventManager"

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after delete DB record remains="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_aa} :catch_ac
    .catchall {:try_start_e .. :try_end_aa} :catchall_c7

    .line 69
    :try_start_aa
    monitor-exit v0

    return p1

    :catch_ac
    move-exception p1

    const-string v2, "EventManager"

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    monitor-exit v0

    return v1

    .line 72
    :cond_c5
    :goto_c5
    monitor-exit v0

    return v1

    :catchall_c7
    move-exception p1

    .line 73
    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_aa .. :try_end_c9} :catchall_c7

    throw p1
.end method

.method public a(I)Lcom/xiaomi/onetrack/c/h;
    .registers 23

    move/from16 v1, p1

    const-string v2, "EventManager"

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object/from16 v12, p0

    .line 15
    :try_start_8
    iget-object v0, v12, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "events"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "priority ASC, _id ASC"

    .line 16
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_8 .. :try_end_1a} :catch_110
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_103
    .catchall {:try_start_8 .. :try_end_1a} :catchall_101

    :try_start_1a
    const-string v0, "_id"

    .line 17
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "appid"

    .line 18
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "package"

    .line 19
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v0, "event_name"

    .line 20
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v0, "priority"

    .line 21
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v0, "data"

    .line 22
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v0, "timestamp"

    .line 23
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 24
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 25
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 26
    :goto_50
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_d9

    .line 27
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 28
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 29
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 30
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    if-eqz v19, :cond_6d

    .line 31
    invoke-static/range {v19 .. v19}, Lcom/xiaomi/onetrack/c/c;->a([B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v13, v19

    goto :goto_6e

    :cond_6d
    move-object v13, v11

    :goto_6e
    if-eqz v0, :cond_99

    .line 32
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-le v0, v1, :cond_96

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No records of priority["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], first record priority="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_92
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_1a .. :try_end_92} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_92} :catch_fd
    .catchall {:try_start_1a .. :try_end_92} :catchall_11e

    .line 34
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v11

    :cond_96
    const/16 v20, 0x0

    goto :goto_9b

    :cond_99
    move/from16 v20, v0

    .line 35
    :goto_9b
    :try_start_9b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_a0
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_9b .. :try_end_a0} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a0} :catch_fd
    .catchall {:try_start_9b .. :try_end_a0} :catchall_11e

    .line 36
    :try_start_a0
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 37
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_aa} :catch_ad
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_11e

    add-int/lit8 v15, v15, 0x1

    goto :goto_b3

    :catch_ad
    move-exception v0

    :try_start_ae
    const-string v14, "*** error ***"

    .line 38
    invoke-static {v2, v14, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    :goto_b3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, v16, v0

    const v13, 0x4b000

    if-lt v0, v13, :cond_d3

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reached max len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d9

    :cond_d3
    move/from16 v16, v0

    move/from16 v0, v20

    goto/16 :goto_50

    .line 41
    :cond_d9
    :goto_d9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10c

    .line 42
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string v0, "cursor isAfterLast"

    .line 43
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ea
    const/4 v13, 0x1

    goto :goto_f4

    .line 44
    :cond_ec
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-le v0, v1, :cond_f3

    goto :goto_ea

    :cond_f3
    const/4 v13, 0x0

    .line 45
    :goto_f4
    new-instance v0, Lcom/xiaomi/onetrack/c/h;

    invoke-direct {v0, v9, v15, v10, v13}, Lcom/xiaomi/onetrack/c/h;-><init>(Lorg/json/JSONArray;ILjava/util/ArrayList;Z)V
    :try_end_f9
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_ae .. :try_end_f9} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_f9} :catch_fd
    .catchall {:try_start_ae .. :try_end_f9} :catchall_11e

    .line 46
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v0

    :catch_fd
    move-exception v0

    goto :goto_105

    :catch_ff
    move-exception v0

    goto :goto_112

    :catchall_101
    move-exception v0

    goto :goto_120

    :catch_103
    move-exception v0

    move-object v3, v11

    :goto_105
    :try_start_105
    const-string v1, ""

    .line 47
    invoke-static {v2, v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10a
    .catchall {:try_start_105 .. :try_end_10a} :catchall_11e

    if-eqz v3, :cond_11d

    .line 48
    :cond_10c
    :goto_10c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_11d

    :catch_110
    move-exception v0

    move-object v3, v11

    :goto_112
    :try_start_112
    const-string v1, "blob too big ***"

    .line 49
    invoke-static {v2, v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/c/c;->d()V
    :try_end_11a
    .catchall {:try_start_112 .. :try_end_11a} :catchall_11e

    if-eqz v3, :cond_11d

    goto :goto_10c

    :cond_11d
    :goto_11d
    return-object v11

    :catchall_11e
    move-exception v0

    move-object v11, v3

    :goto_120
    if-eqz v11, :cond_125

    .line 51
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_125
    throw v0
.end method

.method public declared-synchronized a(Lcom/xiaomi/onetrack/f/b;)V
    .registers 3

    monitor-enter p0

    .line 13
    :try_start_1
    new-instance v0, Lcom/xiaomi/onetrack/c/f;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/c/f;-><init>(Lcom/xiaomi/onetrack/c/c;Lcom/xiaomi/onetrack/f/b;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 14
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .registers 2

    .line 30
    new-instance v0, Lcom/xiaomi/onetrack/c/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/c/g;-><init>(Lcom/xiaomi/onetrack/c/c;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/c;->i:Lcom/xiaomi/onetrack/c/c$a;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "events"

    .line 9
    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method
