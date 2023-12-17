.class public final Landroidx/viewpager/widget/ViewPager$m;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
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
    .registers 5

    .line 1
    check-cast p1, Landroid/view/View;

    .line 3
    check-cast p2, Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/viewpager/widget/ViewPager$g;

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroidx/viewpager/widget/ViewPager$g;

    .line 17
    iget-boolean v0, p1, Landroidx/viewpager/widget/ViewPager$g;->a:Z

    .line 19
    iget-boolean v1, p2, Landroidx/viewpager/widget/ViewPager$g;->a:Z

    .line 21
    if-eq v0, v1, :cond_1c

    .line 23
    if-eqz v0, :cond_1a

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_21

    .line 27
    :cond_1a
    const/4 p1, -0x1

    .line 28
    goto :goto_21

    .line 29
    :cond_1c
    iget p1, p1, Landroidx/viewpager/widget/ViewPager$g;->e:I

    .line 31
    iget p2, p2, Landroidx/viewpager/widget/ViewPager$g;->e:I

    .line 33
    sub-int/2addr p1, p2

    .line 34
    :goto_21
    return p1
.end method
