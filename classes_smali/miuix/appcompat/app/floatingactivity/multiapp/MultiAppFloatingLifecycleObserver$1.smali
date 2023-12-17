.class Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;
.super Ljava/lang/Object;
.source "MultiAppFloatingLifecycleObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;

.field public final synthetic val$appCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;

    .line 3
    iput-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->val$appCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4b

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;

    .line 9
    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->access$000(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;)I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getCurrentPageCount(I)I

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-gt v1, v2, :cond_1f

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;

    .line 22
    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->access$100(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;)I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getServicePageCount(I)I

    .line 29
    move-result v1

    .line 30
    if-le v1, v2, :cond_4b

    .line 32
    :cond_1f
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2f

    .line 38
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->val$appCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 40
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    .line 43
    move-result v1

    .line 44
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Z)V

    .line 47
    goto :goto_4b

    .line 48
    :cond_2f
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->val$appCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 50
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_4b

    .line 56
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->val$appCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 58
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->executeOpenEnterAnimation()V

    .line 61
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;

    .line 63
    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;)I

    .line 66
    move-result v1

    .line 67
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;

    .line 69
    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->access$300(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;)Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyPreviousActivitySlide(ILjava/lang/String;)V

    .line 76
    :cond_4b
    :goto_4b
    return-void
.end method
