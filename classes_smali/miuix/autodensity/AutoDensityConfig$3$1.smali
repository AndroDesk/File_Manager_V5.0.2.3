.class Lmiuix/autodensity/AutoDensityConfig$3$1;
.super Ljava/lang/Object;
.source "AutoDensityConfig.java"

# interfaces
.implements Landroid/view/ViewRootImpl$ActivityConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/autodensity/AutoDensityConfig$3;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lmiuix/autodensity/AutoDensityConfig$3;

.field public final synthetic val$callback:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/autodensity/AutoDensityConfig$3;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lmiuix/autodensity/AutoDensityConfig$3$1;->this$1:Lmiuix/autodensity/AutoDensityConfig$3;

    iput-object p2, p0, Lmiuix/autodensity/AutoDensityConfig$3$1;->val$callback:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .registers 11

    :try_start_0
    const-class v0, Landroid/view/ViewRootImpl$ActivityConfigCallback;

    iget-object v1, p0, Lmiuix/autodensity/AutoDensityConfig$3$1;->val$callback:Ljava/lang/Object;

    const-string v2, "onConfigurationChanged"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/res/Configuration;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-static {v0, v1, v2, v4, v3}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lmiuix/autodensity/AutoDensityConfig$3$1;->this$1:Lmiuix/autodensity/AutoDensityConfig$3;

    iget-object p1, p1, Lmiuix/autodensity/AutoDensityConfig$3;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_27

    :catch_27
    return-void
.end method

.method public requestCompatCameraControl(ZZLandroid/app/ICompatCameraControlCallback;)V
    .registers 4

    return-void
.end method