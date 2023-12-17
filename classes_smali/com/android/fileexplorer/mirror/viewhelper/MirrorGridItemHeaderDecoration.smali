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
.field public static final SPAN_COUNT:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;->SPAN_COUNT:I

    return-void
.end method

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

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;->mDataList:Ljava/util/List;

    const p2, 0x7f07031f

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;->marginEnd:I

    const/16 p1, 0x8

    iput p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;->mSpanCount:I

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

    iget p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mIndexInParent:I

    iget v0, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;->mSpanCount:I

    rem-int/2addr p1, v0

    iget v1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;->marginEnd:I

    mul-int v2, p1, v1

    div-int/2addr v2, v0

    iput v2, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 p1, p1, 0x1

    mul-int/2addr p1, v1

    div-int/2addr p1, v0

    sub-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;->mDataList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/group/FileGroupData;

    iget p3, p2, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    const/16 p4, 0x8

    if-eq p3, p4, :cond_1e

    const/4 p4, 0x6

    if-eq p3, p4, :cond_1e

    const/4 p4, 0x7

    if-eq p3, p4, :cond_1e

    invoke-direct {p0, p2, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorGridItemHeaderDecoration;->fitDefaultRect(Lcom/android/fileexplorer/model/group/FileGroupData;Landroid/graphics/Rect;)V

    :cond_1e
    return-void
.end method
