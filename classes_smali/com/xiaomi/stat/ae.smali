.class Lcom/xiaomi/stat/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/xiaomi/stat/ab;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/ab;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/ae;->c:Lcom/xiaomi/stat/ab;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/stat/ae;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/stat/ae;->b:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/stat/ae;->c:Lcom/xiaomi/stat/ab;

    .line 4
    invoke-static {v1}, Lcom/xiaomi/stat/ab;->a(Lcom/xiaomi/stat/ab;)Landroid/database/sqlite/SQLiteOpenHelper;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/xiaomi/stat/ae;->a:Ljava/lang/String;

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_6d
    .catchall {:try_start_1 .. :try_end_11} :catchall_6b

    .line 18
    const-string v10, "pref_key=?"

    .line 20
    const-string v11, "pref"

    .line 22
    const/4 v12, 0x0

    .line 23
    const/4 v13, 0x1

    .line 24
    if-eqz v2, :cond_23

    .line 26
    :try_start_19
    new-array v2, v13, [Ljava/lang/String;

    .line 28
    iget-object v3, p0, Lcom/xiaomi/stat/ae;->b:Ljava/lang/String;

    .line 30
    aput-object v3, v2, v12

    .line 32
    invoke-virtual {v1, v11, v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 35
    return-void

    .line 36
    :cond_23
    const-string v3, "pref"

    .line 38
    const/4 v4, 0x0

    .line 39
    const-string v5, "pref_key=?"

    .line 41
    new-array v6, v13, [Ljava/lang/String;

    .line 43
    iget-object v2, p0, Lcom/xiaomi/stat/ae;->b:Ljava/lang/String;

    .line 45
    aput-object v2, v6, v12

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    move-object v2, v1

    .line 51
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 54
    move-result-object v2
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_36} :catch_6d
    .catchall {:try_start_19 .. :try_end_36} :catchall_6b

    .line 55
    :try_start_36
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 58
    move-result v3

    .line 59
    if-lez v3, :cond_3e

    .line 61
    move v3, v12

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    move v3, v13

    .line 64
    :goto_3f
    new-instance v4, Landroid/content/ContentValues;

    .line 66
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 69
    const-string v5, "pref_key"

    .line 71
    iget-object v6, p0, Lcom/xiaomi/stat/ae;->b:Ljava/lang/String;

    .line 73
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v5, "pref_value"

    .line 78
    iget-object v6, p0, Lcom/xiaomi/stat/ae;->a:Ljava/lang/String;

    .line 80
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-eqz v3, :cond_58

    .line 85
    invoke-virtual {v1, v11, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 88
    goto :goto_61

    .line 89
    :cond_58
    new-array v0, v13, [Ljava/lang/String;

    .line 91
    iget-object v3, p0, Lcom/xiaomi/stat/ae;->b:Ljava/lang/String;

    .line 93
    aput-object v3, v0, v12

    .line 95
    invoke-virtual {v1, v11, v4, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_61} :catch_68
    .catchall {:try_start_36 .. :try_end_61} :catchall_65

    .line 98
    :goto_61
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 101
    goto :goto_89

    .line 102
    :catchall_65
    move-exception v1

    .line 103
    move-object v0, v2

    .line 104
    goto :goto_8a

    .line 105
    :catch_68
    move-exception v1

    .line 106
    move-object v0, v2

    .line 107
    goto :goto_6e

    .line 108
    :catchall_6b
    move-exception v1

    .line 109
    goto :goto_8a

    .line 110
    :catch_6d
    move-exception v1

    .line 111
    :goto_6e
    :try_start_6e
    const-string v2, "MiStatPref"

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    const-string v4, "update pref db failed with "

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_6e .. :try_end_84} :catchall_6b

    .line 133
    if-eqz v0, :cond_89

    .line 135
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_89
    :goto_89
    return-void

    .line 139
    :goto_8a
    if-eqz v0, :cond_8f

    .line 141
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_8f
    throw v1
.end method
