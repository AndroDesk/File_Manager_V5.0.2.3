.class Lcom/xiaomi/onetrack/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/xiaomi/onetrack/b/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/xiaomi/onetrack/b/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/b/h;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/k;->b:Lcom/xiaomi/onetrack/b/h;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/b/k;->a:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/onetrack/b/l;
    .registers 13

    .line 1
    const-string v0, "getConfig  cursor.close"

    .line 3
    const-string v1, "ConfigDbManager"

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_5
    const-string v6, "app_id=?"

    .line 8
    iget-object v3, p0, Lcom/xiaomi/onetrack/b/k;->b:Lcom/xiaomi/onetrack/b/h;

    .line 10
    invoke-static {v3}, Lcom/xiaomi/onetrack/b/h;->a(Lcom/xiaomi/onetrack/b/h;)Lcom/xiaomi/onetrack/b/g;

    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    move-result-object v3

    .line 18
    const-string v4, "events_cloud"

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v7, 0x1

    .line 22
    new-array v7, v7, [Ljava/lang/String;

    .line 24
    const/4 v8, 0x0

    .line 25
    iget-object v9, p0, Lcom/xiaomi/onetrack/b/k;->a:Ljava/lang/String;

    .line 27
    aput-object v9, v7, v8

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v10, 0x0

    .line 32
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 35
    move-result-object v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_81
    .catchall {:try_start_5 .. :try_end_23} :catchall_7c

    .line 36
    :try_start_23
    const-string v4, "app_id"

    .line 38
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 41
    move-result v4

    .line 42
    const-string v5, "cloud_data"

    .line 44
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 47
    move-result v5

    .line 48
    const-string v6, "data_hash"

    .line 50
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 53
    move-result v6

    .line 54
    const-string v7, "timestamp"

    .line 56
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 59
    move-result v7

    .line 60
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_8c

    .line 66
    new-instance v8, Lcom/xiaomi/onetrack/b/l;

    .line 68
    invoke-direct {v8}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    .line 71
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 74
    move-result-object v4

    .line 75
    iput-object v4, v8, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 77
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v4

    .line 81
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    move-result v5

    .line 85
    if-nez v5, :cond_5d

    .line 87
    new-instance v5, Lorg/json/JSONObject;

    .line 89
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    iput-object v5, v8, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    .line 94
    :cond_5d
    iget-object v4, v8, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    .line 96
    invoke-static {v4}, Lcom/xiaomi/onetrack/b/h;->a(Lorg/json/JSONObject;)I

    .line 99
    move-result v4

    .line 100
    int-to-long v4, v4

    .line 101
    iput-wide v4, v8, Lcom/xiaomi/onetrack/b/l;->b:J

    .line 103
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 106
    move-result-object v4

    .line 107
    iput-object v4, v8, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    .line 109
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 112
    move-result-wide v4

    .line 113
    iput-wide v4, v8, Lcom/xiaomi/onetrack/b/l;->c:J
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_72} :catch_7a
    .catchall {:try_start_23 .. :try_end_72} :catchall_94

    .line 115
    :try_start_72
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_76

    .line 118
    goto :goto_79

    .line 119
    :catch_76
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_79
    return-object v8

    .line 123
    :catch_7a
    move-exception v4

    .line 124
    goto :goto_83

    .line 125
    :catchall_7c
    move-exception v3

    .line 126
    move-object v11, v3

    .line 127
    move-object v3, v2

    .line 128
    move-object v2, v11

    .line 129
    goto :goto_95

    .line 130
    :catch_81
    move-exception v4

    .line 131
    move-object v3, v2

    .line 132
    :goto_83
    :try_start_83
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 135
    move-result-object v4

    .line 136
    invoke-static {v1, v4}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_94

    .line 139
    if-eqz v3, :cond_93

    .line 141
    :cond_8c
    :try_start_8c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_90

    .line 144
    goto :goto_93

    .line 145
    :catch_90
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_93
    :goto_93
    return-object v2

    .line 149
    :catchall_94
    move-exception v2

    .line 150
    :goto_95
    if-eqz v3, :cond_9e

    .line 152
    :try_start_97
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_9b

    .line 155
    goto :goto_9e

    .line 156
    :catch_9b
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_9e
    :goto_9e
    throw v2
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/b/k;->a()Lcom/xiaomi/onetrack/b/l;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
