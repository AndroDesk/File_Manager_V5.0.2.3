.class Lcom/xiaomi/stat/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/xiaomi/stat/ab;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/stat/ab;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/xiaomi/stat/ae;->c:Lcom/xiaomi/stat/ab;

    iput-object p2, p0, Lcom/xiaomi/stat/ae;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/stat/ae;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/stat/ae;->c:Lcom/xiaomi/stat/ab;

    invoke-static {v1}, Lcom/xiaomi/stat/ab;->a(Lcom/xiaomi/stat/ab;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/stat/ae;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_6d
    .catchall {:try_start_1 .. :try_end_11} :catchall_6b

    const-string v10, "pref_key=?"

    const-string v11, "pref"

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v2, :cond_23

    :try_start_19
    new-array v2, v13, [Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/stat/ae;->b:Ljava/lang/String;

    aput-object v3, v2, v12

    invoke-virtual {v1, v11, v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_23
    const-string v3, "pref"

    const/4 v4, 0x0

    const-string v5, "pref_key=?"

    new-array v6, v13, [Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/stat/ae;->b:Ljava/lang/String;

    aput-object v2, v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_36} :catch_6d
    .catchall {:try_start_19 .. :try_end_36} :catchall_6b

    :try_start_36
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3e

    move v3, v12

    goto :goto_3f

    :cond_3e
    move v3, v13

    :goto_3f
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "pref_key"

    iget-object v6, p0, Lcom/xiaomi/stat/ae;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pref_value"

    iget-object v6, p0, Lcom/xiaomi/stat/ae;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_58

    invoke-virtual {v1, v11, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_61

    :cond_58
    new-array v0, v13, [Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/stat/ae;->b:Ljava/lang/String;

    aput-object v3, v0, v12

    invoke-virtual {v1, v11, v4, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_61} :catch_68
    .catchall {:try_start_36 .. :try_end_61} :catchall_65

    :goto_61
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_89

    :catchall_65
    move-exception v1

    move-object v0, v2

    goto :goto_8a

    :catch_68
    move-exception v1

    move-object v0, v2

    goto :goto_6e

    :catchall_6b
    move-exception v1

    goto :goto_8a

    :catch_6d
    move-exception v1

    :goto_6e
    :try_start_6e
    const-string v2, "MiStatPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update pref db failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_6e .. :try_end_84} :catchall_6b

    if-eqz v0, :cond_89

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_89
    :goto_89
    return-void

    :goto_8a
    if-eqz v0, :cond_8f

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8f
    throw v1
.end method
