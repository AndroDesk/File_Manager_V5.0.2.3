.class public final Landroidx/viewpager/widget/OriginalViewPager$a;
.super Ljava/lang/Object;
.source "OriginalViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/OriginalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/viewpager/widget/OriginalViewPager$f;",
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
    .registers 3

    .line 1
    check-cast p1, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 3
    check-cast p2, Landroidx/viewpager/widget/OriginalViewPager$f;

    .line 5
    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 7
    iget p2, p2, Landroidx/viewpager/widget/OriginalViewPager$f;->b:I

    .line 9
    sub-int/2addr p1, p2

    .line 10
    return p1
.end method
