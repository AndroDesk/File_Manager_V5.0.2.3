.class Lcom/xiaomi/stat/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/xiaomi/stat/a/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/a/c;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/a/h;->b:Lcom/xiaomi/stat/a/c;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/stat/a/h;->a:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/a/h;->b:Lcom/xiaomi/stat/a/c;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;)Lcom/xiaomi/stat/a/a;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/xiaomi/stat/a/h;->a:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/xiaomi/stat/ak;->b()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1a

    .line 23
    const-string v1, "sub is null"

    .line 25
    const/4 v2, 0x0

    .line 26
    goto :goto_24

    .line 27
    :cond_1a
    const-string v1, "sub = ?"

    .line 29
    const/4 v2, 0x1

    .line 30
    new-array v2, v2, [Ljava/lang/String;

    .line 32
    const/4 v3, 0x0

    .line 33
    iget-object v4, p0, Lcom/xiaomi/stat/a/h;->a:Ljava/lang/String;

    .line 35
    aput-object v4, v2, v3

    .line 37
    :goto_24
    const-string v3, "events"

    .line 39
    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 42
    goto :goto_41

    .line 43
    :catch_2a
    move-exception v0

    .line 44
    const-string v1, "removeAllEventsForApp exception: "

    .line 46
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    const-string v1, "EventManager"

    .line 63
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_41
    return-void
.end method
