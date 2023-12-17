.class Lmiuix/autodensity/AutoDensityConfig$3;
.super Ljava/lang/Object;
.source "AutoDensityConfig.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/autodensity/AutoDensityConfig;->tryToAddActivityConfigCallback(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/autodensity/AutoDensityConfig;

.field public final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lmiuix/autodensity/AutoDensityConfig;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/autodensity/AutoDensityConfig$3;->this$0:Lmiuix/autodensity/AutoDensityConfig;

    .line 3
    iput-object p2, p0, Lmiuix/autodensity/AutoDensityConfig$3;->val$activity:Landroid/app/Activity;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 10

    .line 1
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 3
    const-string v1, "getViewRootImpl"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    new-array v4, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {v0, p1, v1, v3, v4}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    const-class v1, Landroid/view/ViewRootImpl;

    .line 16
    const-string v3, "mActivityConfigCallback"

    .line 18
    invoke-static {v1, v0, v3}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    new-instance v3, Lmiuix/autodensity/AutoDensityConfig$3$1;

    .line 24
    invoke-direct {v3, p0, v1}, Lmiuix/autodensity/AutoDensityConfig$3$1;-><init>(Lmiuix/autodensity/AutoDensityConfig$3;Ljava/lang/Object;)V

    .line 27
    const-class v1, Landroid/view/ViewRootImpl;

    .line 29
    const-string v4, "setActivityConfigCallback"

    .line 31
    const/4 v5, 0x1

    .line 32
    new-array v6, v5, [Ljava/lang/Class;

    .line 34
    const-class v7, Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 36
    aput-object v7, v6, v2

    .line 38
    new-array v5, v5, [Ljava/lang/Object;

    .line 40
    aput-object v3, v5, v2

    .line 42
    invoke-static {v1, v0, v4, v6, v5}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2c

    .line 45
    :catch_2c
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 48
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
