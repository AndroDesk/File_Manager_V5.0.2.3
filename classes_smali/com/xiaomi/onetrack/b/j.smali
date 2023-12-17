.class Lcom/xiaomi/onetrack/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/xiaomi/onetrack/b/h;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/b/h;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/j;->b:Lcom/xiaomi/onetrack/b/h;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/b/j;->a:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/j;->b:Lcom/xiaomi/onetrack/b/h;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/b/h;->a(Lcom/xiaomi/onetrack/b/h;)Lcom/xiaomi/onetrack/b/g;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "app_id=?"

    .line 13
    const-string v2, "events_cloud"

    .line 15
    const/4 v3, 0x1

    .line 16
    new-array v3, v3, [Ljava/lang/String;

    .line 18
    const/4 v4, 0x0

    .line 19
    iget-object v5, p0, Lcom/xiaomi/onetrack/b/j;->a:Ljava/lang/String;

    .line 21
    aput-object v5, v3, v4

    .line 23
    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 26
    goto :goto_1e

    .line 27
    :catch_1a
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    :goto_1e
    return-void
.end method
