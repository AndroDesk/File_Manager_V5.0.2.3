.class public final Landroidx/recyclerview/widget/GridLayoutManager$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final getSpanIndex(II)I
    .registers 3

    .line 1
    rem-int/2addr p1, p2

    .line 2
    return p1
.end method

.method public final getSpanSize(I)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
