.class Lcom/bumptech/glide/load/engine/ActiveResources$1$1;
.super Ljava/lang/Object;
.source "ActiveResources.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/ActiveResources$1;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/bumptech/glide/load/engine/ActiveResources$1;

.field public final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/ActiveResources$1;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources$1$1;->this$1:Lcom/bumptech/glide/load/engine/ActiveResources$1;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/ActiveResources$1$1;->val$r:Ljava/lang/Runnable;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    const/16 v0, 0xa

    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources$1$1;->val$r:Ljava/lang/Runnable;

    .line 8
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 11
    return-void
.end method
