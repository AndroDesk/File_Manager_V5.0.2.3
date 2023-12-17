.class Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;
.super Ljava/lang/Object;
.source "DensityProcessor.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/autodensity/DensityProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DensityProcessorLifecycleCallbacks"
.end annotation


# instance fields
.field private final mDensityProcessor:Lmiuix/autodensity/DensityProcessor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/autodensity/DensityProcessor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;->mDensityProcessor:Lmiuix/autodensity/DensityProcessor;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    iget-object p2, p0, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;->mDensityProcessor:Lmiuix/autodensity/DensityProcessor;

    invoke-virtual {p2, p1}, Lmiuix/autodensity/DensityProcessor;->processOnActivityCreated(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;->mDensityProcessor:Lmiuix/autodensity/DensityProcessor;

    invoke-virtual {v0, p1}, Lmiuix/autodensity/DensityProcessor;->processOnActivityDestroyed(Landroid/app/Activity;)V

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
