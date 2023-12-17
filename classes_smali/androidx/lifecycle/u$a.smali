.class public final Landroidx/lifecycle/u$a;
.super Landroidx/lifecycle/d;
.source "ProcessLifecycleOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/u;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/lifecycle/u;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/u;)V
    .registers 2

    iput-object p1, p0, Landroidx/lifecycle/u$a;->this$1:Landroidx/lifecycle/u;

    invoke-direct {p0}, Landroidx/lifecycle/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .registers 2

    iget-object p1, p0, Landroidx/lifecycle/u$a;->this$1:Landroidx/lifecycle/u;

    iget-object p1, p1, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    invoke-virtual {p1}, Landroidx/lifecycle/t;->a()V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .registers 4

    iget-object p1, p0, Landroidx/lifecycle/u$a;->this$1:Landroidx/lifecycle/u;

    iget-object p1, p1, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    iget v0, p1, Landroidx/lifecycle/t;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Landroidx/lifecycle/t;->a:I

    if-ne v0, v1, :cond_1a

    iget-boolean v0, p1, Landroidx/lifecycle/t;->d:Z

    if-eqz v0, :cond_1a

    iget-object v0, p1, Landroidx/lifecycle/t;->f:Landroidx/lifecycle/n;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/lifecycle/t;->d:Z

    :cond_1a
    return-void
.end method
