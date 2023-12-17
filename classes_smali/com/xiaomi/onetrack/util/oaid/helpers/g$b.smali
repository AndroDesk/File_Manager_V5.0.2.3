.class public Lcom/xiaomi/onetrack/util/oaid/helpers/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/oaid/helpers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/util/oaid/helpers/g;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/util/oaid/helpers/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g$b;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/g;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    :try_start_0
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g$b;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/g;

    .line 5
    invoke-direct {v0, v1, p1, p2, p3}, Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/g;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g$b;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/g;

    .line 10
    iget-object p1, p1, Lcom/xiaomi/onetrack/util/oaid/helpers/g;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 12
    const-wide/16 p2, 0x1

    .line 14
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-virtual {p1, v0, p2, p3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 19
    goto :goto_22

    .line 20
    :catch_13
    move-exception p1

    .line 21
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_18

    .line 24
    goto :goto_22

    .line 25
    :catch_18
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    const-string p2, "MsaSDKHelper"

    .line 32
    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_22
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method
