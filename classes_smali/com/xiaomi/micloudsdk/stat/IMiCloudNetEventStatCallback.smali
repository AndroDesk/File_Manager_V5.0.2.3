.class public interface abstract Lcom/xiaomi/micloudsdk/stat/IMiCloudNetEventStatCallback;
.super Ljava/lang/Object;
.source "IMiCloudNetEventStatCallback.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onAddNetFailedEvent(Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;)V
.end method

.method public abstract onAddNetSuccessEvent(Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;)V
.end method
