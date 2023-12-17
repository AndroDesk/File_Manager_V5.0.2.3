.class public Lcom/xiaomi/onetrack/a/c/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "PollingUploader"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 8

    const-string v0, "PollingUploader"

    :try_start_2
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/d;->b()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    const-string v1, "即将读取数据库并上传数据"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_f
    const/16 v2, 0x14

    if-le v1, v2, :cond_15

    goto/16 :goto_ac

    :cond_15
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/a/a;->d()V

    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/a/a;->b()Lcom/xiaomi/onetrack/a/c/a;

    move-result-object v2

    if-eqz v2, :cond_91

    iget-object v3, v2, Lcom/xiaomi/onetrack/a/c/a;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_91

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_31

    goto :goto_91

    :cond_31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v2, Lcom/xiaomi/onetrack/a/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_41
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/onetrack/a/b/a;

    invoke-virtual {v6}, Lcom/xiaomi/onetrack/a/b/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6}, Lcom/xiaomi/onetrack/a/b/a;->b()I

    move-result v6

    if-eqz v7, :cond_63

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_63
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_6b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_78

    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/xiaomi/onetrack/a/a;->a(Ljava/util/ArrayList;)I

    :cond_78
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_85

    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/a/a;->b(Ljava/util/ArrayList;)V

    :cond_85
    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, v2, Lcom/xiaomi/onetrack/a/c/a;->c:Z

    if-eqz v2, :cond_f

    const-string v1, "No more ad monitor records"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac

    :cond_91
    :goto_91
    const-string v1, "满足条件的adMonitor记录为空，即将返回"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_2 .. :try_end_96} :catchall_97

    return-void

    :catchall_97
    move-exception v1

    const-string v2, "uploadData Throwable:"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ac
    return-void
.end method

.method private static b()Z
    .registers 7

    const-string v0, "PollingUploader"

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    const-string v1, "the device is not provisioned, stop poll!"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_f
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "network is unconnected, stop poll!"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1b
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/a/a;->e()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2f

    const-string v1, "no data remain in db, stop poll!"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2f
    const/4 v0, 0x1

    return v0
.end method
