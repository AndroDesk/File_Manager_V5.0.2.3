.class public final Landroidx/recyclerview/widget/SpringRecyclerView$d;
.super Lm0/r;
.source "SpringRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/SpringRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/SpringRecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/SpringRecyclerView;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$d;->a:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 3
    invoke-direct {p0, p2}, Lm0/r;-><init>(Landroid/view/View;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final a(II[I[II)Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$d;->a:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 3
    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$300(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_19

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$d;->a:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 11
    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$400(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_19

    .line 17
    if-nez p1, :cond_14

    .line 19
    if-eqz p2, :cond_19

    .line 21
    :cond_14
    invoke-super/range {p0 .. p5}, Lm0/r;->dispatchNestedPreScroll(II[I[II)Z

    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public final b(IIII[II[I)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$d;->a:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 3
    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$300(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_13

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$d;->a:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 11
    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$400(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_13

    .line 17
    invoke-super/range {p0 .. p7}, Lm0/r;->dispatchNestedScroll(IIII[II[I)V

    .line 20
    :cond_13
    return-void
.end method

.method public final dispatchNestedPreScroll(II[I[II)Z
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$d;->a:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 3
    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$100(Landroidx/recyclerview/widget/SpringRecyclerView;)Lmiuix/spring/view/SpringHelper;

    .line 6
    move-result-object v1

    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move v6, p5

    .line 12
    invoke-virtual/range {v1 .. v6}, Lmiuix/spring/view/SpringHelper;->handleNestedPreScroll(II[I[II)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final dispatchNestedScroll(IIII[II[I)V
    .registers 18

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$d;->a:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 4
    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$100(Landroidx/recyclerview/widget/SpringRecyclerView;)Lmiuix/spring/view/SpringHelper;

    .line 7
    move-result-object v2

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move v5, p3

    .line 11
    move v6, p4

    .line 12
    move-object v7, p5

    .line 13
    move/from16 v8, p6

    .line 15
    move-object/from16 v9, p7

    .line 17
    invoke-virtual/range {v2 .. v9}, Lmiuix/spring/view/SpringHelper;->handleNestedScroll(IIII[II[I)V

    .line 20
    return-void
.end method
