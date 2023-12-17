.class public Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;
.super Ljava/lang/Object;
.source "FloatingLifecycleObserver.java"

# interfaces
.implements Landroidx/lifecycle/l;


# instance fields
.field public mActivityIdentity:Ljava/lang/String;

.field public mActivityTaskId:I


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->mActivityIdentity:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->mActivityTaskId:I

    .line 16
    return-void
.end method


# virtual methods
.method public getActivityIdentity()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->mActivityIdentity:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getActivityTaskId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->mActivityTaskId:I

    .line 3
    return v0
.end method

.method public onCreate()V
    .registers 1
    .annotation runtime Landroidx/lifecycle/s;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method public onDestroy()V
    .registers 1
    .annotation runtime Landroidx/lifecycle/s;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method public onPause()V
    .registers 1
    .annotation runtime Landroidx/lifecycle/s;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method public onResume()V
    .registers 1
    .annotation runtime Landroidx/lifecycle/s;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method
