.class public final Lm0/j0$a;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Landroid/view/ViewConfiguration;)F
    .registers 1

    invoke-static {p0}, Lm0/h0;->j(Landroid/view/ViewConfiguration;)F

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/ViewConfiguration;)F
    .registers 1

    invoke-static {p0}, Lm0/h0;->a(Landroid/view/ViewConfiguration;)F

    move-result p0

    return p0
.end method
