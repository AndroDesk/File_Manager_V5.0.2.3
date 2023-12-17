.class Lmiuix/autodensity/DensityProcessor$DensityCallback;
.super Ljava/lang/Object;
.source "DensityProcessor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/autodensity/DensityProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DensityCallback"
.end annotation


# instance fields
.field private mActivityRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mDecorViewListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDensityProcessor:Lmiuix/autodensity/DensityProcessor;

.field public final synthetic this$0:Lmiuix/autodensity/DensityProcessor;


# direct methods
.method public constructor <init>(Lmiuix/autodensity/DensityProcessor;Landroid/app/Activity;Lmiuix/autodensity/DensityProcessor;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->this$0:Lmiuix/autodensity/DensityProcessor;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mActivityRefs:Ljava/lang/ref/WeakReference;

    .line 9
    iput-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDecorViewListener:Ljava/lang/ref/WeakReference;

    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mActivityRefs:Ljava/lang/ref/WeakReference;

    .line 18
    iput-object p3, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDensityProcessor:Lmiuix/autodensity/DensityProcessor;

    .line 20
    return-void
.end method


# virtual methods
.method public addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDecorViewListener:Ljava/lang/ref/WeakReference;

    .line 8
    return-void
.end method

.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mActivityRefs:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDecorViewListener:Ljava/lang/ref/WeakReference;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 15
    :cond_e
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mActivityRefs:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    if-eqz v0, :cond_14

    .line 15
    iget-object v1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDensityProcessor:Lmiuix/autodensity/DensityProcessor;

    .line 17
    invoke-virtual {v1, v0, p1}, Lmiuix/autodensity/DensityProcessor;->processBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 20
    goto :goto_19

    .line 21
    :cond_14
    iget-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->this$0:Lmiuix/autodensity/DensityProcessor;

    .line 23
    invoke-virtual {p1, p0}, Lmiuix/autodensity/DensityProcessor;->unregisterDisplayListener(Lmiuix/autodensity/DensityProcessor$DensityCallback;)V

    .line 26
    :goto_19
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mActivityRefs:Ljava/lang/ref/WeakReference;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_c

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/Activity;

    .line 13
    :goto_c
    if-eqz v0, :cond_14

    .line 15
    iget-object v1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDensityProcessor:Lmiuix/autodensity/DensityProcessor;

    .line 17
    invoke-virtual {v1, p1, v0}, Lmiuix/autodensity/DensityProcessor;->processOnActivityDisplayChanged(ILandroid/app/Activity;)V

    .line 20
    goto :goto_19

    .line 21
    :cond_14
    iget-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->this$0:Lmiuix/autodensity/DensityProcessor;

    .line 23
    invoke-virtual {p1, p0}, Lmiuix/autodensity/DensityProcessor;->unregisterDisplayListener(Lmiuix/autodensity/DensityProcessor$DensityCallback;)V

    .line 26
    :goto_19
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method

.method public removeOnAttachStateChangeListener(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDecorViewListener:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_17

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    .line 11
    if-eqz v0, :cond_17

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 24
    :cond_17
    return-void
.end method
