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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/SpringRecyclerView;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$d;->a:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-direct {p0, p2}, Lm0/r;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(II[I[II)Z
    .registers 7

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$d;->a:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$300(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$d;->a:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$400(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v0

    if-nez v0, :cond_19

    if-nez p1, :cond_14

    if-eqz p2, :cond_19

    :cond_14
    invoke-super/range {p0 .. p5}, Lm0/r;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public final b(IIII[II[I)V
    .registers 9

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$d;->a:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$300(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$d;->a:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$400(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-super/range {p0 .. p7}, Lm0/r;->dispatchNestedScroll(IIII[II[I)V

    :cond_13
    return-void
.end method

.method public final dispatchNestedPreScroll(II[I[II)Z
    .registers 13

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$d;->a:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$100(Landroidx/recyclerview/widget/SpringRecyclerView;)Lmiuix/spring/view/SpringHelper;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lmiuix/spring/view/SpringHelper;->handleNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedScroll(IIII[II[I)V
    .registers 18

    move-object v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$d;->a:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$100(Landroidx/recyclerview/widget/SpringRecyclerView;)Lmiuix/spring/view/SpringHelper;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lmiuix/spring/view/SpringHelper;->handleNestedScroll(IIII[II[I)V

    return-void
.end method
