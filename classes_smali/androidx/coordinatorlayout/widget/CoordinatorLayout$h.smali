.class public final Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 1
    check-cast p1, Landroid/view/View;

    .line 3
    check-cast p2, Landroid/view/View;

    .line 5
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {p1}, Lm0/g0$i;->m(Landroid/view/View;)F

    .line 10
    move-result p1

    .line 11
    invoke-static {p2}, Lm0/g0$i;->m(Landroid/view/View;)F

    .line 14
    move-result p2

    .line 15
    cmpl-float v0, p1, p2

    .line 17
    if-lez v0, :cond_14

    .line 19
    const/4 p1, -0x1

    .line 20
    goto :goto_1b

    .line 21
    :cond_14
    cmpg-float p1, p1, p2

    .line 23
    if-gez p1, :cond_1a

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    return p1
.end method
