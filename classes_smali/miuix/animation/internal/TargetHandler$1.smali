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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/internal/TargetHandler;Z)V
    .registers 3

    iput-object p1, p0, Lmiuix/animation/internal/TargetHandler$1;->this$0:Lmiuix/animation/internal/TargetHandler;

    iput-boolean p2, p0, Lmiuix/animation/internal/TargetHandler$1;->val$toPage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiuix/animation/internal/TargetHandler$1;->this$0:Lmiuix/animation/internal/TargetHandler;

    iget-boolean v1, p0, Lmiuix/animation/internal/TargetHandler$1;->val$toPage:Z

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/TargetHandler;->update(Z)V

    return-void
.end method
