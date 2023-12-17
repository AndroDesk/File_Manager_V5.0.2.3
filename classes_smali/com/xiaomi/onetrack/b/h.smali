.class public Lcom/xiaomi/onetrack/b/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/b/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ConfigDbManager"

.field private static final e:I = 0x64


# instance fields
.field private b:Lcom/xiaomi/onetrack/b/g;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/onetrack/b/l;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/b/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/xiaomi/onetrack/b/g;

    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/b/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/onetrack/b/h;->b:Lcom/xiaomi/onetrack/b/g;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/onetrack/b/i;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/b/h;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/json/JSONObject;)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/h;->b(Lorg/json/JSONObject;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/b/h;)Lcom/xiaomi/onetrack/b/g;
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/xiaomi/onetrack/b/h;->b:Lcom/xiaomi/onetrack/b/g;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/b/h;
    .registers 1

    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/b/h$a;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/b/h;Ljava/util/ArrayList;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/b/h;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;)I
    .registers 3

    const/16 v0, 0x64

    :try_start_2
    const-string v1, "sample"

    .line 43
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_f

    if-ltz p0, :cond_26

    if-le p0, v0, :cond_d

    goto :goto_26

    :cond_d
    move v0, p0

    goto :goto_26

    :catch_f
    move-exception p0

    const-string v1, "getCommonSample Exception:"

    .line 44
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ConfigDbManager"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_26
    return v0
.end method

.method private b(Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/onetrack/b/l;",
            ">;)V"
        }
    .end annotation

    const-string v0, "events_cloud"

    const-string v1, "Exception while endTransaction:"

    const-string v2, "ConfigDbManager"

    const/4 v3, 0x0

    .line 1
    :try_start_7
    iget-object v4, p0, Lcom/xiaomi/onetrack/b/h;->b:Lcom/xiaomi/onetrack/b/g;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_b9
    .catchall {:try_start_7 .. :try_end_d} :catchall_b7

    .line 2
    :try_start_d
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v5, "app_id=?"

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/onetrack/b/l;

    .line 4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "app_id"

    .line 5
    iget-object v9, v6, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "timestamp"

    .line 6
    iget-wide v9, v6, Lcom/xiaomi/onetrack/b/l;->c:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7
    iget-object v8, v6, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    if-eqz v8, :cond_46

    const-string v9, "cloud_data"

    .line 8
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_46
    iget-object v8, v6, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    if-eqz v8, :cond_4f

    const-string v9, "data_hash"

    .line 10
    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    .line 11
    iget-object v10, v6, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v4, v0, v5, v9}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v12, 0x0

    cmp-long v9, v9, v12

    if-lez v9, :cond_80

    new-array v8, v8, [Ljava/lang/String;

    .line 12
    iget-object v9, v6, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-virtual {v4, v0, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "database updated, row: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    .line 14
    :cond_80
    invoke-virtual {v4, v0, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "database inserted, row: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :goto_98
    iget-object v7, p0, Lcom/xiaomi/onetrack/b/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v6, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_16

    .line 17
    :cond_a3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_a6} :catch_b4
    .catchall {:try_start_d .. :try_end_a6} :catchall_b1

    .line 18
    :try_start_a6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_aa

    goto :goto_d8

    :catch_aa
    move-exception p1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_cb

    :catchall_b1
    move-exception p1

    move-object v3, v4

    goto :goto_d9

    :catch_b4
    move-exception p1

    move-object v3, v4

    goto :goto_ba

    :catchall_b7
    move-exception p1

    goto :goto_d9

    :catch_b9
    move-exception p1

    :goto_ba
    :try_start_ba
    const-string v0, "updateToDb error: "

    .line 20
    invoke-static {v2, v0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_bf
    .catchall {:try_start_ba .. :try_end_bf} :catchall_b7

    if-eqz v3, :cond_d8

    .line 21
    :try_start_c1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c4} :catch_c5

    goto :goto_d8

    :catch_c5
    move-exception p1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d8
    :goto_d8
    return-void

    :goto_d9
    if-eqz v3, :cond_f2

    .line 23
    :try_start_db
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_de} :catch_df

    goto :goto_f2

    :catch_df
    move-exception v0

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_f2
    :goto_f2
    throw p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8

    const-string v0, "ConfigDbManager"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_89

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_89

    .line 2
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/xiaomi/onetrack/b/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/xiaomi/onetrack/b/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/b/h;->b(Ljava/lang/String;)V

    .line 4
    :cond_32
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/onetrack/b/l;

    if-eqz p1, :cond_89

    .line 5
    iget-object p1, p1, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    if-eqz p1, :cond_89

    const-string v1, "events"

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_89

    const/4 v1, 0x0

    .line 7
    :goto_49
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_89

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "event"

    .line 9
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 10
    sget-boolean p1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz p1, :cond_7b

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getEventConfig:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_7b} :catch_7f

    :cond_7b
    return-object v3

    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :catch_7f
    move-exception p1

    const-string p2, "getEventConfig error: "

    .line 12
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 13
    invoke-static {p1, p2, v0}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_89
    :goto_89
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)D
    .registers 7

    const-string v0, "ConfigDbManager"

    .line 59
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/b/h;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_e

    const-string p1, "config not available, use default value"

    .line 60
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p4

    .line 61
    :cond_e
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    return-wide p1

    :catch_13
    move-exception p1

    const-string p2, "getDouble: "

    .line 62
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 63
    invoke-static {p1, p2, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-wide p4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    const-string v0, "ConfigDbManager"

    .line 35
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/b/h;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_e

    const-string p1, "config not available, use default value"

    .line 36
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p4

    .line 37
    :cond_e
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    return p1

    :catch_13
    move-exception p1

    const-string p2, "getInt: "

    .line 38
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 39
    invoke-static {p1, p2, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return p4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 7

    const-string v0, "ConfigDbManager"

    .line 47
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/b/h;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_e

    const-string p1, "config not available, use default value"

    .line 48
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p4

    .line 49
    :cond_e
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    return-wide p1

    :catch_13
    move-exception p1

    const-string p2, "getLong: "

    .line 50
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 51
    invoke-static {p1, p2, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-wide p4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "ConfigDbManager"

    .line 23
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/b/h;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_e

    const-string p1, "config not available, use default value"

    .line 24
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4

    .line 25
    :cond_e
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    const-string p2, "getString: "

    .line 26
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 27
    invoke-static {p1, p2, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object p4
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 6
    new-instance v0, Lcom/xiaomi/onetrack/b/j;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/b/j;-><init>(Lcom/xiaomi/onetrack/b/h;Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 8
    invoke-static {p1}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V

    .line 9
    :try_start_e
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_16
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/onetrack/b/l;",
            ">;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/xiaomi/onetrack/b/i;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/b/i;-><init>(Lcom/xiaomi/onetrack/b/h;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 71
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 72
    iget-object v0, p1, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    if-eqz v0, :cond_23

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 73
    iget-object p1, p1, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return p1

    :catch_17
    move-exception p1

    const-string p2, "getAppLevelBoolean"

    .line 74
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "ConfigDbManager"

    .line 75
    invoke-static {p1, p2, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_23
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    const-string v0, "ConfigDbManager"

    .line 11
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/b/h;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_e

    const-string p1, "config not available, use default value"

    .line 12
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p4

    .line 13
    :cond_e
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    return p1

    :catch_13
    move-exception p1

    const-string p2, "getBoolean: "

    .line 14
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 15
    invoke-static {p1, p2, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return p4
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)J
    .registers 9

    const-string v0, "ConfigDbManager"

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x64

    if-eqz v1, :cond_b

    return-wide v2

    .line 50
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    .line 51
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/b/h;->b(Ljava/lang/String;)V

    .line 52
    :cond_16
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6a

    const-string v1, "sample"

    const/4 v4, -0x1

    .line 53
    invoke-virtual {p0, p1, p2, v1, v4}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v4, :cond_4a

    .line 54
    iget-object v1, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/onetrack/b/l;

    if-eqz p1, :cond_4a

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "will return common sample "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/xiaomi/onetrack/b/l;->b:J

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-wide p1, p1, Lcom/xiaomi/onetrack/b/l;->b:J

    return-wide p1

    .line 57
    :cond_4a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "will return event sample "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5e} :catch_60

    int-to-long p1, p2

    return-wide p1

    :catch_60
    move-exception p1

    const-string p2, "getAppEventSample"

    .line 58
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 59
    invoke-static {p1, p2, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6a
    const-string p1, "will return def sample"

    .line 60
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2
.end method

.method public b(Ljava/lang/String;)V
    .registers 7

    const-string v0, "ConfigDbManager"

    .line 26
    new-instance v1, Lcom/xiaomi/onetrack/b/k;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/b/k;-><init>(Lcom/xiaomi/onetrack/b/h;Ljava/lang/String;)V

    .line 27
    new-instance v2, Ljava/util/concurrent/FutureTask;

    invoke-direct {v2, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 28
    invoke-static {v2}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x5

    .line 29
    :try_start_11
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/onetrack/b/l;

    if-eqz v1, :cond_56

    .line 30
    iget-object v2, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v2, p0, Lcom/xiaomi/onetrack/b/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-boolean v2, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v2, :cond_56

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig   appId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " config: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/b/l;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4b} :catch_4c

    goto :goto_56

    :catch_4c
    move-exception p1

    const-string v1, "getConfig error: "

    .line 34
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 35
    invoke-static {p1, v1, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 21
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 22
    iget-object p1, p1, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    if-eqz p1, :cond_11

    const-string v0, "bannedParams"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_11
    const-string p1, ""

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    iget-object p1, p1, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    .line 9
    return-object p1

    .line 10
    :cond_9
    const-string p1, ""

    .line 12
    return-object p1
.end method

.method public e(Ljava/lang/String;)I
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_11

    .line 7
    iget-object p1, p1, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    .line 9
    if-eqz p1, :cond_11

    .line 11
    const-string v0, "version"

    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "getAppConfigData start, appId: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ConfigDbManager"

    .line 20
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1e

    .line 29
    const/4 p1, 0x0

    .line 30
    return-object p1

    .line 31
    :cond_1e
    const-string v0, "mUpdated: "

    .line 33
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object v0

    .line 37
    iget-object v2, p0, Lcom/xiaomi/onetrack/b/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    const-string v2, ",ruleDataMap.get(appId): "

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v2, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :try_start_3e
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_5c

    .line 71
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_75

    .line 79
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Ljava/lang/Boolean;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_75

    .line 93
    :cond_5c
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/b/h;->b(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5f} :catch_60

    .line 96
    goto :goto_75

    .line 97
    :catch_60
    move-exception v0

    .line 98
    const-string v2, "getConfig error: "

    .line 100
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lcom/xiaomi/onetrack/b/l;

    .line 126
    return-object p1
.end method
