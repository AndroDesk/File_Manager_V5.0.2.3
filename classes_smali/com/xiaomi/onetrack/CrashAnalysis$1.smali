.class final Lcom/xiaomi/onetrack/CrashAnalysis$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/h;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->b:Lcom/xiaomi/onetrack/api/h;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    const-string v0, "CrashAnalysis"

    .line 3
    :try_start_2
    new-instance v1, Lcom/xiaomi/onetrack/CrashAnalysis;

    .line 5
    iget-object v2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->a:Landroid/content/Context;

    .line 7
    iget-object v3, p0, Lcom/xiaomi/onetrack/CrashAnalysis$1;->b:Lcom/xiaomi/onetrack/api/h;

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/xiaomi/onetrack/CrashAnalysis;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/h;Lcom/xiaomi/onetrack/CrashAnalysis$1;)V

    .line 13
    invoke-static {v1}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Lcom/xiaomi/onetrack/CrashAnalysis;)Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_16

    .line 19
    invoke-static {v1}, Lcom/xiaomi/onetrack/CrashAnalysis;->b(Lcom/xiaomi/onetrack/CrashAnalysis;)V

    .line 22
    goto :goto_31

    .line 23
    :cond_16
    const-string v1, "no crash file found"

    .line 25
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_1c

    .line 28
    goto :goto_31

    .line 29
    :catchall_1c
    move-exception v1

    .line 30
    const-string v2, "processCrash error: "

    .line 32
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_31
    return-void
.end method
