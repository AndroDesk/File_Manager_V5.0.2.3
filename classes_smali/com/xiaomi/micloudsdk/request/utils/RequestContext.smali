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

    sget-object v0, Lw3/g;->a:Lw3/h;

    invoke-interface {v0}, Lw3/c;->build()Lw3/c$a;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    new-instance v1, Lw3/f;

    invoke-direct {v1, v0}, Lw3/f;-><init>(Lw3/c$a;)V

    move-object v0, v1

    :goto_10
    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->sRequestEnv:Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .registers 2

    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sContext=null! Please call Request.init(Context) at Application onCreate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRegion()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->sRegion:Ljava/lang/String;

    return-object v0
.end method

.method public static getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;
    .registers 2

    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->sRequestEnv:Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RequestEnv has not been initialized yet, please call Request.setRequestEnv(RequestEnv) first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->sRequestEnv:Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RequestEnv has not been initialized yet, please call Request.setRequestEnv(RequestEnv) first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static setRegion(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->sRegion:Ljava/lang/String;

    return-void
.end method

.method public static setRequestEnv(Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;)V
    .registers 1

    sput-object p0, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->sRequestEnv:Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    return-void
.end method
