.class public Lcom/micloud/midrive/session/SyncSession$FailedReason;
.super Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;
.source "SyncSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/SyncSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailedReason"
.end annotation


# static fields
.field public static final MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/SyncSession$FailedReason;

.field public static final NETWORK_IO_ERROR:Lcom/micloud/midrive/session/SyncSession$FailedReason;

.field public static final NETWORK_NOT_AVAILABLE:Lcom/micloud/midrive/session/SyncSession$FailedReason;

.field public static final SYNC_DATA_ERROR:Lcom/micloud/midrive/session/SyncSession$FailedReason;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/micloud/midrive/session/SyncSession$FailedReason;

    const-string v1, "NETWORK_IO_ERROR"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/SyncSession$FailedReason;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/session/SyncSession$FailedReason;->NETWORK_IO_ERROR:Lcom/micloud/midrive/session/SyncSession$FailedReason;

    new-instance v0, Lcom/micloud/midrive/session/SyncSession$FailedReason;

    const-string v1, "NETWORK_NOT_AVAILABLE"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/SyncSession$FailedReason;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/session/SyncSession$FailedReason;->NETWORK_NOT_AVAILABLE:Lcom/micloud/midrive/session/SyncSession$FailedReason;

    new-instance v0, Lcom/micloud/midrive/session/SyncSession$FailedReason;

    const-string v1, "SYNC_DATA_ERROR"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/SyncSession$FailedReason;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/session/SyncSession$FailedReason;->SYNC_DATA_ERROR:Lcom/micloud/midrive/session/SyncSession$FailedReason;

    new-instance v0, Lcom/micloud/midrive/session/SyncSession$FailedReason;

    const-string v1, "MI_DRIVE_UNAVAILABLE"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/SyncSession$FailedReason;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/session/SyncSession$FailedReason;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/SyncSession$FailedReason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;-><init>(Ljava/lang/String;)V

    return-void
.end method
