.class Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$2$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "MultiAppFloatingLifecycleObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$2;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$2$1;->this$1:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$2;

    .line 3
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$2$1;->this$1:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$2;

    .line 6
    iget-object p1, p1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$2;->val$panel:Landroid/view/View;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$2$1;->this$1:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$2;

    .line 20
    iget-object v0, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$2;->val$lastActivityPanel:Landroid/view/View;

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 25
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_22

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->setLastActivityPanel(Landroid/view/View;)V

    .line 35
    :cond_22
    return-void
.end method
