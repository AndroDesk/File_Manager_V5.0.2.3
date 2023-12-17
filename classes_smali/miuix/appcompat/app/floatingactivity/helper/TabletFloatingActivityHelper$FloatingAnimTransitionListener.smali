.class Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "TabletFloatingActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatingAnimTransitionListener"
.end annotation


# instance fields
.field private mAllActivityFinished:Z

.field private mDismiss:Z

.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslationY:I

.field private mType:I


# direct methods
.method private constructor <init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZII)V
    .registers 6

    .line 2
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mAllActivityFinished:Z

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mRefs:Ljava/lang/ref/WeakReference;

    .line 5
    iput p4, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mType:I

    .line 6
    iput-boolean p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mDismiss:Z

    .line 7
    iput p3, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mTranslationY:I

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZIILmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZII)V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mRefs:Ljava/lang/ref/WeakReference;

    .line 6
    if-nez v0, :cond_9

    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    .line 16
    :goto_f
    if-eqz v0, :cond_14

    .line 18
    invoke-static {v0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$1100(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Ljava/lang/Object;)V

    .line 21
    :cond_14
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mRefs:Ljava/lang/ref/WeakReference;

    .line 6
    if-nez v0, :cond_9

    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    .line 16
    :goto_f
    if-eqz v0, :cond_14

    .line 18
    invoke-static {v0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$1100(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Ljava/lang/Object;)V

    .line 21
    :cond_14
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object p1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 3
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    .line 6
    move-result-object p1

    .line 7
    iget-boolean p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mDismiss:Z

    .line 9
    if-eqz p2, :cond_30

    .line 11
    if-nez p1, :cond_d

    .line 13
    goto :goto_30

    .line 14
    :cond_d
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mRefs:Ljava/lang/ref/WeakReference;

    .line 16
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    .line 22
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mAllActivityFinished:Z

    .line 24
    if-nez v0, :cond_30

    .line 26
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 29
    move-result p1

    .line 30
    const v0, 0x3f19999a  # 0.6f

    .line 33
    iget v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mTranslationY:I

    .line 35
    int-to-float v1, v1

    .line 36
    mul-float/2addr v1, v0

    .line 37
    cmpl-float p1, p1, v1

    .line 39
    if-lez p1, :cond_30

    .line 41
    if-eqz p2, :cond_30

    .line 43
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mAllActivityFinished:Z

    .line 46
    invoke-virtual {p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->finishAllPage()V

    .line 49
    :cond_30
    :goto_30
    return-void
.end method
