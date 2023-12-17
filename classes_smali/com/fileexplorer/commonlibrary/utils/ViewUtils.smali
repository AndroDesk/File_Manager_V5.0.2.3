.class public Lcom/fileexplorer/commonlibrary/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


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

.method public static enableFastScroll(Landroid/widget/AbsListView;II)V
    .registers 4

    const/4 v0, 0x5

    if-le p1, v0, :cond_c

    div-int/lit8 p2, p2, 0xc

    if-le p1, p2, :cond_c

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    return-void

    :cond_c
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    return-void
.end method

.method public static removeFromParent(Landroid/view/View;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_e

    goto :goto_13

    :cond_e
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_13
    :goto_13
    return-void
.end method
