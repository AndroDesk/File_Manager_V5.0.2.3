.class public final Lm0/j0$b;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .registers 1

    invoke-static {p0}, Landroidx/appcompat/widget/y;->d(Landroid/view/ViewConfiguration;)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/ViewConfiguration;)Z
    .registers 1

    invoke-static {p0}, Landroidx/appcompat/widget/y;->y(Landroid/view/ViewConfiguration;)Z

    move-result p0

    return p0
.end method
