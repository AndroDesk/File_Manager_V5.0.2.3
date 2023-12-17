.class public interface abstract Lcom/xiaomi/micloudsdk/data/IAuthToken;
.super Ljava/lang/Object;
.source "IAuthToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getBuilderForCloudRequest()Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;
.end method
