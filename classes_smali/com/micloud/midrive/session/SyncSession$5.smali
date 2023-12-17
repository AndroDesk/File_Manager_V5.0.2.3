.class Lcom/micloud/midrive/session/SyncSession$5;
.super Ljava/lang/Object;
.source "SyncSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/SyncSession;->postCheckMoveOnH(Lcom/micloud/midrive/task/BaseTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/SyncSession;

.field public final synthetic val$byDoneTask:Lcom/micloud/midrive/task/BaseTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/task/BaseTask;)V
    .registers 3

    iput-object p1, p0, Lcom/micloud/midrive/session/SyncSession$5;->this$0:Lcom/micloud/midrive/session/SyncSession;

    iput-object p2, p0, Lcom/micloud/midrive/session/SyncSession$5;->val$byDoneTask:Lcom/micloud/midrive/task/BaseTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession$5;->this$0:Lcom/micloud/midrive/session/SyncSession;

    iget-object v1, p0, Lcom/micloud/midrive/session/SyncSession$5;->val$byDoneTask:Lcom/micloud/midrive/task/BaseTask;

    invoke-static {v0, v1}, Lcom/micloud/midrive/session/SyncSession;->access$600(Lcom/micloud/midrive/session/SyncSession;Lcom/micloud/midrive/task/BaseTask;)V

    return-void
.end method
