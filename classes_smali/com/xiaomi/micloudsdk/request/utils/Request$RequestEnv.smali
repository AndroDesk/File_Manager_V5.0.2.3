.class public interface abstract Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/request/utils/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestEnv"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getAccountName()Ljava/lang/String;
.end method

.method public abstract getAutoRetryInterval()J
.end method

.method public abstract getMaxRetryCount()I
.end method

.method public abstract getUserAgent()Ljava/lang/String;
.end method

.method public abstract invalidateAuthToken()V
.end method

.method public abstract queryAuthToken()Lcom/xiaomi/micloudsdk/data/IAuthToken;
.end method

.method public abstract queryEncryptedAccountName()Ljava/lang/String;
.end method

.method public abstract shouldUpdateHost()Z
.end method
