.class Lcom/micloud/midrive/session/SyncSession$8;
.super Ljava/lang/Object;
.source "SyncSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/SyncSession;->performFinishH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/SyncSession;

.field public final synthetic val$result:Lcom/micloud/midrive/session/BaseSession$Result;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/session/BaseSession$Result;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/SyncSession$8;->this$0:Lcom/micloud/midrive/session/SyncSession;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/session/SyncSession$8;->val$result:Lcom/micloud/midrive/session/BaseSession$Result;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession$8;->this$0:Lcom/micloud/midrive/session/SyncSession;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession$8;->val$result:Lcom/micloud/midrive/session/BaseSession$Result;

    .line 5
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/BaseSession;->finish(Lcom/micloud/midrive/session/BaseSession$Result;)V

    .line 8
    return-void
.end method
