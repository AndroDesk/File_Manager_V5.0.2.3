.class Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver$CloseExitListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "SingleAppFloatingLifecycleObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloseExitListener"
.end annotation


# instance fields
.field public mHostActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver$CloseExitListener;->this$0:Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;

    .line 3
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver$CloseExitListener;->mHostActivity:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver$CloseExitListener;->mHostActivity:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    .line 12
    if-eqz p1, :cond_30

    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_30

    .line 20
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_30

    .line 26
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getLastActivityPanel()Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_30

    .line 32
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getFloatingBrightPanel()Landroid/view/View;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/view/ViewGroup;

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 49
    :cond_30
    return-void
.end method
