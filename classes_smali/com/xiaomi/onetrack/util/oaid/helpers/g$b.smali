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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/onetrack/util/oaid/helpers/g;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g$b;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    :try_start_0
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;

    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g$b;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/g;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/g;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g$b;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/g;

    iget-object p1, p1, Lcom/xiaomi/onetrack/util/oaid/helpers/g;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 p2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, p2, p3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_22

    :catch_13
    move-exception p1

    :try_start_14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MsaSDKHelper"

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22
    const/4 p1, 0x0

    return-object p1
.end method
