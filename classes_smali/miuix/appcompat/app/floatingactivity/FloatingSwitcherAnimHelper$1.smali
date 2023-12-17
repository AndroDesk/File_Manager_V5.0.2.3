.class Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "FloatingSwitcherAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->getAnimConfig(ILjava/lang/Runnable;)Lmiuix/animation/base/AnimConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$animConfig:Lmiuix/animation/base/AnimConfig;

.field public final synthetic val$completeTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lmiuix/animation/base/AnimConfig;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$1;->val$completeTask:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$1;->val$animConfig:Lmiuix/animation/base/AnimConfig;

    .line 5
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$1;->val$completeTask:Ljava/lang/Runnable;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 11
    :cond_a
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$1;->val$animConfig:Lmiuix/animation/base/AnimConfig;

    .line 13
    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    .line 16
    const/4 v1, 0x0

    .line 17
    aput-object p0, v0, v1

    .line 19
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 22
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$1;->val$completeTask:Ljava/lang/Runnable;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 11
    :cond_a
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$1;->val$animConfig:Lmiuix/animation/base/AnimConfig;

    .line 13
    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    .line 16
    const/4 v1, 0x0

    .line 17
    aput-object p0, v0, v1

    .line 19
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 22
    return-void
.end method
