.class public final Landroidx/recyclerview/widget/RecyclerView$f;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/RecyclerView;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/a$b;)V
    .registers 6

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_36

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_2a

    .line 9
    const/4 v2, 0x4

    .line 10
    if-eq v0, v2, :cond_1c

    .line 12
    const/16 v2, 0x8

    .line 14
    if-eq v0, v2, :cond_10

    .line 16
    goto :goto_41

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 21
    iget v3, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 23
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    .line 25
    invoke-virtual {v2, v0, v3, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    .line 28
    goto :goto_41

    .line 29
    :cond_1c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 33
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 35
    iget v3, p1, Landroidx/recyclerview/widget/a$b;->d:I

    .line 37
    iget-object p1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 39
    invoke-virtual {v1, v0, v2, v3, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    .line 42
    goto :goto_41

    .line 43
    :cond_2a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 47
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 49
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    .line 51
    invoke-virtual {v1, v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 54
    goto :goto_41

    .line 55
    :cond_36
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 59
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 61
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    .line 63
    invoke-virtual {v1, v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 66
    :goto_41
    return-void
.end method
