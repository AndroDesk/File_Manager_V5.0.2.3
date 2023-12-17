.class public Lcom/android/fileexplorer/mirror/MirrorItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "MirrorItemDecoration.java"


# instance fields
.field private bottomMargin:I

.field private topMargin:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    iput p1, p0, Lcom/android/fileexplorer/mirror/MirrorItemDecoration;->topMargin:I

    iput p2, p0, Lcom/android/fileexplorer/mirror/MirrorItemDecoration;->bottomMargin:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-eqz p4, :cond_27

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_15

    iget p2, p0, Lcom/android/fileexplorer/mirror/MirrorItemDecoration;->topMargin:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lcom/android/fileexplorer/mirror/MirrorItemDecoration;->bottomMargin:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_27

    :cond_15
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p2

    const/16 p3, 0x1b

    if-eq p2, p3, :cond_27

    iget p2, p0, Lcom/android/fileexplorer/mirror/MirrorItemDecoration;->bottomMargin:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_27
    :goto_27
    return-void
.end method
