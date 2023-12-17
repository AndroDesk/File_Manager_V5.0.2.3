.class public Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation;
.super Ljava/lang/Object;
.source "RequestEnvDelegation.java"


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

.method public static toRequestContext_RequestEnv(Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;)Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;
    .registers 2

    new-instance v0, Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation$2;-><init>(Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;)V

    return-object v0
.end method

.method public static toRequest_RequestEnv(Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;)Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;
    .registers 2

    new-instance v0, Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation$1;-><init>(Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;)V

    return-object v0
.end method
