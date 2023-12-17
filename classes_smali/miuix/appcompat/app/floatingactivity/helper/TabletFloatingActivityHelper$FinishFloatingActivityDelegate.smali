.class Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;
.super Ljava/lang/Object;
.source "TabletFloatingActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FinishFloatingActivityDelegate"
.end annotation


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->mRefs:Ljava/lang/ref/WeakReference;

    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    .line 18
    return-void
.end method

.method public static synthetic access$600(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->delegatePadPhoneFinishFloatingActivity(Z)V

    .line 4
    return-void
.end method

.method private activityExitActuator(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZIZ)V
    .registers 7

    .line 1
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$800(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    if-eqz p1, :cond_12

    .line 9
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    .line 12
    invoke-direct {p0, p1, p2, p5}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Z)V

    .line 15
    goto :goto_12

    .line 16
    :cond_f
    invoke-static {p2, p3, p4}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$900(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZI)V

    .line 19
    :cond_12
    :goto_12
    return-void
.end method

.method private delegatePadPhoneFinishFloatingActivity(Z)V
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->mRefs:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v3, v0

    .line 8
    check-cast v3, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    .line 10
    if-eqz v3, :cond_f

    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-static {v3, v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$700(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;I)V

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    move-object v2, v0

    .line 23
    check-cast v2, Lmiuix/appcompat/app/AppCompatActivity;

    .line 25
    if-eqz v3, :cond_21

    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v5, 0x3

    .line 29
    move-object v1, p0

    .line 30
    move v6, p1

    .line 31
    invoke-direct/range {v1 .. v6}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->activityExitActuator(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZIZ)V

    .line 34
    :cond_21
    return-void
.end method

.method private preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Z)V
    .registers 4

    .line 1
    if-eqz p3, :cond_9

    .line 3
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$1000(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Z

    .line 6
    move-result p2

    .line 7
    invoke-static {p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Z)V

    .line 10
    :cond_9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->delegatePadPhoneFinishFloatingActivity(Z)V

    .line 5
    return-void
.end method
