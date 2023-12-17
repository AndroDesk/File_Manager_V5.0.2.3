.class public Lcom/android/fileexplorer/mirror/MirrorItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "MirrorItemDecoration.java"


# instance fields
.field private bottomMargin:I

.field private topMargin:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/mirror/MirrorItemDecoration;->topMargin:I

    .line 6
    iput p2, p0, Lcom/android/fileexplorer/mirror/MirrorItemDecoration;->bottomMargin:I

    .line 8
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    .line 1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    move-result-object p4

    .line 5
    if-eqz p4, :cond_27

    .line 7
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_15

    .line 13
    iget p2, p0, Lcom/android/fileexplorer/mirror/MirrorItemDecoration;->topMargin:I

    .line 15
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 17
    iget p2, p0, Lcom/android/fileexplorer/mirror/MirrorItemDecoration;->bottomMargin:I

    .line 19
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 21
    goto :goto_27

    .line 22
    :cond_15
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 29
    move-result p2

    .line 30
    const/16 p3, 0x1b

    .line 32
    if-eq p2, p3, :cond_27

    .line 34
    iget p2, p0, Lcom/android/fileexplorer/mirror/MirrorItemDecoration;->bottomMargin:I

    .line 36
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 38
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 40
    :cond_27
    :goto_27
    return-void
.end method
