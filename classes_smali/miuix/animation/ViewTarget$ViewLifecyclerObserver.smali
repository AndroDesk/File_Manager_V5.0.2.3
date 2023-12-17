.class public Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;
.super Ljava/lang/Object;
.source "ViewTarget.java"

# interfaces
.implements Landroidx/lifecycle/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewLifecyclerObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/animation/ViewTarget;


# direct methods
.method public constructor <init>(Lmiuix/animation/ViewTarget;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;->this$0:Lmiuix/animation/ViewTarget;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 2
    .annotation runtime Landroidx/lifecycle/s;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;->this$0:Lmiuix/animation/ViewTarget;

    .line 3
    invoke-static {v0}, Lmiuix/animation/ViewTarget;->access$200(Lmiuix/animation/ViewTarget;)V

    .line 6
    return-void
.end method
