.class public final Lm0/k0;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)I
    .registers 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/ViewGroup;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/view/ViewGroup;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    return-void
.end method