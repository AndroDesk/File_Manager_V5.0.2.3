.class public abstract Lcom/micloud/midrive/session/SyncSession$NewSyncTaskEvent;
.super Lcom/micloud/midrive/session/SyncSession$SyncEvent;
.source "SyncSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/SyncSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "NewSyncTaskEvent"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/SyncSession;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/SyncSession;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/SyncSession$NewSyncTaskEvent;->this$0:Lcom/micloud/midrive/session/SyncSession;

    .line 3
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/SyncSession$SyncEvent;-><init>(Lcom/micloud/midrive/session/SyncSession;)V

    .line 6
    return-void
.end method
