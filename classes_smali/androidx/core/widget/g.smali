.class public final Landroidx/core/widget/g;
.super Ljava/lang/Object;
.source "ListViewCompat.java"


# direct methods
.method public static a(Landroid/widget/ListView;I)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b(Landroid/widget/ListView;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 4
    return-void
.end method
