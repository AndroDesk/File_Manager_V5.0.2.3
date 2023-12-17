.class Lmiuix/animation/internal/TargetHandler$1;
.super Ljava/lang/Object;
.source "TargetHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/internal/TargetHandler;->runUpdate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/animation/internal/TargetHandler;

.field public final synthetic val$toPage:Z


# direct methods
.method public constructor <init>(Lmiuix/animation/internal/TargetHandler;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/animation/internal/TargetHandler$1;->this$0:Lmiuix/animation/internal/TargetHandler;

    .line 3
    iput-boolean p2, p0, Lmiuix/animation/internal/TargetHandler$1;->val$toPage:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler$1;->this$0:Lmiuix/animation/internal/TargetHandler;

    .line 3
    iget-boolean v1, p0, Lmiuix/animation/internal/TargetHandler$1;->val$toPage:Z

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/animation/internal/TargetHandler;->update(Z)V

    .line 8
    return-void
.end method
