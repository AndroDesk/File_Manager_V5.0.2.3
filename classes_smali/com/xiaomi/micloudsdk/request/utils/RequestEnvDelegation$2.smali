.class Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation$2;
.super Ljava/lang/Object;
.source "RequestEnvDelegation.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation;->toRequestContext_RequestEnv(Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;)Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$env:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;


# direct methods
.method public constructor <init>(Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation$2;->val$env:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation$2;->val$env:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    .line 3
    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->getAccountName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAutoRetryInterval()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation$2;->val$env:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    .line 3
    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->getAutoRetryInterval()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getMaxRetryCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation$2;->val$env:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    .line 3
    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->getMaxRetryCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation$2;->val$env:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    .line 3
    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->getUserAgent()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public invalidateAuthToken()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation$2;->val$env:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    .line 3
    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->invalidateAuthToken()V

    .line 6
    return-void
.end method

.method public queryAuthToken()Lcom/xiaomi/micloudsdk/data/IAuthToken;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation$2;->val$env:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    .line 3
    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->queryAuthToken()Lcom/xiaomi/micloudsdk/data/IAuthToken;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public queryEncryptedAccountName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation$2;->val$env:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    .line 3
    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->queryEncryptedAccountName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public shouldUpdateHost()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation$2;->val$env:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    .line 3
    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->shouldUpdateHost()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
