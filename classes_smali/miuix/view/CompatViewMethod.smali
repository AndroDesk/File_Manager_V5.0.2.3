.class public Lmiuix/view/CompatViewMethod;
.super Ljava/lang/Object;
.source "CompatViewMethod.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setActivityTranslucent(Landroid/app/Activity;Z)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_9

    .line 7
    invoke-static {p0, p1}, Landroidx/core/content/a;->k(Landroid/app/Activity;Z)V

    .line 10
    :cond_9
    return-void
.end method

.method public static setForceDarkAllowed(Landroid/view/View;Z)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_9

    .line 7
    invoke-static {p0, p1}, Lf1/x;->p(Landroid/view/View;Z)V

    .line 10
    :cond_9
    return-void
.end method
