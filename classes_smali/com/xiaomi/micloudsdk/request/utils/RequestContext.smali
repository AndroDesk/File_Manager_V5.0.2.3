.class public Lcom/xiaomi/micloudsdk/request/utils/RequestContext;
.super Ljava/lang/Object;
.source "RequestContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;
    }
.end annotation


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sRegion:Ljava/lang/String;

.field private static sRequestEnv:Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Lw3/g;->a:Lw3/h;

    .line 3
    invoke-interface {v0}, Lw3/c;->build()Lw3/c$a;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_10

    .line 11
    :cond_a
    new-instance v1, Lw3/f;

    .line 13
    invoke-direct {v1, v0}, Lw3/f;-><init>(Lw3/c$a;)V

    .line 16
    move-object v0, v1

    .line 17
    :goto_10
    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->sRequestEnv:Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->sContext:Landroid/content/Context;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    const-string v1, "sContext=null! Please call Request.init(Context) at Application onCreate"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method public static getRegion()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->sRegion:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->sRequestEnv:Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    const-string v1, "RequestEnv has not been initialized yet, please call Request.setRequestEnv(RequestEnv) first!"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->sRequestEnv:Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;->getUserAgent()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    const-string v1, "RequestEnv has not been initialized yet, please call Request.setRequestEnv(RequestEnv) first!"

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->sContext:Landroid/content/Context;

    .line 3
    return-void
.end method

.method public static setRegion(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->sRegion:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setRequestEnv(Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->sRequestEnv:Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    .line 3
    return-void
.end method
