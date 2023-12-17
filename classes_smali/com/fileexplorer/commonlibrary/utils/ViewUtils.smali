.class public Lcom/fileexplorer/commonlibrary/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableFastScroll(Landroid/widget/AbsListView;II)V
    .registers 4

    .line 1
    const/4 v0, 0x5

    .line 2
    if-le p1, v0, :cond_c

    .line 4
    div-int/lit8 p2, p2, 0xc

    .line 6
    if-le p1, p2, :cond_c

    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 12
    return-void

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 17
    return-void
.end method

.method public static removeFromParent(Landroid/view/View;)V
    .registers 3

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_13

    .line 10
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 12
    if-nez v1, :cond_e

    .line 14
    goto :goto_13

    .line 15
    :cond_e
    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    :cond_13
    :goto_13
    return-void
.end method
