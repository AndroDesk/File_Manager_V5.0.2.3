.class Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/utils/CommonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnPreDrawTask"
.end annotation


# instance fields
.field public mTask:Ljava/lang/Runnable;

.field public mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mTask:Ljava/lang/Runnable;

    .line 6
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    if-eqz v0, :cond_18

    .line 11
    iget-object v1, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mTask:Ljava/lang/Runnable;

    .line 13
    if-eqz v1, :cond_11

    .line 15
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 18
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mTask:Ljava/lang/Runnable;

    .line 28
    const/4 v0, 0x1

    .line 29
    return v0
.end method

.method public start(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    iput-object v1, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mView:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 15
    return-void
.end method
