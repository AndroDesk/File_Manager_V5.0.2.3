.class public final Landroidx/recyclerview/widget/RecyclerView$t;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$t$a;
    }
.end annotation


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/recyclerview/widget/RecyclerView$t$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:Landroid/util/SparseArray;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->b:I

    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_19

    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$t$a;

    .line 18
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_19
    return-void
.end method

.method public final b(I)Landroidx/recyclerview/widget/RecyclerView$t$a;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$t$a;

    .line 9
    if-nez v0, :cond_14

    .line 11
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$t$a;

    .line 13
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$t$a;-><init>()V

    .line 16
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    :cond_14
    return-object v0
.end method

.method public final c(II)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$t;->b(I)Landroidx/recyclerview/widget/RecyclerView$t$a;

    .line 4
    move-result-object p1

    .line 5
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$t$a;->b:I

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:Ljava/util/ArrayList;

    .line 9
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v0

    .line 13
    if-le v0, p2, :cond_18

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v0

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 21
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 24
    goto :goto_8

    .line 25
    :cond_18
    return-void
.end method
