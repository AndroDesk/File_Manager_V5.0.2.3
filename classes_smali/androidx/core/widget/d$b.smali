.class public final Landroidx/core/widget/d$b;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 3
    invoke-direct {v0, p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 6
    return-object v0

    .line 7
    :catchall_6
    new-instance p1, Landroid/widget/EdgeEffect;

    .line 9
    invoke-direct {p1, p0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 12
    return-object p1
.end method

.method public static b(Landroid/widget/EdgeEffect;)F
    .registers 1

    .line 1
    :try_start_0
    invoke-static {p0}, Landroidx/core/content/c;->a(Landroid/widget/EdgeEffect;)F

    .line 4
    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    .line 5
    return p0

    .line 6
    :catchall_5
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public static c(Landroid/widget/EdgeEffect;FF)F
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/core/content/c;->b(Landroid/widget/EdgeEffect;FF)F

    .line 4
    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    .line 5
    return p0

    .line 6
    :catchall_5
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method
