.class public Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationTimeoutException;
.super Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationNotCompleteException;
.source "KeyBagProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/keychainsdk/request/KeyBagProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncOperationTimeoutException"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/keychainsdk/request/KeyBagProtocol$AsyncOperationNotCompleteException;-><init>()V

    .line 4
    return-void
.end method
