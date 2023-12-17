.class Lcom/micloud/midrive/session/SyncSession$2;
.super Ljava/lang/Object;
.source "SyncSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/SyncSession;->onExecute(ZLjava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/SyncSession;

.field public final synthetic val$abort:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/SyncSession;Z)V
    .registers 3

    iput-object p1, p0, Lcom/micloud/midrive/session/SyncSession$2;->this$0:Lcom/micloud/midrive/session/SyncSession;

    iput-boolean p2, p0, Lcom/micloud/midrive/session/SyncSession$2;->val$abort:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/SyncSession$2;->this$0:Lcom/micloud/midrive/session/SyncSession;

    iget-boolean v1, p0, Lcom/micloud/midrive/session/SyncSession$2;->val$abort:Z

    invoke-static {v0, v1}, Lcom/micloud/midrive/session/SyncSession;->access$300(Lcom/micloud/midrive/session/SyncSession;Z)V

    return-void
.end method
