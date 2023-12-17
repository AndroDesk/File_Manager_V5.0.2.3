.class public final Lf1/v;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# static fields
.field public static a:Z = true


# direct methods
.method public static a(Landroid/view/ViewGroup;Z)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_a

    .line 7
    invoke-static {p0, p1}, Landroidx/appcompat/widget/a0;->s(Landroid/view/ViewGroup;Z)V

    .line 10
    goto :goto_15

    .line 11
    :cond_a
    sget-boolean v0, Lf1/v;->a:Z

    .line 13
    if-eqz v0, :cond_15

    .line 15
    :try_start_e
    invoke-static {p0, p1}, Landroidx/appcompat/widget/a0;->s(Landroid/view/ViewGroup;Z)V
    :try_end_11
    .catch Ljava/lang/NoSuchMethodError; {:try_start_e .. :try_end_11} :catch_12

    .line 18
    goto :goto_15

    .line 19
    :catch_12
    const/4 p0, 0x0

    .line 20
    sput-boolean p0, Lf1/v;->a:Z

    .line 22
    :cond_15
    :goto_15
    return-void
.end method
