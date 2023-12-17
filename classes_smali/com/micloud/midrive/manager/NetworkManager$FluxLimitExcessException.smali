.class public Lcom/micloud/midrive/manager/NetworkManager$FluxLimitExcessException;
.super Lcom/micloud/midrive/manager/NetworkManager$UnavailableException;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/manager/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FluxLimitExcessException"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/manager/NetworkManager$UnavailableException;-><init>(Ljava/lang/String;)V

    return-void
.end method
