.class Lcom/xiaomi/stat/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/ab;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/ab;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/ac;->a:Lcom/xiaomi/stat/ab;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .registers 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/ac;->a:Lcom/xiaomi/stat/ab;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/stat/ab;->a(Lcom/xiaomi/stat/ab;)Landroid/database/sqlite/SQLiteOpenHelper;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "pref"

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 23
    goto :goto_18

    .line 24
    :catch_17
    const/4 v0, 0x0

    .line 25
    :goto_18
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/stat/ac;->a()Landroid/database/Cursor;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
