.class public interface abstract Lmiui/cloud/sync/IRemoteFileSyncLogger;
.super Ljava/lang/Object;
.source "IRemoteFileSyncLogger.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub;
    }
.end annotation


# virtual methods
.method public abstract release(Landroid/os/ResultReceiver;)V
.end method

.method public abstract syncLog(Ljava/lang/String;Ljava/lang/String;)V
.end method
