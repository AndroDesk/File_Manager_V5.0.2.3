.class public Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "MirrorGridItemHeaderDecoration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$n;"
    }
.end annotation


# static fields
.field public static final SPAN_COUNT:I = 0x8


# instance fields
.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mSpanCount:I

.field private marginEnd:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;->mDataList:Ljava/util/List;

    .line 6
    const p2, 0x7f07031f

    .line 9
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;->marginEnd:I

    .line 15
    const/16 p1, 0x8

    .line 17
    iput p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;->mSpanCount:I

    .line 19
    return-void
.end method

.method private fitDefaultRect(Lcom/android/fileexplorer/model/group/FileGroupData;Landroid/graphics/Rect;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 1
    iget p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mIndexInParent:I

    .line 3
    iget v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;->mSpanCount:I

    .line 5
    rem-int/2addr p1, v0

    .line 6
    iget v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;->marginEnd:I

    .line 8
    mul-int v2, p1, v1

    .line 10
    div-int/2addr v2, v0

    .line 11
    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 15
    mul-int/2addr p1, v1

    .line 16
    div-int/2addr p1, v0

    .line 17
    sub-int/2addr v1, p1

    .line 18
    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 20
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 4
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 7
    move-result p2

    .line 8
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;->mDataList:Ljava/util/List;

    .line 10
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 16
    iget p3, p2, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    .line 18
    const/16 p4, 0x8

    .line 20
    if-eq p3, p4, :cond_1e

    .line 22
    const/4 p4, 0x6

    .line 23
    if-eq p3, p4, :cond_1e

    .line 25
    const/4 p4, 0x7

    .line 26
    if-eq p3, p4, :cond_1e

    .line 28
    invoke-direct {p0, p2, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;->fitDefaultRect(Lcom/android/fileexplorer/model/group/FileGroupData;Landroid/graphics/Rect;)V

    .line 31
    :cond_1e
    return-void
.end method
