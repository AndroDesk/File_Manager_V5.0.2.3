.class public Lcom/micloud/midrive/manager/NetworkManager$UnconnectedException;
.super Lcom/micloud/midrive/manager/NetworkManager$UnavailableException;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/manager/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnconnectedException"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/manager/NetworkManager$UnavailableException;-><init>()V

    return-void
.end method
