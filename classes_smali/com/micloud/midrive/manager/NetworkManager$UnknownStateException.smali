.class public Lcom/micloud/midrive/manager/NetworkManager$UnknownStateException;
.super Lcom/micloud/midrive/manager/NetworkManager$UnavailableException;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/manager/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnknownStateException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/manager/NetworkManager$UnavailableException;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method
