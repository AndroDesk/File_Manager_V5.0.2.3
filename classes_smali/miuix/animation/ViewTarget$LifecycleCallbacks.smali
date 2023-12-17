.class public Lmiuix/animation/ViewTarget$LifecycleCallbacks;
.super Ljava/lang/Object;
.source "ViewTarget.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleCallbacks"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/animation/ViewTarget;


# direct methods
.method public constructor <init>(Lmiuix/animation/ViewTarget;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/animation/ViewTarget$LifecycleCallbacks;->this$0:Lmiuix/animation/ViewTarget;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lmiuix/animation/ViewTarget$LifecycleCallbacks;->this$0:Lmiuix/animation/ViewTarget;

    .line 3
    invoke-static {p1}, Lmiuix/animation/ViewTarget;->access$200(Lmiuix/animation/ViewTarget;)V

    .line 6
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
