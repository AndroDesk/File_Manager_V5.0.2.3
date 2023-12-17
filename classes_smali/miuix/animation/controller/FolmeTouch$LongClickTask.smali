.class final Lmiuix/animation/controller/FolmeTouch$LongClickTask;
.super Ljava/lang/Object;
.source "FolmeTouch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/controller/FolmeTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongClickTask"
.end annotation


# instance fields
.field private mTouchRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/animation/controller/FolmeTouch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/animation/controller/FolmeTouch$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->mTouchRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/animation/controller/FolmeTouch;

    .line 9
    if-eqz v0, :cond_28

    .line 11
    iget-object v1, v0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 13
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 16
    move-result-object v1

    .line 17
    instance-of v2, v1, Lmiuix/animation/ViewTarget;

    .line 19
    if-eqz v2, :cond_28

    .line 21
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/view/View;

    .line 27
    if-eqz v1, :cond_28

    .line 29
    invoke-static {v0}, Lmiuix/animation/controller/FolmeTouch;->access$900(Lmiuix/animation/controller/FolmeTouch;)Landroid/view/View$OnLongClickListener;

    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_28

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->performLongClick()Z

    .line 38
    invoke-static {v0, v1}, Lmiuix/animation/controller/FolmeTouch;->access$400(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;)V

    .line 41
    :cond_28
    return-void
.end method

.method public start(Lmiuix/animation/controller/FolmeTouch;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    .line 9
    if-eqz v1, :cond_21

    .line 11
    check-cast v0, Lmiuix/animation/ViewTarget;

    .line 13
    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_21

    .line 19
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 21
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 24
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->mTouchRef:Ljava/lang/ref/WeakReference;

    .line 26
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 29
    move-result p1

    .line 30
    int-to-long v1, p1

    .line 31
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    :cond_21
    return-void
.end method

.method public stop(Lmiuix/animation/controller/FolmeTouch;)V
    .registers 3

    .line 1
    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 3
    invoke-interface {p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Lmiuix/animation/ViewTarget;

    .line 9
    if-eqz v0, :cond_15

    .line 11
    check-cast p1, Lmiuix/animation/ViewTarget;

    .line 13
    invoke-virtual {p1}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_15

    .line 19
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 22
    :cond_15
    return-void
.end method
