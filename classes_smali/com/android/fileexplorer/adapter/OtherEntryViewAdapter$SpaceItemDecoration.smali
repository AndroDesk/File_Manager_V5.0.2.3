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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;->spaceLeft:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701d8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;->spaceTop:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-eqz p2, :cond_a

    iget p2, p0, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;->spaceTop:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_a
    iget p2, p0, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter$SpaceItemDecoration;->spaceLeft:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method
