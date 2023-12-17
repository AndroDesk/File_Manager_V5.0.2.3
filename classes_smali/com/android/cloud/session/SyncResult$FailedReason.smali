.class public final enum Lcom/android/cloud/session/SyncResult$FailedReason;
.super Ljava/lang/Enum;
.source "SyncResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/session/SyncResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailedReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/cloud/session/SyncResult$FailedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/cloud/session/SyncResult$FailedReason;

.field public static final enum MI_DRIVE_UNAVAILABLE:Lcom/android/cloud/session/SyncResult$FailedReason;

.field public static final enum NETWORK_IO_ERROR:Lcom/android/cloud/session/SyncResult$FailedReason;

.field public static final enum NETWORK_NOT_AVAILABLE:Lcom/android/cloud/session/SyncResult$FailedReason;

.field public static final enum SYNC_DATA_ERROR:Lcom/android/cloud/session/SyncResult$FailedReason;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/android/cloud/session/SyncResult$FailedReason;

    const-string v1, "NETWORK_IO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/cloud/session/SyncResult$FailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cloud/session/SyncResult$FailedReason;->NETWORK_IO_ERROR:Lcom/android/cloud/session/SyncResult$FailedReason;

    new-instance v1, Lcom/android/cloud/session/SyncResult$FailedReason;

    const-string v3, "NETWORK_NOT_AVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/cloud/session/SyncResult$FailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/cloud/session/SyncResult$FailedReason;->NETWORK_NOT_AVAILABLE:Lcom/android/cloud/session/SyncResult$FailedReason;

    new-instance v3, Lcom/android/cloud/session/SyncResult$FailedReason;

    const-string v5, "SYNC_DATA_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/cloud/session/SyncResult$FailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/cloud/session/SyncResult$FailedReason;->SYNC_DATA_ERROR:Lcom/android/cloud/session/SyncResult$FailedReason;

    new-instance v5, Lcom/android/cloud/session/SyncResult$FailedReason;

    const-string v7, "MI_DRIVE_UNAVAILABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/cloud/session/SyncResult$FailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/cloud/session/SyncResult$FailedReason;->MI_DRIVE_UNAVAILABLE:Lcom/android/cloud/session/SyncResult$FailedReason;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/cloud/session/SyncResult$FailedReason;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/cloud/session/SyncResult$FailedReason;->$VALUES:[Lcom/android/cloud/session/SyncResult$FailedReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/cloud/session/SyncResult$FailedReason;
    .registers 2

    const-class v0, Lcom/android/cloud/session/SyncResult$FailedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/cloud/session/SyncResult$FailedReason;

    return-object p0
.end method

.method public static values()[Lcom/android/cloud/session/SyncResult$FailedReason;
    .registers 1

    sget-object v0, Lcom/android/cloud/session/SyncResult$FailedReason;->$VALUES:[Lcom/android/cloud/session/SyncResult$FailedReason;

    invoke-virtual {v0}, [Lcom/android/cloud/session/SyncResult$FailedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/cloud/session/SyncResult$FailedReason;

    return-object v0
.end method
