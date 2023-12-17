.class public Lcom/android/cloud/session/SyncResult;
.super Ljava/lang/Object;
.source "SyncResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/session/SyncResult$FailedReason;,
        Lcom/android/cloud/session/SyncResult$ResultCode;
    }
.end annotation


# instance fields
.field public final failedReason:Lcom/android/cloud/session/SyncResult$FailedReason;

.field public final resultCode:Lcom/android/cloud/session/SyncResult$ResultCode;


# direct methods
.method public constructor <init>(Lcom/android/cloud/session/SyncResult$ResultCode;Lcom/android/cloud/session/SyncResult$FailedReason;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/cloud/session/SyncResult;->resultCode:Lcom/android/cloud/session/SyncResult$ResultCode;

    .line 6
    iput-object p2, p0, Lcom/android/cloud/session/SyncResult;->failedReason:Lcom/android/cloud/session/SyncResult$FailedReason;

    .line 8
    return-void
.end method
