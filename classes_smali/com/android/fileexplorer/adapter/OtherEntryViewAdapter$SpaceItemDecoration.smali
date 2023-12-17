.class public Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "OtherEntryViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpaceItemDecoration"
.end annotation


# instance fields
.field private spaceLeft:I

.field private spaceTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0701d7

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 14
    move-result v0

    .line 15
    float-to-int v0, v0

    .line 16
    iput v0, p0, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;->spaceLeft:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p1

    .line 22
    const v0, 0x7f0701d8

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 28
    move-result p1

    .line 29
    float-to-int p1, p1

    .line 30
    iput p1, p0, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;->spaceTop:I

    .line 32
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_a

    .line 7
    iget p2, p0, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;->spaceTop:I

    .line 9
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 11
    :cond_a
    iget p2, p0, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;->spaceLeft:I

    .line 13
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 15
    return-void
.end method
