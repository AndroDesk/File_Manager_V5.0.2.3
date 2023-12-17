.class public final Lf1/v;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# static fields
.field public static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_a

    invoke-static {p0, p1}, Landroidx/appcompat/widget/a0;->s(Landroid/view/ViewGroup;Z)V

    goto :goto_15

    :cond_a
    sget-boolean v0, Lf1/v;->a:Z

    if-eqz v0, :cond_15

    :try_start_e
    invoke-static {p0, p1}, Landroidx/appcompat/widget/a0;->s(Landroid/view/ViewGroup;Z)V
    :try_end_11
    .catch Ljava/lang/NoSuchMethodError; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_15

    :catch_12
    const/4 p0, 0x0

    sput-boolean p0, Lf1/v;->a:Z

    :cond_15
    :goto_15
    return-void
.end method
