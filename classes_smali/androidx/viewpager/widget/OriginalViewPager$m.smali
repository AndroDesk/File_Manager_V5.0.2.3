.class public final Landroidx/viewpager/widget/OriginalViewPager$m;
.super Ljava/lang/Object;
.source "OriginalViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/OriginalViewPager;
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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/OriginalViewPager$g;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/OriginalViewPager$g;

    iget-boolean v0, p1, Landroidx/viewpager/widget/OriginalViewPager$g;->a:Z

    iget-boolean v1, p2, Landroidx/viewpager/widget/OriginalViewPager$g;->a:Z

    if-eq v0, v1, :cond_1c

    if-eqz v0, :cond_1a

    const/4 p1, 0x1

    goto :goto_21

    :cond_1a
    const/4 p1, -0x1

    goto :goto_21

    :cond_1c
    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$g;->e:I

    iget p2, p2, Landroidx/viewpager/widget/OriginalViewPager$g;->e:I

    sub-int/2addr p1, p2

    :goto_21
    return p1
.end method