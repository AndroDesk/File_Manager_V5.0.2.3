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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/autodensity/DensityProcessor;Landroid/app/Activity;Lmiuix/autodensity/DensityProcessor;)V
    .registers 4

    iput-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->this$0:Lmiuix/autodensity/DensityProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mActivityRefs:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDecorViewListener:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mActivityRefs:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDensityProcessor:Lmiuix/autodensity/DensityProcessor;

    return-void
.end method


# virtual methods
.method public addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDecorViewListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mActivityRefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_7
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDecorViewListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_e
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mActivityRefs:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_14

    iget-object v1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDensityProcessor:Lmiuix/autodensity/DensityProcessor;

    invoke-virtual {v1, v0, p1}, Lmiuix/autodensity/DensityProcessor;->processBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    goto :goto_19

    :cond_14
    iget-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->this$0:Lmiuix/autodensity/DensityProcessor;

    invoke-virtual {p1, p0}, Lmiuix/autodensity/DensityProcessor;->unregisterDisplayListener(Lmiuix/autodensity/DensityProcessor$DensityCallback;)V

    :goto_19
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4

    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mActivityRefs:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_c
    if-eqz v0, :cond_14

    iget-object v1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDensityProcessor:Lmiuix/autodensity/DensityProcessor;

    invoke-virtual {v1, p1, v0}, Lmiuix/autodensity/DensityProcessor;->processOnActivityDisplayChanged(ILandroid/app/Activity;)V

    goto :goto_19

    :cond_14
    iget-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->this$0:Lmiuix/autodensity/DensityProcessor;

    invoke-virtual {p1, p0}, Lmiuix/autodensity/DensityProcessor;->unregisterDisplayListener(Lmiuix/autodensity/DensityProcessor$DensityCallback;)V

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

    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;->mDecorViewListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_17
    return-void
.end method
