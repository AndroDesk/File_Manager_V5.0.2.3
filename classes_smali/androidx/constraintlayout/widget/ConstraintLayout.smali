.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$b;,
        Landroidx/constraintlayout/widget/ConstraintLayout$c;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_DRAW_CONSTRAINTS:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final MEASURE:Z = false

.field private static final OPTIMIZE_HEIGHT_CHANGE:Z = false

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-2.1.4"

.field private static sSharedValues:Lz/e;


# instance fields
.field public mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/b;",
            ">;"
        }
    .end annotation
.end field

.field public mConstraintLayoutSpec:Lz/a;

.field private mConstraintSet:Landroidx/constraintlayout/widget/c;

.field private mConstraintSetId:I

.field private mConstraintsChangedListener:Lz/b;

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field public mLastMeasureHeightMode:I

.field public mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field public mLastMeasureWidthMode:I

.field public mLastMeasureWidthSize:I

.field public mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field public mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$c;

.field private mMetrics:Lt/b;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOnMeasureHeightMeasureSpec:I

.field private mOnMeasureWidthMeasureSpec:I

.field private mOptimizationLevel:I

.field private mTempMapIdToWidget:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Landroidx/constraintlayout/core/widgets/d;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/d;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/c;

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lz/a;

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 15
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 16
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 17
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 18
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 19
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 20
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 21
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 22
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 23
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 24
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 25
    invoke-direct {p0, v0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 29
    new-instance p1, Landroidx/constraintlayout/core/widgets/d;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/d;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 31
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    .line 32
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 33
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    .line 35
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/c;

    .line 37
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lz/a;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 40
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 41
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 42
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 43
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 44
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 45
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 48
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 49
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 50
    invoke-direct {p0, p2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 54
    new-instance p1, Landroidx/constraintlayout/core/widgets/d;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/d;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 56
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    .line 57
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 58
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    .line 60
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/c;

    .line 62
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lz/a;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 65
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 66
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 67
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 68
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 69
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 70
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 73
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 74
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 75
    invoke-direct {p0, p2, p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 79
    new-instance p1, Landroidx/constraintlayout/core/widgets/d;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/d;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 81
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    .line 82
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 83
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    .line 85
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/c;

    .line 87
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lz/a;

    const/4 v0, -0x1

    .line 88
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 90
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 91
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 92
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 93
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 94
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 95
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 98
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 99
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 100
    invoke-direct {p0, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 3
    return p0
.end method

.method public static synthetic access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method private getPaddingWidth()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 13
    move-result v2

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 30
    move-result v3

    .line 31
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    if-lez v1, :cond_26

    .line 38
    move v2, v1

    .line 39
    :cond_26
    return v2
.end method

.method public static getSharedValues()Lz/e;
    .registers 1

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Lz/e;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lz/e;

    .line 7
    invoke-direct {v0}, Lz/e;-><init>()V

    .line 10
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Lz/e;

    .line 12
    :cond_b
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Lz/e;

    .line 14
    return-object v0
.end method

.method private final getTargetWidget(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 3

    .line 1
    if-nez p1, :cond_5

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 5
    return-object p1

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/view/View;

    .line 14
    if-nez v0, :cond_20

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_20

    .line 22
    if-eq v0, p0, :cond_20

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    move-result-object p1

    .line 28
    if-ne p1, p0, :cond_20

    .line 30
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 33
    :cond_20
    if-ne v0, p0, :cond_25

    .line 35
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 37
    return-object p1

    .line 38
    :cond_25
    if-nez v0, :cond_29

    .line 40
    const/4 p1, 0x0

    .line 41
    goto :goto_31

    .line 42
    :cond_29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 48
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 50
    :goto_31
    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 3
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 7
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/d;->w0:Lw/b$b;

    .line 9
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/d;->u0:Lw/e;

    .line 11
    iput-object v1, v0, Lw/e;->f:Lw/b$b;

    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/c;

    .line 25
    if-eqz p1, :cond_a3

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Lz/d;->ConstraintLayout_Layout:[I

    .line 33
    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 40
    move-result p2

    .line 41
    const/4 p3, 0x0

    .line 42
    move v1, p3

    .line 43
    :goto_2a
    if-ge v1, p2, :cond_a0

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 48
    move-result v2

    .line 49
    sget v3, Lz/d;->ConstraintLayout_Layout_android_minWidth:I

    .line 51
    if-ne v2, v3, :cond_3d

    .line 53
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 55
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 58
    move-result v2

    .line 59
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 61
    goto :goto_9d

    .line 62
    :cond_3d
    sget v3, Lz/d;->ConstraintLayout_Layout_android_minHeight:I

    .line 64
    if-ne v2, v3, :cond_4a

    .line 66
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 68
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 71
    move-result v2

    .line 72
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 74
    goto :goto_9d

    .line 75
    :cond_4a
    sget v3, Lz/d;->ConstraintLayout_Layout_android_maxWidth:I

    .line 77
    if-ne v2, v3, :cond_57

    .line 79
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 81
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 84
    move-result v2

    .line 85
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 87
    goto :goto_9d

    .line 88
    :cond_57
    sget v3, Lz/d;->ConstraintLayout_Layout_android_maxHeight:I

    .line 90
    if-ne v2, v3, :cond_64

    .line 92
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 94
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 97
    move-result v2

    .line 98
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 100
    goto :goto_9d

    .line 101
    :cond_64
    sget v3, Lz/d;->ConstraintLayout_Layout_layout_optimizationLevel:I

    .line 103
    if-ne v2, v3, :cond_71

    .line 105
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 107
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 110
    move-result v2

    .line 111
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 113
    goto :goto_9d

    .line 114
    :cond_71
    sget v3, Lz/d;->ConstraintLayout_Layout_layoutDescription:I

    .line 116
    if-ne v2, v3, :cond_82

    .line 118
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_9d

    .line 124
    :try_start_7b
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->parseLayoutDescription(I)V
    :try_end_7e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 127
    goto :goto_9d

    .line 128
    :catch_7f
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lz/a;

    .line 130
    goto :goto_9d

    .line 131
    :cond_82
    sget v3, Lz/d;->ConstraintLayout_Layout_constraintSet:I

    .line 133
    if-ne v2, v3, :cond_9d

    .line 135
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 138
    move-result v2

    .line 139
    :try_start_8a
    new-instance v3, Landroidx/constraintlayout/widget/c;

    .line 141
    invoke-direct {v3}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 144
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/c;

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v3, v4, v2}, Landroidx/constraintlayout/widget/c;->l(Landroid/content/Context;I)V
    :try_end_98
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8a .. :try_end_98} :catch_99

    .line 153
    goto :goto_9b

    .line 154
    :catch_99
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/c;

    .line 156
    :goto_9b
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 158
    :cond_9d
    :goto_9d
    add-int/lit8 v1, v1, 0x1

    .line 160
    goto :goto_2a

    .line 161
    :cond_a0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    :cond_a3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 166
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 168
    iput p2, p1, Landroidx/constraintlayout/core/widgets/d;->F0:I

    .line 170
    const/16 p2, 0x200

    .line 172
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/d;->S(I)Z

    .line 175
    move-result p1

    .line 176
    sput-boolean p1, Landroidx/constraintlayout/core/c;->p:Z

    .line 178
    return-void
.end method

.method private markHierarchyDirty()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 9
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 11
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 16
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 18
    return-void
.end method

.method private setChildrenConstraints()V
    .registers 15

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 4
    move-result v6

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v7

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_a
    if-ge v1, v7, :cond_1d

    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_17

    .line 23
    goto :goto_1a

    .line 24
    :cond_17
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A()V

    .line 27
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_a

    .line 30
    :cond_1d
    const/4 v1, -0x1

    .line 31
    if-eqz v6, :cond_59

    .line 33
    move v2, v0

    .line 34
    :goto_21
    if-ge v2, v7, :cond_59

    .line 36
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    move-result-object v3

    .line 40
    :try_start_27
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 47
    move-result v5

    .line 48
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 55
    move-result v5

    .line 56
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {p0, v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    const/16 v5, 0x2f

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 68
    move-result v5

    .line 69
    if-eq v5, v1, :cond_4c

    .line 71
    add-int/lit8 v5, v5, 0x1

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 76
    move-result-object v4

    .line 77
    :cond_4c
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 80
    move-result v3

    .line 81
    invoke-direct {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 84
    move-result-object v3

    .line 85
    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;
    :try_end_56
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_56} :catch_56

    .line 87
    :catch_56
    add-int/lit8 v2, v2, 0x1

    .line 89
    goto :goto_21

    .line 90
    :cond_59
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 92
    if-eq v2, v1, :cond_7b

    .line 94
    move v2, v0

    .line 95
    :goto_5e
    if-ge v2, v7, :cond_7b

    .line 97
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 104
    move-result v4

    .line 105
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 107
    if-ne v4, v5, :cond_78

    .line 109
    instance-of v4, v3, Landroidx/constraintlayout/widget/d;

    .line 111
    if-eqz v4, :cond_78

    .line 113
    check-cast v3, Landroidx/constraintlayout/widget/d;

    .line 115
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/d;->getConstraintSet()Landroidx/constraintlayout/widget/c;

    .line 118
    move-result-object v3

    .line 119
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/c;

    .line 121
    :cond_78
    add-int/lit8 v2, v2, 0x1

    .line 123
    goto :goto_5e

    .line 124
    :cond_7b
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/c;

    .line 126
    if-eqz v2, :cond_82

    .line 128
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/widget/c;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 131
    :cond_82
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 133
    iget-object v2, v2, Lv/c;->s0:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 138
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 143
    move-result v2

    .line 144
    const/4 v3, 0x1

    .line 145
    if-lez v2, :cond_11f

    .line 147
    move v4, v0

    .line 148
    :goto_93
    if-ge v4, v2, :cond_11f

    .line 150
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    move-result-object v5

    .line 156
    check-cast v5, Landroidx/constraintlayout/widget/b;

    .line 158
    invoke-virtual {v5}, Landroid/view/View;->isInEditMode()Z

    .line 161
    move-result v8

    .line 162
    if-eqz v8, :cond_a8

    .line 164
    iget-object v8, v5, Landroidx/constraintlayout/widget/b;->e:Ljava/lang/String;

    .line 166
    invoke-virtual {v5, v8}, Landroidx/constraintlayout/widget/b;->setIds(Ljava/lang/String;)V

    .line 169
    :cond_a8
    iget-object v8, v5, Landroidx/constraintlayout/widget/b;->d:Landroidx/constraintlayout/core/widgets/a;

    .line 171
    if-nez v8, :cond_ad

    .line 173
    goto :goto_11b

    .line 174
    :cond_ad
    iput v0, v8, Lv/b;->t0:I

    .line 176
    iget-object v8, v8, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 178
    const/4 v9, 0x0

    .line 179
    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    move v8, v0

    .line 183
    :goto_b6
    iget v9, v5, Landroidx/constraintlayout/widget/b;->b:I

    .line 185
    if-ge v8, v9, :cond_116

    .line 187
    iget-object v9, v5, Landroidx/constraintlayout/widget/b;->a:[I

    .line 189
    aget v9, v9, v8

    .line 191
    invoke-virtual {p0, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 194
    move-result-object v10

    .line 195
    if-nez v10, :cond_e7

    .line 197
    iget-object v11, v5, Landroidx/constraintlayout/widget/b;->h:Ljava/util/HashMap;

    .line 199
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object v9

    .line 203
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    move-result-object v9

    .line 207
    check-cast v9, Ljava/lang/String;

    .line 209
    invoke-virtual {v5, p0, v9}, Landroidx/constraintlayout/widget/b;->i(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    .line 212
    move-result v11

    .line 213
    if-eqz v11, :cond_e7

    .line 215
    iget-object v10, v5, Landroidx/constraintlayout/widget/b;->a:[I

    .line 217
    aput v11, v10, v8

    .line 219
    iget-object v10, v5, Landroidx/constraintlayout/widget/b;->h:Ljava/util/HashMap;

    .line 221
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    move-result-object v12

    .line 225
    invoke-virtual {v10, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {p0, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 231
    move-result-object v10

    .line 232
    :cond_e7
    if-eqz v10, :cond_113

    .line 234
    iget-object v9, v5, Landroidx/constraintlayout/widget/b;->d:Landroidx/constraintlayout/core/widgets/a;

    .line 236
    invoke-virtual {p0, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 239
    move-result-object v10

    .line 240
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    if-eq v10, v9, :cond_113

    .line 245
    if-nez v10, :cond_f7

    .line 247
    goto :goto_113

    .line 248
    :cond_f7
    iget v11, v9, Lv/b;->t0:I

    .line 250
    add-int/2addr v11, v3

    .line 251
    iget-object v12, v9, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 253
    array-length v13, v12

    .line 254
    if-le v11, v13, :cond_10a

    .line 256
    array-length v11, v12

    .line 257
    mul-int/lit8 v11, v11, 0x2

    .line 259
    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 262
    move-result-object v11

    .line 263
    check-cast v11, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 265
    iput-object v11, v9, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 267
    :cond_10a
    iget-object v11, v9, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 269
    iget v12, v9, Lv/b;->t0:I

    .line 271
    aput-object v10, v11, v12

    .line 273
    add-int/2addr v12, v3

    .line 274
    iput v12, v9, Lv/b;->t0:I

    .line 276
    :cond_113
    :goto_113
    add-int/lit8 v8, v8, 0x1

    .line 278
    goto :goto_b6

    .line 279
    :cond_116
    iget-object v5, v5, Landroidx/constraintlayout/widget/b;->d:Landroidx/constraintlayout/core/widgets/a;

    .line 281
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    :goto_11b
    add-int/lit8 v4, v4, 0x1

    .line 286
    goto/16 :goto_93

    .line 288
    :cond_11f
    move v2, v0

    .line 289
    :goto_120
    if-ge v2, v7, :cond_158

    .line 291
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 294
    move-result-object v4

    .line 295
    instance-of v5, v4, Landroidx/constraintlayout/widget/f;

    .line 297
    if-eqz v5, :cond_155

    .line 299
    check-cast v4, Landroidx/constraintlayout/widget/f;

    .line 301
    iget v5, v4, Landroidx/constraintlayout/widget/f;->a:I

    .line 303
    if-ne v5, v1, :cond_13b

    .line 305
    invoke-virtual {v4}, Landroid/view/View;->isInEditMode()Z

    .line 308
    move-result v5

    .line 309
    if-nez v5, :cond_13b

    .line 311
    iget v5, v4, Landroidx/constraintlayout/widget/f;->c:I

    .line 313
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 316
    :cond_13b
    iget v5, v4, Landroidx/constraintlayout/widget/f;->a:I

    .line 318
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 321
    move-result-object v5

    .line 322
    iput-object v5, v4, Landroidx/constraintlayout/widget/f;->b:Landroid/view/View;

    .line 324
    if-eqz v5, :cond_155

    .line 326
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 329
    move-result-object v5

    .line 330
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 332
    iput-boolean v3, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f0:Z

    .line 334
    iget-object v5, v4, Landroidx/constraintlayout/widget/f;->b:Landroid/view/View;

    .line 336
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 339
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 342
    :cond_155
    add-int/lit8 v2, v2, 0x1

    .line 344
    goto :goto_120

    .line 345
    :cond_158
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 347
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 350
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 352
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 354
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 359
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 362
    move-result v2

    .line 363
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 365
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    move v1, v0

    .line 369
    :goto_170
    if-ge v1, v7, :cond_186

    .line 371
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 378
    move-result-object v3

    .line 379
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 381
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 384
    move-result v2

    .line 385
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    add-int/lit8 v1, v1, 0x1

    .line 390
    goto :goto_170

    .line 391
    :cond_186
    move v8, v0

    .line 392
    :goto_187
    if-ge v8, v7, :cond_1bc

    .line 394
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 397
    move-result-object v2

    .line 398
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 401
    move-result-object v3

    .line 402
    if-nez v3, :cond_194

    .line 404
    goto :goto_1b9

    .line 405
    :cond_194
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 408
    move-result-object v0

    .line 409
    move-object v4, v0

    .line 410
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 412
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 414
    iget-object v1, v0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 416
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v1, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 421
    if-eqz v1, :cond_1b0

    .line 423
    check-cast v1, Lv/c;

    .line 425
    iget-object v1, v1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 427
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A()V

    .line 433
    :cond_1b0
    iput-object v0, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 435
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 437
    move-object v0, p0

    .line 438
    move v1, v6

    .line 439
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$b;Landroid/util/SparseArray;)V

    .line 442
    :goto_1b9
    add-int/lit8 v8, v8, 0x1

    .line 444
    goto :goto_187

    .line 445
    :cond_1bc
    return-void
.end method

.method private setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$b;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$b;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;I",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 15
    if-eqz p3, :cond_50

    .line 17
    if-eqz v0, :cond_50

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object p4

    .line 23
    instance-of p4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 25
    if-eqz p4, :cond_50

    .line 27
    const/4 p4, 0x1

    .line 28
    iput-boolean p4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c0:Z

    .line 30
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 32
    if-ne p5, v1, :cond_2d

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 40
    iput-boolean p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c0:Z

    .line 42
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 44
    iput-boolean p4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 46
    :cond_2d
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p3, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 53
    move-result-object p3

    .line 54
    iget p5, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->D:I

    .line 56
    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->C:I

    .line 58
    invoke-virtual {v0, p3, p5, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;II)V

    .line 61
    iput-boolean p4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 63
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 65
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g()V

    .line 72
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 74
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g()V

    .line 81
    :cond_50
    return-void
.end method

.method private updateHierarchy()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    if-ge v2, v0, :cond_17

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_14

    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_17

    .line 21
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_6

    .line 24
    :cond_17
    :goto_17
    if-eqz v1, :cond_1c

    .line 26
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setChildrenConstraints()V

    .line 29
    :cond_1c
    return v1
.end method


# virtual methods
.method public applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$b;Landroid/util/SparseArray;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$b;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 1
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a()V

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 3
    iput v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 4
    iget-boolean v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f0:Z

    const/4 v9, 0x1

    if-eqz v1, :cond_1c

    .line 5
    iput-boolean v9, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G:Z

    const/16 v1, 0x8

    .line 6
    iput v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 7
    :cond_1c
    iput-object v0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:Ljava/lang/Object;

    .line 8
    instance-of v1, v0, Landroidx/constraintlayout/widget/b;

    if-eqz v1, :cond_2e

    .line 9
    check-cast v0, Landroidx/constraintlayout/widget/b;

    move-object/from16 v10, p0

    .line 10
    iget-object v1, v10, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 11
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/d;->x0:Z

    .line 12
    invoke-virtual {v0, v6, v1}, Landroidx/constraintlayout/widget/b;->k(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    goto :goto_30

    :cond_2e
    move-object/from16 v10, p0

    .line 13
    :goto_30
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d0:Z

    const/4 v11, -0x1

    if-eqz v0, :cond_66

    .line 14
    move-object v0, v6

    check-cast v0, Landroidx/constraintlayout/core/widgets/e;

    .line 15
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n0:I

    .line 16
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o0:I

    .line 17
    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p0:F

    const/high16 v4, -0x40800000  # -1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_4e

    if-lez v5, :cond_33d

    .line 18
    iput v3, v0, Landroidx/constraintlayout/core/widgets/e;->s0:F

    .line 19
    iput v11, v0, Landroidx/constraintlayout/core/widgets/e;->t0:I

    .line 20
    iput v11, v0, Landroidx/constraintlayout/core/widgets/e;->u0:I

    goto/16 :goto_33d

    :cond_4e
    if-eq v1, v11, :cond_5a

    if-le v1, v11, :cond_33d

    .line 21
    iput v4, v0, Landroidx/constraintlayout/core/widgets/e;->s0:F

    .line 22
    iput v1, v0, Landroidx/constraintlayout/core/widgets/e;->t0:I

    .line 23
    iput v11, v0, Landroidx/constraintlayout/core/widgets/e;->u0:I

    goto/16 :goto_33d

    :cond_5a
    if-eq v2, v11, :cond_33d

    if-le v2, v11, :cond_33d

    .line 24
    iput v4, v0, Landroidx/constraintlayout/core/widgets/e;->s0:F

    .line 25
    iput v11, v0, Landroidx/constraintlayout/core/widgets/e;->t0:I

    .line 26
    iput v2, v0, Landroidx/constraintlayout/core/widgets/e;->u0:I

    goto/16 :goto_33d

    .line 27
    :cond_66
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g0:I

    .line 28
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h0:I

    .line 29
    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i0:I

    .line 30
    iget v13, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j0:I

    .line 31
    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k0:I

    .line 32
    iget v14, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l0:I

    .line 33
    iget v15, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:F

    .line 34
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p:I

    const/4 v4, 0x0

    if-eq v2, v11, :cond_99

    .line 35
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_95

    .line 36
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r:F

    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q:I

    .line 37
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/4 v12, 0x0

    move-object/from16 v0, p3

    move-object v1, v3

    move v13, v4

    move v4, v5

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 38
    iput v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E:F

    goto :goto_96

    :cond_95
    move v13, v4

    :goto_96
    move v9, v13

    goto/16 :goto_1a6

    :cond_99
    if-eq v0, v11, :cond_b6

    .line 39
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_b4

    .line 40
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, p3

    move/from16 v16, v1

    move-object v1, v3

    move v9, v4

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto :goto_cd

    :cond_b4
    move v9, v4

    goto :goto_cd

    :cond_b6
    move v9, v4

    if-eq v1, v11, :cond_cd

    .line 41
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_cd

    .line 42
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    :cond_cd
    :goto_cd
    if-eq v12, v11, :cond_e5

    .line 43
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_fb

    .line 44
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v0, p3

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto :goto_fb

    :cond_e5
    if-eq v13, v11, :cond_fb

    .line 45
    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_fb

    .line 46
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v0, p3

    move-object v1, v3

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 47
    :cond_fb
    :goto_fb
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    if-eq v0, v11, :cond_115

    .line 48
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_12f

    .line 49
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->x:I

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto :goto_12f

    .line 50
    :cond_115
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    if-eq v0, v11, :cond_12f

    .line 51
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_12f

    .line 52
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->x:I

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 53
    :cond_12f
    :goto_12f
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    if-eq v0, v11, :cond_14a

    .line 54
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_163

    .line 55
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->z:I

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto :goto_163

    .line 56
    :cond_14a
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    if-eq v0, v11, :cond_163

    .line 57
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_163

    .line 58
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->z:I

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 59
    :cond_163
    :goto_163
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m:I

    if-eq v4, v11, :cond_175

    .line 60
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$b;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    goto :goto_198

    .line 61
    :cond_175
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n:I

    if-eq v4, v11, :cond_187

    .line 62
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$b;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    goto :goto_198

    .line 63
    :cond_187
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o:I

    if-eq v4, v11, :cond_198

    .line 64
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$b;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    :cond_198
    :goto_198
    cmpl-float v0, v15, v9

    if-ltz v0, :cond_19e

    .line 65
    iput v15, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    .line 66
    :cond_19e
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->F:F

    cmpl-float v1, v0, v9

    if-ltz v1, :cond_1a6

    .line 67
    iput v0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    :cond_1a6
    :goto_1a6
    if-eqz p1, :cond_1b6

    .line 68
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:I

    if-ne v0, v11, :cond_1b0

    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I

    if-eq v1, v11, :cond_1b6

    .line 69
    :cond_1b0
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->U:I

    .line 70
    iput v0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 71
    iput v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 72
    :cond_1b6
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a0:Z

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-nez v0, :cond_1ed

    .line 73
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v0, v11, :cond_1e4

    .line 74
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->W:Z

    if-eqz v0, :cond_1ca

    .line 75
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_1cf

    .line 76
    :cond_1ca
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 77
    :goto_1cf
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 78
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    goto :goto_200

    .line 79
    :cond_1e4
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 80
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    goto :goto_200

    .line 81
    :cond_1ed
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 82
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 83
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v0, v1, :cond_200

    .line 84
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 85
    :cond_200
    :goto_200
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b0:Z

    if-nez v0, :cond_235

    .line 86
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v0, v11, :cond_22c

    .line 87
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:Z

    if-eqz v0, :cond_212

    .line 88
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_217

    .line 89
    :cond_212
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 90
    :goto_217
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 91
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    goto :goto_248

    .line 92
    :cond_22c
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 93
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    goto :goto_248

    .line 94
    :cond_235
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 95
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 96
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v0, v1, :cond_248

    .line 97
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 98
    :cond_248
    :goto_248
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->G:Ljava/lang/String;

    if-eqz v0, :cond_2da

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_254

    goto/16 :goto_2da

    .line 100
    :cond_254
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x2c

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_280

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_280

    .line 102
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "W"

    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_272

    move v11, v2

    goto :goto_27d

    :cond_272
    const-string v5, "H"

    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27d

    const/4 v4, 0x1

    const/4 v11, 0x1

    goto :goto_27e

    :cond_27d
    :goto_27d
    const/4 v4, 0x1

    :goto_27e
    add-int/2addr v3, v4

    goto :goto_282

    :cond_280
    const/4 v4, 0x1

    move v3, v2

    :goto_282
    const/16 v5, 0x3a

    .line 105
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_2c1

    sub-int/2addr v1, v4

    if-ge v5, v1, :cond_2c1

    .line 106
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v5, v4

    .line 107
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2d0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2d0

    .line 109
    :try_start_2a2
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 110
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    cmpl-float v3, v1, v9

    if-lez v3, :cond_2d0

    cmpl-float v3, v0, v9

    if-lez v3, :cond_2d0

    const/4 v3, 0x1

    if-ne v11, v3, :cond_2bb

    div-float/2addr v0, v1

    .line 111
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    goto :goto_2d1

    :cond_2bb
    div-float/2addr v1, v0

    .line 112
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4
    :try_end_2c0
    .catch Ljava/lang/NumberFormatException; {:try_start_2a2 .. :try_end_2c0} :catch_2d0

    goto :goto_2d1

    .line 113
    :cond_2c1
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2d0

    .line 115
    :try_start_2cb
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_2cf
    .catch Ljava/lang/NumberFormatException; {:try_start_2cb .. :try_end_2cf} :catch_2d0

    goto :goto_2d1

    :catch_2d0
    :cond_2d0
    move v4, v9

    :goto_2d1
    cmpl-float v0, v4, v9

    if-lez v0, :cond_2dc

    .line 116
    iput v4, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 117
    iput v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    goto :goto_2dc

    .line 118
    :cond_2da
    :goto_2da
    iput v9, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 119
    :cond_2dc
    :goto_2dc
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:F

    .line 120
    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:[F

    aput v0, v1, v2

    .line 121
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:F

    const/4 v3, 0x1

    .line 122
    aput v0, v1, v3

    .line 123
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->J:I

    .line 124
    iput v0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l0:I

    .line 125
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->K:I

    .line 126
    iput v0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m0:I

    .line 127
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:I

    if-ltz v0, :cond_2f8

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2f8

    .line 128
    iput v0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 129
    :cond_2f8
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->L:I

    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->N:I

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I

    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:F

    .line 130
    iput v0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 131
    iput v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    const v1, 0x7fffffff

    if-ne v3, v1, :cond_30a

    move v3, v2

    .line 132
    :cond_30a
    iput v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 133
    iput v4, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:F

    cmpl-float v3, v4, v9

    const/4 v5, 0x2

    const/high16 v8, 0x3f800000  # 1.0f

    if-lez v3, :cond_31d

    cmpg-float v3, v4, v8

    if-gez v3, :cond_31d

    if-nez v0, :cond_31d

    .line 134
    iput v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 135
    :cond_31d
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->M:I

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->O:I

    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;->S:F

    .line 136
    iput v0, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 137
    iput v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    if-ne v4, v1, :cond_32c

    goto :goto_32d

    :cond_32c
    move v2, v4

    .line 138
    :goto_32d
    iput v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 139
    iput v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    cmpl-float v1, v7, v9

    if-lez v1, :cond_33d

    cmpg-float v1, v7, v8

    if-gez v1, :cond_33d

    if-nez v0, :cond_33d

    .line 140
    iput v5, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    :cond_33d
    :goto_33d
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 3
    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1e

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    if-lez v1, :cond_1e

    .line 14
    move v3, v2

    .line 15
    :goto_e
    if-ge v3, v1, :cond_1e

    .line 17
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Landroidx/constraintlayout/widget/b;

    .line 25
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_e

    .line 31
    :cond_1e
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_db

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 43
    move-result v1

    .line 44
    int-to-float v1, v1

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 48
    move-result v3

    .line 49
    int-to-float v3, v3

    .line 50
    const/high16 v4, 0x44870000  # 1080.0f

    .line 52
    const/high16 v5, 0x44f00000  # 1920.0f

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 57
    move-result v6

    .line 58
    move v7, v2

    .line 59
    :goto_3a
    if-ge v7, v6, :cond_db

    .line 61
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 68
    move-result v9

    .line 69
    const/16 v10, 0x8

    .line 71
    if-ne v9, v10, :cond_4a

    .line 73
    goto/16 :goto_d7

    .line 75
    :cond_4a
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 78
    move-result-object v8

    .line 79
    if-eqz v8, :cond_d7

    .line 81
    instance-of v9, v8, Ljava/lang/String;

    .line 83
    if-eqz v9, :cond_d7

    .line 85
    check-cast v8, Ljava/lang/String;

    .line 87
    const-string v9, ","

    .line 89
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 92
    move-result-object v8

    .line 93
    array-length v9, v8

    .line 94
    const/4 v10, 0x4

    .line 95
    if-ne v9, v10, :cond_d7

    .line 97
    aget-object v9, v8, v2

    .line 99
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 102
    move-result v9

    .line 103
    const/4 v10, 0x1

    .line 104
    aget-object v10, v8, v10

    .line 106
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 109
    move-result v10

    .line 110
    const/4 v11, 0x2

    .line 111
    aget-object v11, v8, v11

    .line 113
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 116
    move-result v11

    .line 117
    const/4 v12, 0x3

    .line 118
    aget-object v8, v8, v12

    .line 120
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 123
    move-result v8

    .line 124
    int-to-float v9, v9

    .line 125
    div-float/2addr v9, v4

    .line 126
    mul-float/2addr v9, v1

    .line 127
    float-to-int v9, v9

    .line 128
    int-to-float v10, v10

    .line 129
    div-float/2addr v10, v5

    .line 130
    mul-float/2addr v10, v3

    .line 131
    float-to-int v10, v10

    .line 132
    int-to-float v11, v11

    .line 133
    div-float/2addr v11, v4

    .line 134
    mul-float/2addr v11, v1

    .line 135
    float-to-int v11, v11

    .line 136
    int-to-float v8, v8

    .line 137
    div-float/2addr v8, v5

    .line 138
    mul-float/2addr v8, v3

    .line 139
    float-to-int v8, v8

    .line 140
    new-instance v15, Landroid/graphics/Paint;

    .line 142
    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 145
    const/high16 v12, -0x10000

    .line 147
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    int-to-float v14, v9

    .line 151
    int-to-float v13, v10

    .line 152
    add-int/2addr v9, v11

    .line 153
    int-to-float v9, v9

    .line 154
    move-object/from16 v12, p1

    .line 156
    move v11, v13

    .line 157
    move v13, v14

    .line 158
    move/from16 v18, v14

    .line 160
    move v14, v11

    .line 161
    move-object/from16 v19, v15

    .line 163
    move v15, v9

    .line 164
    move/from16 v16, v11

    .line 166
    move-object/from16 v17, v19

    .line 168
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 171
    add-int/2addr v10, v8

    .line 172
    int-to-float v8, v10

    .line 173
    move v13, v9

    .line 174
    move/from16 v16, v8

    .line 176
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 179
    move v14, v8

    .line 180
    move/from16 v15, v18

    .line 182
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 185
    move/from16 v13, v18

    .line 187
    move/from16 v16, v11

    .line 189
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 192
    const v10, -0xff0100

    .line 195
    move-object/from16 v15, v19

    .line 197
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    move v14, v11

    .line 201
    move-object v10, v15

    .line 202
    move v15, v9

    .line 203
    move/from16 v16, v8

    .line 205
    move-object/from16 v17, v10

    .line 207
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 210
    move v14, v8

    .line 211
    move/from16 v16, v11

    .line 213
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 216
    :cond_d7
    :goto_d7
    add-int/lit8 v7, v7, 0x1

    .line 218
    goto/16 :goto_3a

    .line 220
    :cond_db
    return-void
.end method

.method public fillMetrics(Lt/b;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 3
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/d;->y0:Landroidx/constraintlayout/core/c;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    return-void
.end method

.method public forceLayout()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->markHierarchyDirty()V

    .line 4
    invoke-super {p0}, Landroid/view/View;->forceLayout()V

    .line 7
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$b;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$b;
    .registers 3

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$b;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 3
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$b;
    .registers 4

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    if-nez p1, :cond_19

    .line 3
    instance-of p1, p2, Ljava/lang/String;

    .line 5
    if-eqz p1, :cond_19

    .line 7
    check-cast p2, Ljava/lang/String;

    .line 9
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 11
    if-eqz p1, :cond_19

    .line 13
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_19

    .line 19
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 21
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method public getMaxHeight()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 3
    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 3
    return v0
.end method

.method public getMinHeight()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 3
    return v0
.end method

.method public getMinWidth()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 3
    return v0
.end method

.method public getOptimizationLevel()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 3
    iget v0, v0, Landroidx/constraintlayout/core/widgets/d;->F0:I

    .line 5
    return v0
.end method

.method public getSceneString()Ljava/lang/String;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 8
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Ljava/lang/String;

    .line 10
    const/4 v2, -0x1

    .line 11
    if-nez v1, :cond_29

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 16
    move-result v1

    .line 17
    if-eq v1, v2, :cond_23

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 33
    iput-object v1, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Ljava/lang/String;

    .line 35
    goto :goto_29

    .line 36
    :cond_23
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 38
    const-string v3, "parent"

    .line 40
    iput-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Ljava/lang/String;

    .line 42
    :cond_29
    :goto_29
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 44
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    .line 46
    const-string v4, " setDebugName "

    .line 48
    const-string v5, "ConstraintLayout"

    .line 50
    if-nez v3, :cond_49

    .line 52
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Ljava/lang/String;

    .line 54
    iput-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    .line 56
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move-result-object v1

    .line 60
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 62
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_49
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 76
    iget-object v1, v1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object v1

    .line 82
    :cond_51
    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_94

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 94
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:Ljava/lang/Object;

    .line 96
    check-cast v6, Landroid/view/View;

    .line 98
    if-eqz v6, :cond_51

    .line 100
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Ljava/lang/String;

    .line 102
    if-nez v7, :cond_7b

    .line 104
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 107
    move-result v6

    .line 108
    if-eq v6, v2, :cond_7b

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    move-result-object v7

    .line 118
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 121
    move-result-object v6

    .line 122
    iput-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Ljava/lang/String;

    .line 124
    :cond_7b
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    .line 126
    if-nez v6, :cond_51

    .line 128
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Ljava/lang/String;

    .line 130
    iput-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    .line 132
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    move-result-object v6

    .line 136
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    .line 138
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v3

    .line 145
    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    goto :goto_51

    .line 149
    :cond_94
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 151
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/d;->l(Ljava/lang/StringBuilder;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 158
    return-object v0
.end method

.method public getViewById(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/View;

    .line 9
    return-object p1
.end method

.method public final getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 3

    .line 1
    if-ne p1, p0, :cond_5

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 5
    return-object p1

    .line 6
    :cond_5
    if-eqz p1, :cond_34

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    move-result-object v0

    .line 12
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 14
    if-eqz v0, :cond_18

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 22
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 24
    return-object p1

    .line 25
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    move-result-object v0

    .line 40
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 42
    if-eqz v0, :cond_34

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 50
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 52
    return-object p1

    .line 53
    :cond_34
    const/4 p1, 0x0

    .line 54
    return-object p1
.end method

.method public isRtl()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 11
    const/high16 v1, 0x400000

    .line 13
    and-int/2addr v0, v1

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_13

    .line 18
    move v0, v2

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v0, v1

    .line 21
    :goto_14
    if-eqz v0, :cond_1d

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 26
    move-result v0

    .line 27
    if-ne v2, v0, :cond_1d

    .line 29
    move v1, v2

    .line 30
    :cond_1d
    return v1
.end method

.method public loadLayoutDescription(I)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_12

    .line 4
    :try_start_3
    new-instance v1, Lz/a;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v2

    .line 10
    invoke-direct {v1, v2, p0, p1}, Lz/a;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    .line 13
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lz/a;
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_e} :catch_f

    .line 15
    goto :goto_14

    .line 16
    :catch_f
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lz/a;

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lz/a;

    .line 21
    :goto_14
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 8
    move-result p2

    .line 9
    const/4 p3, 0x0

    .line 10
    move p4, p3

    .line 11
    :goto_a
    if-ge p4, p1, :cond_5a

    .line 13
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object p5

    .line 17
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 23
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 28
    move-result v2

    .line 29
    const/16 v3, 0x8

    .line 31
    if-ne v2, v3, :cond_2b

    .line 33
    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d0:Z

    .line 35
    if-nez v2, :cond_2b

    .line 37
    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e0:Z

    .line 39
    if-nez v2, :cond_2b

    .line 41
    if-nez p2, :cond_2b

    .line 43
    goto :goto_57

    .line 44
    :cond_2b
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f0:Z

    .line 46
    if-eqz v0, :cond_30

    .line 48
    goto :goto_57

    .line 49
    :cond_30
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 52
    move-result v0

    .line 53
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 60
    move-result v3

    .line 61
    add-int/2addr v3, v0

    .line 62
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 65
    move-result v1

    .line 66
    add-int/2addr v1, v2

    .line 67
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 70
    instance-of v4, p5, Landroidx/constraintlayout/widget/f;

    .line 72
    if-eqz v4, :cond_57

    .line 74
    check-cast p5, Landroidx/constraintlayout/widget/f;

    .line 76
    invoke-virtual {p5}, Landroidx/constraintlayout/widget/f;->getContent()Landroid/view/View;

    .line 79
    move-result-object p5

    .line 80
    if-eqz p5, :cond_57

    .line 82
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 88
    :cond_57
    :goto_57
    add-int/lit8 p4, p4, 0x1

    .line 90
    goto :goto_a

    .line 91
    :cond_5a
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 96
    move-result p1

    .line 97
    if-lez p1, :cond_72

    .line 99
    :goto_62
    if-ge p3, p1, :cond_72

    .line 101
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object p2

    .line 107
    check-cast p2, Landroidx/constraintlayout/widget/b;

    .line 109
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    add-int/lit8 p3, p3, 0x1

    .line 114
    goto :goto_62

    .line 115
    :cond_72
    return-void
.end method

.method public onMeasure(II)V
    .registers 11

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 3
    if-ne v0, p1, :cond_6

    .line 5
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 7
    :cond_6
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_23

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    move-result v0

    .line 16
    move v2, v1

    .line 17
    :goto_10
    if-ge v2, v0, :cond_23

    .line 19
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_20

    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 32
    goto :goto_23

    .line 33
    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_10

    .line 36
    :cond_23
    :goto_23
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 38
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 40
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 42
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 44
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 47
    move-result v2

    .line 48
    iput-boolean v2, v0, Landroidx/constraintlayout/core/widgets/d;->x0:Z

    .line 50
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 52
    if-eqz v0, :cond_44

    .line 54
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 56
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->updateHierarchy()Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_44

    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 64
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/d;->t0:Lw/b;

    .line 66
    invoke-virtual {v1, v0}, Lw/b;->c(Landroidx/constraintlayout/core/widgets/d;)V

    .line 69
    :cond_44
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 71
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 73
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/d;III)V

    .line 76
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 78
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 81
    move-result v4

    .line 82
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 84
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 87
    move-result v5

    .line 88
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 90
    iget-boolean v6, v0, Landroidx/constraintlayout/core/widgets/d;->G0:Z

    .line 92
    iget-boolean v7, v0, Landroidx/constraintlayout/core/widgets/d;->H0:Z

    .line 94
    move-object v1, p0

    .line 95
    move v2, p1

    .line 96
    move v3, p2

    .line 97
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    .line 100
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 7
    move-result-object v0

    .line 8
    instance-of v1, p1, Landroidx/constraintlayout/widget/e;

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_24

    .line 13
    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/e;

    .line 15
    if-nez v0, :cond_24

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 23
    new-instance v1, Landroidx/constraintlayout/core/widgets/e;

    .line 25
    invoke-direct {v1}, Landroidx/constraintlayout/core/widgets/e;-><init>()V

    .line 28
    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 30
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d0:Z

    .line 32
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->V:I

    .line 34
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/e;->O(I)V

    .line 37
    :cond_24
    instance-of v0, p1, Landroidx/constraintlayout/widget/b;

    .line 39
    if-eqz v0, :cond_43

    .line 41
    move-object v0, p1

    .line 42
    check-cast v0, Landroidx/constraintlayout/widget/b;

    .line 44
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/b;->l()V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 53
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e0:Z

    .line 55
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_43

    .line 63
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_43
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 73
    move-result v1

    .line 74
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 79
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 13
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 19
    iget-object v1, v1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A()V

    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 35
    return-void
.end method

.method public parseLayoutDescription(I)V
    .registers 4

    .line 1
    new-instance v0, Lz/a;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p0, p1}, Lz/a;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lz/a;

    .line 12
    return-void
.end method

.method public requestLayout()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->markHierarchyDirty()V

    .line 4
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    return-void
.end method

.method public resolveMeasuredDimension(IIIIZZ)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 3
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->e:I

    .line 5
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I

    .line 7
    add-int/2addr p3, v0

    .line 8
    add-int/2addr p4, v1

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p3, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 13
    move-result p1

    .line 14
    invoke-static {p4, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 17
    move-result p2

    .line 18
    const p3, 0xffffff

    .line 21
    and-int/2addr p1, p3

    .line 22
    and-int/2addr p2, p3

    .line 23
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 25
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 28
    move-result p1

    .line 29
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 31
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result p2

    .line 35
    const/high16 p3, 0x1000000

    .line 37
    if-eqz p5, :cond_27

    .line 39
    or-int/2addr p1, p3

    .line 40
    :cond_27
    if-eqz p6, :cond_2a

    .line 42
    or-int/2addr p2, p3

    .line 43
    :cond_2a
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 46
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 48
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 50
    return-void
.end method

.method public resolveSystem(Landroidx/constraintlayout/core/widgets/d;III)V
    .registers 26

    .line 1
    move-object/from16 v6, p1

    .line 3
    move/from16 v7, p2

    .line 5
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    move-result v8

    .line 9
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    move-result v0

    .line 13
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 16
    move-result v9

    .line 17
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 20
    move-result v1

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 24
    move-result v2

    .line 25
    const/4 v10, 0x0

    .line 26
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 29
    move-result v11

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 33
    move-result v2

    .line 34
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 37
    move-result v2

    .line 38
    add-int v3, v11, v2

    .line 40
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    .line 43
    move-result v4

    .line 44
    move-object/from16 v12, p0

    .line 46
    iget-object v5, v12, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 48
    iput v11, v5, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b:I

    .line 50
    iput v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$c;->c:I

    .line 52
    iput v4, v5, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I

    .line 54
    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintLayout$c;->e:I

    .line 56
    move/from16 v2, p3

    .line 58
    iput v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$c;->f:I

    .line 60
    move/from16 v2, p4

    .line 62
    iput v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$c;->g:I

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    .line 67
    move-result v2

    .line 68
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 71
    move-result v2

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    .line 75
    move-result v5

    .line 76
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    .line 79
    move-result v5

    .line 80
    if-gtz v2, :cond_5d

    .line 82
    if-lez v5, :cond_54

    .line 84
    goto :goto_5d

    .line 85
    :cond_54
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 88
    move-result v2

    .line 89
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 92
    move-result v2

    .line 93
    goto :goto_65

    .line 94
    :cond_5d
    :goto_5d
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 97
    move-result v13

    .line 98
    if-eqz v13, :cond_65

    .line 100
    move v13, v5

    .line 101
    goto :goto_66

    .line 102
    :cond_65
    :goto_65
    move v13, v2

    .line 103
    :goto_66
    sub-int v14, v0, v4

    .line 105
    sub-int v15, v1, v3

    .line 107
    move-object/from16 v0, p0

    .line 109
    move-object/from16 v1, p1

    .line 111
    move v2, v8

    .line 112
    move v3, v14

    .line 113
    move v4, v9

    .line 114
    move v5, v15

    .line 115
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelfDimensionBehaviour(Landroidx/constraintlayout/core/widgets/d;IIII)V

    .line 118
    iput v13, v6, Landroidx/constraintlayout/core/widgets/d;->z0:I

    .line 120
    iput v11, v6, Landroidx/constraintlayout/core/widgets/d;->A0:I

    .line 122
    iget-object v0, v6, Landroidx/constraintlayout/core/widgets/d;->t0:Lw/b;

    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/d;->w0:Lw/b$b;

    .line 129
    iget-object v2, v6, Lv/c;->s0:Ljava/util/ArrayList;

    .line 131
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 134
    move-result v2

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 138
    move-result v3

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 142
    move-result v4

    .line 143
    const/16 v5, 0x80

    .line 145
    invoke-static {v7, v5}, Landroidx/constraintlayout/core/widgets/f;->b(II)Z

    .line 148
    move-result v5

    .line 149
    const/16 v11, 0x40

    .line 151
    if-nez v5, :cond_a1

    .line 153
    invoke-static {v7, v11}, Landroidx/constraintlayout/core/widgets/f;->b(II)Z

    .line 156
    move-result v7

    .line 157
    if-eqz v7, :cond_9f

    .line 159
    goto :goto_a1

    .line 160
    :cond_9f
    move v7, v10

    .line 161
    goto :goto_a2

    .line 162
    :cond_a1
    :goto_a1
    const/4 v7, 0x1

    .line 163
    :goto_a2
    const/16 v16, 0x0

    .line 165
    if-eqz v7, :cond_102

    .line 167
    move v11, v10

    .line 168
    :goto_a7
    if-ge v11, v2, :cond_102

    .line 170
    iget-object v13, v6, Lv/c;->s0:Ljava/util/ArrayList;

    .line 172
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    move-result-object v13

    .line 176
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 178
    move/from16 p2, v7

    .line 180
    iget-object v7, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 182
    aget-object v12, v7, v10

    .line 184
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 186
    if-ne v12, v10, :cond_bd

    .line 188
    const/4 v12, 0x1

    .line 189
    goto :goto_be

    .line 190
    :cond_bd
    const/4 v12, 0x0

    .line 191
    :goto_be
    const/16 v17, 0x1

    .line 193
    aget-object v7, v7, v17

    .line 195
    if-ne v7, v10, :cond_c6

    .line 197
    const/4 v7, 0x1

    .line 198
    goto :goto_c7

    .line 199
    :cond_c6
    const/4 v7, 0x0

    .line 200
    :goto_c7
    if-eqz v12, :cond_d3

    .line 202
    if-eqz v7, :cond_d3

    .line 204
    iget v7, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 206
    cmpl-float v7, v7, v16

    .line 208
    if-lez v7, :cond_d3

    .line 210
    const/4 v7, 0x1

    .line 211
    goto :goto_d4

    .line 212
    :cond_d3
    const/4 v7, 0x0

    .line 213
    :goto_d4
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 216
    move-result v10

    .line 217
    if-eqz v10, :cond_dd

    .line 219
    if-eqz v7, :cond_dd

    .line 221
    goto :goto_100

    .line 222
    :cond_dd
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 225
    move-result v10

    .line 226
    if-eqz v10, :cond_e6

    .line 228
    if-eqz v7, :cond_e6

    .line 230
    goto :goto_100

    .line 231
    :cond_e6
    instance-of v7, v13, Landroidx/constraintlayout/core/widgets/g;

    .line 233
    if-eqz v7, :cond_eb

    .line 235
    goto :goto_100

    .line 236
    :cond_eb
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 239
    move-result v7

    .line 240
    if-nez v7, :cond_100

    .line 242
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 245
    move-result v7

    .line 246
    if-eqz v7, :cond_f8

    .line 248
    goto :goto_100

    .line 249
    :cond_f8
    add-int/lit8 v11, v11, 0x1

    .line 251
    move-object/from16 v12, p0

    .line 253
    move/from16 v7, p2

    .line 255
    const/4 v10, 0x0

    .line 256
    goto :goto_a7

    .line 257
    :cond_100
    :goto_100
    const/4 v7, 0x0

    .line 258
    goto :goto_106

    .line 259
    :cond_102
    move/from16 p2, v7

    .line 261
    move/from16 v7, p2

    .line 263
    :goto_106
    const/high16 v10, 0x40000000  # 2.0f

    .line 265
    if-ne v8, v10, :cond_10c

    .line 267
    if-eq v9, v10, :cond_10e

    .line 269
    :cond_10c
    if-eqz v5, :cond_110

    .line 271
    :cond_10e
    const/4 v11, 0x1

    .line 272
    goto :goto_111

    .line 273
    :cond_110
    const/4 v11, 0x0

    .line 274
    :goto_111
    and-int/2addr v7, v11

    .line 275
    if-eqz v7, :cond_3b8

    .line 277
    iget-object v12, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    .line 279
    const/4 v13, 0x0

    .line 280
    aget v12, v12, v13

    .line 282
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    .line 285
    move-result v12

    .line 286
    iget-object v13, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    .line 288
    const/4 v14, 0x1

    .line 289
    aget v13, v13, v14

    .line 291
    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    .line 294
    move-result v13

    .line 295
    if-ne v8, v10, :cond_135

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 300
    move-result v15

    .line 301
    if-eq v15, v12, :cond_135

    .line 303
    invoke-virtual {v6, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 306
    iget-object v12, v6, Landroidx/constraintlayout/core/widgets/d;->u0:Lw/e;

    .line 308
    iput-boolean v14, v12, Lw/e;->b:Z

    .line 310
    :cond_135
    if-ne v9, v10, :cond_146

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 315
    move-result v12

    .line 316
    if-eq v12, v13, :cond_146

    .line 318
    invoke-virtual {v6, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 321
    iget-object v12, v6, Landroidx/constraintlayout/core/widgets/d;->u0:Lw/e;

    .line 323
    const/4 v13, 0x1

    .line 324
    iput-boolean v13, v12, Lw/e;->b:Z

    .line 326
    goto :goto_147

    .line 327
    :cond_146
    const/4 v13, 0x1

    .line 328
    :goto_147
    if-ne v8, v10, :cond_311

    .line 330
    if-ne v9, v10, :cond_311

    .line 332
    iget-object v12, v6, Landroidx/constraintlayout/core/widgets/d;->u0:Lw/e;

    .line 334
    and-int/2addr v5, v13

    .line 335
    iget-boolean v13, v12, Lw/e;->b:Z

    .line 337
    if-nez v13, :cond_159

    .line 339
    iget-boolean v13, v12, Lw/e;->c:Z

    .line 341
    if-eqz v13, :cond_157

    .line 343
    goto :goto_159

    .line 344
    :cond_157
    const/4 v15, 0x0

    .line 345
    goto :goto_196

    .line 346
    :cond_159
    :goto_159
    iget-object v13, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 348
    iget-object v13, v13, Lv/c;->s0:Ljava/util/ArrayList;

    .line 350
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 353
    move-result-object v13

    .line 354
    :goto_161
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 357
    move-result v14

    .line 358
    if-eqz v14, :cond_17e

    .line 360
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 363
    move-result-object v14

    .line 364
    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 366
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f()V

    .line 369
    const/4 v15, 0x0

    .line 370
    iput-boolean v15, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 372
    iget-object v11, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 374
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/analyzer/c;->n()V

    .line 377
    iget-object v11, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 379
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/analyzer/d;->m()V

    .line 382
    goto :goto_161

    .line 383
    :cond_17e
    const/4 v15, 0x0

    .line 384
    iget-object v11, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 386
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f()V

    .line 389
    iget-object v11, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 391
    iput-boolean v15, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 393
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 395
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/analyzer/c;->n()V

    .line 398
    iget-object v11, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 400
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 402
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/analyzer/d;->m()V

    .line 405
    iput-boolean v15, v12, Lw/e;->c:Z

    .line 407
    :goto_196
    iget-object v11, v12, Lw/e;->d:Landroidx/constraintlayout/core/widgets/d;

    .line 409
    invoke-virtual {v12, v11}, Lw/e;->b(Landroidx/constraintlayout/core/widgets/d;)V

    .line 412
    iget-object v11, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 414
    iput v15, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 416
    iput v15, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 418
    invoke-virtual {v11, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 421
    move-result-object v11

    .line 422
    iget-object v13, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 424
    const/4 v14, 0x1

    .line 425
    invoke-virtual {v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 428
    move-result-object v13

    .line 429
    iget-boolean v14, v12, Lw/e;->b:Z

    .line 431
    if-eqz v14, :cond_1b3

    .line 433
    invoke-virtual {v12}, Lw/e;->c()V

    .line 436
    :cond_1b3
    iget-object v14, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 438
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 441
    move-result v14

    .line 442
    iget-object v15, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 444
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    .line 447
    move-result v15

    .line 448
    iget-object v10, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 450
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 452
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 454
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 457
    iget-object v10, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 459
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 461
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 463
    invoke-virtual {v10, v15}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 466
    invoke-virtual {v12}, Lw/e;->g()V

    .line 469
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 471
    if-eq v11, v10, :cond_1e0

    .line 473
    if-ne v13, v10, :cond_1db

    .line 475
    goto :goto_1e0

    .line 476
    :cond_1db
    move-object/from16 v19, v1

    .line 478
    move/from16 v18, v7

    .line 480
    goto :goto_24c

    .line 481
    :cond_1e0
    :goto_1e0
    if-eqz v5, :cond_1fb

    .line 483
    iget-object v10, v12, Lw/e;->e:Ljava/util/ArrayList;

    .line 485
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 488
    move-result-object v10

    .line 489
    :cond_1e8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 492
    move-result v18

    .line 493
    if-eqz v18, :cond_1fb

    .line 495
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 498
    move-result-object v18

    .line 499
    check-cast v18, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 501
    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->k()Z

    .line 504
    move-result v18

    .line 505
    if-nez v18, :cond_1e8

    .line 507
    const/4 v5, 0x0

    .line 508
    :cond_1fb
    if-eqz v5, :cond_224

    .line 510
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 512
    if-ne v11, v10, :cond_224

    .line 514
    iget-object v10, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 516
    move/from16 v18, v7

    .line 518
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 520
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 523
    iget-object v7, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 525
    move-object/from16 v19, v1

    .line 527
    const/4 v10, 0x0

    .line 528
    invoke-virtual {v12, v7, v10}, Lw/e;->d(Landroidx/constraintlayout/core/widgets/d;I)I

    .line 531
    move-result v1

    .line 532
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 535
    iget-object v1, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 537
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 539
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 541
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 544
    move-result v1

    .line 545
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 548
    goto :goto_228

    .line 549
    :cond_224
    move-object/from16 v19, v1

    .line 551
    move/from16 v18, v7

    .line 553
    :goto_228
    if-eqz v5, :cond_24c

    .line 555
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 557
    if-ne v13, v1, :cond_24c

    .line 559
    iget-object v1, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 561
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 563
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 566
    iget-object v1, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 568
    const/4 v5, 0x1

    .line 569
    invoke-virtual {v12, v1, v5}, Lw/e;->d(Landroidx/constraintlayout/core/widgets/d;I)I

    .line 572
    move-result v7

    .line 573
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 576
    iget-object v1, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 578
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 580
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 582
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 585
    move-result v1

    .line 586
    invoke-virtual {v5, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 589
    :cond_24c
    :goto_24c
    iget-object v1, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 591
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 593
    const/4 v7, 0x0

    .line 594
    aget-object v5, v5, v7

    .line 596
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 598
    if-eq v5, v7, :cond_25e

    .line 600
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 602
    if-ne v5, v10, :cond_25c

    .line 604
    goto :goto_25e

    .line 605
    :cond_25c
    const/4 v1, 0x0

    .line 606
    goto :goto_2a2

    .line 607
    :cond_25e
    :goto_25e
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 610
    move-result v1

    .line 611
    add-int/2addr v1, v14

    .line 612
    iget-object v5, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 614
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 616
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 618
    invoke-virtual {v5, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 621
    iget-object v5, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 623
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 625
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 627
    sub-int/2addr v1, v14

    .line 628
    invoke-virtual {v5, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 631
    invoke-virtual {v12}, Lw/e;->g()V

    .line 634
    iget-object v1, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 636
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 638
    const/4 v10, 0x1

    .line 639
    aget-object v5, v5, v10

    .line 641
    if-eq v5, v7, :cond_286

    .line 643
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 645
    if-ne v5, v7, :cond_29e

    .line 647
    :cond_286
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 650
    move-result v1

    .line 651
    add-int/2addr v1, v15

    .line 652
    iget-object v5, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 654
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 656
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 658
    invoke-virtual {v5, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 661
    iget-object v5, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 663
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 665
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 667
    sub-int/2addr v1, v15

    .line 668
    invoke-virtual {v5, v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 671
    :cond_29e
    invoke-virtual {v12}, Lw/e;->g()V

    .line 674
    const/4 v1, 0x1

    .line 675
    :goto_2a2
    iget-object v5, v12, Lw/e;->e:Ljava/util/ArrayList;

    .line 677
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 680
    move-result-object v5

    .line 681
    :goto_2a8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 684
    move-result v7

    .line 685
    if-eqz v7, :cond_2c3

    .line 687
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 690
    move-result-object v7

    .line 691
    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 693
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 695
    iget-object v14, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 697
    if-ne v10, v14, :cond_2bf

    .line 699
    iget-boolean v10, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 701
    if-nez v10, :cond_2bf

    .line 703
    goto :goto_2a8

    .line 704
    :cond_2bf
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e()V

    .line 707
    goto :goto_2a8

    .line 708
    :cond_2c3
    iget-object v5, v12, Lw/e;->e:Ljava/util/ArrayList;

    .line 710
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 713
    move-result-object v5

    .line 714
    :cond_2c9
    :goto_2c9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 717
    move-result v7

    .line 718
    if-eqz v7, :cond_300

    .line 720
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 723
    move-result-object v7

    .line 724
    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 726
    if-nez v1, :cond_2de

    .line 728
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 730
    iget-object v14, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 732
    if-ne v10, v14, :cond_2de

    .line 734
    goto :goto_2c9

    .line 735
    :cond_2de
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 737
    iget-boolean v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 739
    if-nez v10, :cond_2e5

    .line 741
    goto :goto_2fe

    .line 742
    :cond_2e5
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 744
    iget-boolean v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 746
    if-nez v10, :cond_2f0

    .line 748
    instance-of v10, v7, Lw/h;

    .line 750
    if-nez v10, :cond_2f0

    .line 752
    goto :goto_2fe

    .line 753
    :cond_2f0
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 755
    iget-boolean v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 757
    if-nez v10, :cond_2c9

    .line 759
    instance-of v10, v7, Lw/c;

    .line 761
    if-nez v10, :cond_2c9

    .line 763
    instance-of v7, v7, Lw/h;

    .line 765
    if-nez v7, :cond_2c9

    .line 767
    :goto_2fe
    const/4 v1, 0x0

    .line 768
    goto :goto_301

    .line 769
    :cond_300
    const/4 v1, 0x1

    .line 770
    :goto_301
    iget-object v5, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 772
    invoke-virtual {v5, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 775
    iget-object v5, v12, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 777
    invoke-virtual {v5, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 780
    move v5, v1

    .line 781
    const/high16 v1, 0x40000000  # 2.0f

    .line 783
    const/4 v11, 0x2

    .line 784
    goto/16 :goto_3a8

    .line 786
    :cond_311
    move-object/from16 v19, v1

    .line 788
    move/from16 v18, v7

    .line 790
    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/d;->u0:Lw/e;

    .line 792
    iget-boolean v7, v1, Lw/e;->b:Z

    .line 794
    if-eqz v7, :cond_372

    .line 796
    iget-object v7, v1, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 798
    iget-object v7, v7, Lv/c;->s0:Ljava/util/ArrayList;

    .line 800
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 803
    move-result-object v7

    .line 804
    :goto_323
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 807
    move-result v10

    .line 808
    if-eqz v10, :cond_34c

    .line 810
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 813
    move-result-object v10

    .line 814
    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 816
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f()V

    .line 819
    const/4 v11, 0x0

    .line 820
    iput-boolean v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 822
    iget-object v12, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 824
    iget-object v13, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 826
    iput-boolean v11, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 828
    iput-boolean v11, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 830
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/analyzer/c;->n()V

    .line 833
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 835
    iget-object v12, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 837
    iput-boolean v11, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 839
    iput-boolean v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 841
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/d;->m()V

    .line 844
    goto :goto_323

    .line 845
    :cond_34c
    const/4 v11, 0x0

    .line 846
    iget-object v7, v1, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 848
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f()V

    .line 851
    iget-object v7, v1, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 853
    iput-boolean v11, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 855
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 857
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 859
    iput-boolean v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 861
    iput-boolean v11, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 863
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/analyzer/c;->n()V

    .line 866
    iget-object v7, v1, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 868
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 870
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 872
    iput-boolean v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 874
    iput-boolean v11, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 876
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/analyzer/d;->m()V

    .line 879
    invoke-virtual {v1}, Lw/e;->c()V

    .line 882
    goto :goto_373

    .line 883
    :cond_372
    const/4 v11, 0x0

    .line 884
    :goto_373
    iget-object v7, v1, Lw/e;->d:Landroidx/constraintlayout/core/widgets/d;

    .line 886
    invoke-virtual {v1, v7}, Lw/e;->b(Landroidx/constraintlayout/core/widgets/d;)V

    .line 889
    iget-object v7, v1, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 891
    iput v11, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 893
    iput v11, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 895
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 897
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 899
    invoke-virtual {v7, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 902
    iget-object v1, v1, Lw/e;->a:Landroidx/constraintlayout/core/widgets/d;

    .line 904
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 906
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 908
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 911
    const/high16 v1, 0x40000000  # 2.0f

    .line 913
    if-ne v8, v1, :cond_39a

    .line 915
    invoke-virtual {v6, v11, v5}, Landroidx/constraintlayout/core/widgets/d;->Q(IZ)Z

    .line 918
    move-result v7

    .line 919
    const/4 v10, 0x1

    .line 920
    and-int/2addr v7, v10

    .line 921
    move v11, v10

    .line 922
    goto :goto_39d

    .line 923
    :cond_39a
    const/4 v10, 0x1

    .line 924
    move v7, v10

    .line 925
    const/4 v11, 0x0

    .line 926
    :goto_39d
    if-ne v9, v1, :cond_3a7

    .line 928
    invoke-virtual {v6, v10, v5}, Landroidx/constraintlayout/core/widgets/d;->Q(IZ)Z

    .line 931
    move-result v5

    .line 932
    and-int/2addr v5, v7

    .line 933
    add-int/lit8 v11, v11, 0x1

    .line 935
    goto :goto_3a8

    .line 936
    :cond_3a7
    move v5, v7

    .line 937
    :goto_3a8
    if-eqz v5, :cond_3be

    .line 939
    if-ne v8, v1, :cond_3ae

    .line 941
    const/4 v7, 0x1

    .line 942
    goto :goto_3af

    .line 943
    :cond_3ae
    const/4 v7, 0x0

    .line 944
    :goto_3af
    if-ne v9, v1, :cond_3b3

    .line 946
    const/4 v1, 0x1

    .line 947
    goto :goto_3b4

    .line 948
    :cond_3b3
    const/4 v1, 0x0

    .line 949
    :goto_3b4
    invoke-virtual {v6, v7, v1}, Landroidx/constraintlayout/core/widgets/d;->L(ZZ)V

    .line 952
    goto :goto_3be

    .line 953
    :cond_3b8
    move-object/from16 v19, v1

    .line 955
    move/from16 v18, v7

    .line 957
    const/4 v5, 0x0

    .line 958
    const/4 v11, 0x0

    .line 959
    :cond_3be
    :goto_3be
    if-eqz v5, :cond_3c3

    .line 961
    const/4 v1, 0x2

    .line 962
    if-eq v11, v1, :cond_69a

    .line 964
    :cond_3c3
    iget v1, v6, Landroidx/constraintlayout/core/widgets/d;->F0:I

    .line 966
    if-lez v2, :cond_4e0

    .line 968
    iget-object v7, v6, Lv/c;->s0:Ljava/util/ArrayList;

    .line 970
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 973
    move-result v7

    .line 974
    const/16 v8, 0x40

    .line 976
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/widgets/d;->S(I)Z

    .line 979
    move-result v8

    .line 980
    iget-object v9, v6, Landroidx/constraintlayout/core/widgets/d;->w0:Lw/b$b;

    .line 982
    const/4 v10, 0x0

    .line 983
    :goto_3d6
    if-ge v10, v7, :cond_464

    .line 985
    iget-object v11, v6, Lv/c;->s0:Ljava/util/ArrayList;

    .line 987
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 990
    move-result-object v11

    .line 991
    check-cast v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 993
    instance-of v12, v11, Landroidx/constraintlayout/core/widgets/e;

    .line 995
    if-eqz v12, :cond_3e6

    .line 997
    goto/16 :goto_460

    .line 999
    :cond_3e6
    instance-of v12, v11, Landroidx/constraintlayout/core/widgets/a;

    .line 1001
    if-eqz v12, :cond_3ec

    .line 1003
    goto/16 :goto_460

    .line 1005
    :cond_3ec
    iget-boolean v12, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    .line 1007
    if-eqz v12, :cond_3f2

    .line 1009
    goto/16 :goto_460

    .line 1011
    :cond_3f2
    if-eqz v8, :cond_409

    .line 1013
    iget-object v12, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 1015
    if-eqz v12, :cond_409

    .line 1017
    iget-object v13, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 1019
    if-eqz v13, :cond_409

    .line 1021
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 1023
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 1025
    if-eqz v12, :cond_409

    .line 1027
    iget-object v12, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 1029
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 1031
    if-eqz v12, :cond_409

    .line 1033
    goto :goto_460

    .line 1034
    :cond_409
    const/4 v12, 0x0

    .line 1035
    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1038
    move-result-object v13

    .line 1039
    const/4 v12, 0x1

    .line 1040
    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1043
    move-result-object v14

    .line 1044
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1046
    if-ne v13, v15, :cond_423

    .line 1048
    iget v5, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 1050
    if-eq v5, v12, :cond_423

    .line 1052
    if-ne v14, v15, :cond_423

    .line 1054
    iget v5, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 1056
    if-eq v5, v12, :cond_423

    .line 1058
    move v5, v12

    .line 1059
    goto :goto_424

    .line 1060
    :cond_423
    const/4 v5, 0x0

    .line 1061
    :goto_424
    if-nez v5, :cond_459

    .line 1063
    invoke-virtual {v6, v12}, Landroidx/constraintlayout/core/widgets/d;->S(I)Z

    .line 1066
    move-result v17

    .line 1067
    if-eqz v17, :cond_459

    .line 1069
    instance-of v12, v11, Landroidx/constraintlayout/core/widgets/g;

    .line 1071
    if-nez v12, :cond_459

    .line 1073
    if-ne v13, v15, :cond_43f

    .line 1075
    iget v12, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 1077
    if-nez v12, :cond_43f

    .line 1079
    if-eq v14, v15, :cond_43f

    .line 1081
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 1084
    move-result v12

    .line 1085
    if-nez v12, :cond_43f

    .line 1087
    const/4 v5, 0x1

    .line 1088
    :cond_43f
    if-ne v14, v15, :cond_44e

    .line 1090
    iget v12, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 1092
    if-nez v12, :cond_44e

    .line 1094
    if-eq v13, v15, :cond_44e

    .line 1096
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 1099
    move-result v12

    .line 1100
    if-nez v12, :cond_44e

    .line 1102
    const/4 v5, 0x1

    .line 1103
    :cond_44e
    if-eq v13, v15, :cond_452

    .line 1105
    if-ne v14, v15, :cond_459

    .line 1107
    :cond_452
    iget v12, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 1109
    cmpl-float v12, v12, v16

    .line 1111
    if-lez v12, :cond_459

    .line 1113
    const/4 v5, 0x1

    .line 1114
    :cond_459
    if-eqz v5, :cond_45c

    .line 1116
    goto :goto_460

    .line 1117
    :cond_45c
    const/4 v5, 0x0

    .line 1118
    invoke-virtual {v0, v5, v11, v9}, Lw/b;->a(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)Z

    .line 1121
    :goto_460
    add-int/lit8 v10, v10, 0x1

    .line 1123
    goto/16 :goto_3d6

    .line 1125
    :cond_464
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 1127
    iget-object v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1129
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1132
    move-result v5

    .line 1133
    const/4 v7, 0x0

    .line 1134
    :goto_46d
    if-ge v7, v5, :cond_4bf

    .line 1136
    iget-object v8, v9, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1138
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1141
    move-result-object v8

    .line 1142
    instance-of v10, v8, Landroidx/constraintlayout/widget/f;

    .line 1144
    if-eqz v10, :cond_4bc

    .line 1146
    check-cast v8, Landroidx/constraintlayout/widget/f;

    .line 1148
    iget-object v10, v8, Landroidx/constraintlayout/widget/f;->b:Landroid/view/View;

    .line 1150
    if-nez v10, :cond_480

    .line 1152
    goto :goto_4bc

    .line 1153
    :cond_480
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1156
    move-result-object v10

    .line 1157
    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 1159
    iget-object v8, v8, Landroidx/constraintlayout/widget/f;->b:Landroid/view/View;

    .line 1161
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1164
    move-result-object v8

    .line 1165
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 1167
    iget-object v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1169
    const/4 v12, 0x0

    .line 1170
    iput v12, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 1172
    iget-object v13, v10, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1174
    iget-object v14, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1176
    aget-object v14, v14, v12

    .line 1178
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1180
    if-eq v14, v12, :cond_4a4

    .line 1182
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 1185
    move-result v11

    .line 1186
    invoke-virtual {v13, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 1189
    :cond_4a4
    iget-object v10, v10, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1191
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1193
    const/4 v13, 0x1

    .line 1194
    aget-object v11, v11, v13

    .line 1196
    if-eq v11, v12, :cond_4b6

    .line 1198
    iget-object v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1200
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 1203
    move-result v11

    .line 1204
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 1207
    :cond_4b6
    iget-object v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1209
    const/16 v10, 0x8

    .line 1211
    iput v10, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 1213
    :cond_4bc
    :goto_4bc
    add-int/lit8 v7, v7, 0x1

    .line 1215
    goto :goto_46d

    .line 1216
    :cond_4bf
    iget-object v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1218
    invoke-static {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    .line 1221
    move-result-object v5

    .line 1222
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1225
    move-result v5

    .line 1226
    if-lez v5, :cond_4e0

    .line 1228
    const/4 v7, 0x0

    .line 1229
    :goto_4cc
    if-ge v7, v5, :cond_4e0

    .line 1231
    iget-object v8, v9, Landroidx/constraintlayout/widget/ConstraintLayout$c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1233
    invoke-static {v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    .line 1236
    move-result-object v8

    .line 1237
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1240
    move-result-object v8

    .line 1241
    check-cast v8, Landroidx/constraintlayout/widget/b;

    .line 1243
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1246
    add-int/lit8 v7, v7, 0x1

    .line 1248
    goto :goto_4cc

    .line 1249
    :cond_4e0
    invoke-virtual {v0, v6}, Lw/b;->c(Landroidx/constraintlayout/core/widgets/d;)V

    .line 1252
    iget-object v5, v0, Lw/b;->a:Ljava/util/ArrayList;

    .line 1254
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1257
    move-result v5

    .line 1258
    if-lez v2, :cond_4f0

    .line 1260
    const/4 v2, 0x0

    .line 1261
    invoke-virtual {v0, v6, v2, v3, v4}, Lw/b;->b(Landroidx/constraintlayout/core/widgets/d;III)V

    .line 1264
    goto :goto_4f1

    .line 1265
    :cond_4f0
    const/4 v2, 0x0

    .line 1266
    :goto_4f1
    if-lez v5, :cond_68c

    .line 1268
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1270
    aget-object v8, v7, v2

    .line 1272
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1274
    if-ne v8, v2, :cond_4ff

    .line 1276
    const/4 v8, 0x1

    .line 1277
    const/16 v17, 0x1

    .line 1279
    goto :goto_502

    .line 1280
    :cond_4ff
    const/4 v8, 0x1

    .line 1281
    const/16 v17, 0x0

    .line 1283
    :goto_502
    aget-object v7, v7, v8

    .line 1285
    if-ne v7, v2, :cond_508

    .line 1287
    const/4 v2, 0x1

    .line 1288
    goto :goto_509

    .line 1289
    :cond_508
    const/4 v2, 0x0

    .line 1290
    :goto_509
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 1293
    move-result v7

    .line 1294
    iget-object v8, v0, Lw/b;->c:Landroidx/constraintlayout/core/widgets/d;

    .line 1296
    iget v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 1298
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 1301
    move-result v7

    .line 1302
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 1305
    move-result v8

    .line 1306
    iget-object v9, v0, Lw/b;->c:Landroidx/constraintlayout/core/widgets/d;

    .line 1308
    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 1310
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 1313
    move-result v8

    .line 1314
    const/4 v9, 0x0

    .line 1315
    const/4 v13, 0x0

    .line 1316
    :goto_523
    if-ge v13, v5, :cond_5ab

    .line 1318
    iget-object v10, v0, Lw/b;->a:Ljava/util/ArrayList;

    .line 1320
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1323
    move-result-object v10

    .line 1324
    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1326
    instance-of v11, v10, Landroidx/constraintlayout/core/widgets/g;

    .line 1328
    if-nez v11, :cond_535

    .line 1330
    move-object/from16 v14, v19

    .line 1332
    const/4 v10, 0x0

    .line 1333
    goto :goto_5a5

    .line 1334
    :cond_535
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 1337
    move-result v11

    .line 1338
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 1341
    move-result v12

    .line 1342
    move-object/from16 v14, v19

    .line 1344
    const/4 v15, 0x1

    .line 1345
    invoke-virtual {v0, v15, v10, v14}, Lw/b;->a(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)Z

    .line 1348
    move-result v16

    .line 1349
    or-int v9, v9, v16

    .line 1351
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 1354
    move-result v15

    .line 1355
    move/from16 v16, v9

    .line 1357
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 1360
    move-result v9

    .line 1361
    if-eq v15, v11, :cond_578

    .line 1363
    invoke-virtual {v10, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 1366
    if-eqz v17, :cond_576

    .line 1368
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 1371
    move-result v11

    .line 1372
    iget v15, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 1374
    add-int/2addr v11, v15

    .line 1375
    if-le v11, v7, :cond_576

    .line 1377
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 1380
    move-result v11

    .line 1381
    iget v15, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 1383
    add-int/2addr v11, v15

    .line 1384
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1386
    invoke-virtual {v10, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1389
    move-result-object v15

    .line 1390
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1393
    move-result v15

    .line 1394
    add-int/2addr v15, v11

    .line 1395
    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    .line 1398
    move-result v7

    .line 1399
    :cond_576
    const/16 v16, 0x1

    .line 1401
    :cond_578
    if-eq v9, v12, :cond_5a0

    .line 1403
    invoke-virtual {v10, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 1406
    if-eqz v2, :cond_59e

    .line 1408
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    .line 1411
    move-result v9

    .line 1412
    iget v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 1414
    add-int/2addr v9, v11

    .line 1415
    if-le v9, v8, :cond_59e

    .line 1417
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    .line 1420
    move-result v9

    .line 1421
    iget v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 1423
    add-int/2addr v9, v11

    .line 1424
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1426
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1429
    move-result-object v11

    .line 1430
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1433
    move-result v11

    .line 1434
    add-int/2addr v11, v9

    .line 1435
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    .line 1438
    move-result v8

    .line 1439
    :cond_59e
    const/16 v16, 0x1

    .line 1441
    :cond_5a0
    check-cast v10, Landroidx/constraintlayout/core/widgets/g;

    .line 1443
    const/4 v10, 0x0

    .line 1444
    or-int/lit8 v9, v16, 0x0

    .line 1446
    :goto_5a5
    add-int/lit8 v13, v13, 0x1

    .line 1448
    move-object/from16 v19, v14

    .line 1450
    goto/16 :goto_523

    .line 1452
    :cond_5ab
    move-object/from16 v14, v19

    .line 1454
    const/4 v10, 0x0

    .line 1455
    move v13, v10

    .line 1456
    :goto_5af
    const/4 v11, 0x2

    .line 1457
    if-ge v13, v11, :cond_68c

    .line 1459
    move v12, v9

    .line 1460
    move v9, v10

    .line 1461
    :goto_5b4
    if-ge v9, v5, :cond_679

    .line 1463
    iget-object v15, v0, Lw/b;->a:Ljava/util/ArrayList;

    .line 1465
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1468
    move-result-object v15

    .line 1469
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1471
    instance-of v10, v15, Lv/a;

    .line 1473
    if-eqz v10, :cond_5c6

    .line 1475
    instance-of v10, v15, Landroidx/constraintlayout/core/widgets/g;

    .line 1477
    if-eqz v10, :cond_5ca

    .line 1479
    :cond_5c6
    instance-of v10, v15, Landroidx/constraintlayout/core/widgets/e;

    .line 1481
    if-eqz v10, :cond_5cd

    .line 1483
    :cond_5ca
    const/16 v11, 0x8

    .line 1485
    goto :goto_5eb

    .line 1486
    :cond_5cd
    iget v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 1488
    const/16 v11, 0x8

    .line 1490
    if-ne v10, v11, :cond_5d4

    .line 1492
    goto :goto_5eb

    .line 1493
    :cond_5d4
    if-eqz v18, :cond_5e7

    .line 1495
    iget-object v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 1497
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 1499
    iget-boolean v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 1501
    if-eqz v10, :cond_5e7

    .line 1503
    iget-object v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 1505
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 1507
    iget-boolean v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 1509
    if-eqz v10, :cond_5e7

    .line 1511
    goto :goto_5eb

    .line 1512
    :cond_5e7
    instance-of v10, v15, Landroidx/constraintlayout/core/widgets/g;

    .line 1514
    if-eqz v10, :cond_5f1

    .line 1516
    :goto_5eb
    move/from16 v19, v1

    .line 1518
    move/from16 v16, v5

    .line 1520
    goto/16 :goto_66f

    .line 1522
    :cond_5f1
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 1525
    move-result v10

    .line 1526
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 1529
    move-result v11

    .line 1530
    move/from16 v16, v5

    .line 1532
    iget v5, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 1534
    move/from16 v19, v1

    .line 1536
    const/4 v1, 0x1

    .line 1537
    if-ne v13, v1, :cond_603

    .line 1539
    const/4 v1, 0x2

    .line 1540
    :cond_603
    invoke-virtual {v0, v1, v15, v14}, Lw/b;->a(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)Z

    .line 1543
    move-result v1

    .line 1544
    or-int/2addr v1, v12

    .line 1545
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 1548
    move-result v12

    .line 1549
    move/from16 v20, v1

    .line 1551
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 1554
    move-result v1

    .line 1555
    if-eq v12, v10, :cond_63a

    .line 1557
    invoke-virtual {v15, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 1560
    if-eqz v17, :cond_638

    .line 1562
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 1565
    move-result v10

    .line 1566
    iget v12, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 1568
    add-int/2addr v10, v12

    .line 1569
    if-le v10, v7, :cond_638

    .line 1571
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 1574
    move-result v10

    .line 1575
    iget v12, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 1577
    add-int/2addr v10, v12

    .line 1578
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1580
    invoke-virtual {v15, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1583
    move-result-object v12

    .line 1584
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1587
    move-result v12

    .line 1588
    add-int/2addr v12, v10

    .line 1589
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    .line 1592
    move-result v7

    .line 1593
    :cond_638
    const/16 v20, 0x1

    .line 1595
    :cond_63a
    if-eq v1, v11, :cond_663

    .line 1597
    invoke-virtual {v15, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 1600
    if-eqz v2, :cond_661

    .line 1602
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    .line 1605
    move-result v1

    .line 1606
    iget v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 1608
    add-int/2addr v1, v10

    .line 1609
    if-le v1, v8, :cond_661

    .line 1611
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    .line 1614
    move-result v1

    .line 1615
    iget v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 1617
    add-int/2addr v1, v10

    .line 1618
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1620
    invoke-virtual {v15, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1623
    move-result-object v10

    .line 1624
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 1627
    move-result v10

    .line 1628
    add-int/2addr v10, v1

    .line 1629
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    .line 1632
    move-result v1

    .line 1633
    move v8, v1

    .line 1634
    :cond_661
    const/16 v20, 0x1

    .line 1636
    :cond_663
    iget-boolean v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 1638
    if-eqz v1, :cond_66d

    .line 1640
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 1642
    if-eq v5, v1, :cond_66d

    .line 1644
    const/4 v12, 0x1

    .line 1645
    goto :goto_66f

    .line 1646
    :cond_66d
    move/from16 v12, v20

    .line 1648
    :goto_66f
    add-int/lit8 v9, v9, 0x1

    .line 1650
    move/from16 v5, v16

    .line 1652
    move/from16 v1, v19

    .line 1654
    const/4 v10, 0x0

    .line 1655
    const/4 v11, 0x2

    .line 1656
    goto/16 :goto_5b4

    .line 1658
    :cond_679
    move/from16 v19, v1

    .line 1660
    move/from16 v16, v5

    .line 1662
    if-eqz v12, :cond_68e

    .line 1664
    add-int/lit8 v13, v13, 0x1

    .line 1666
    invoke-virtual {v0, v6, v13, v3, v4}, Lw/b;->b(Landroidx/constraintlayout/core/widgets/d;III)V

    .line 1669
    move/from16 v5, v16

    .line 1671
    move/from16 v1, v19

    .line 1673
    const/4 v9, 0x0

    .line 1674
    const/4 v10, 0x0

    .line 1675
    goto/16 :goto_5af

    .line 1677
    :cond_68c
    move/from16 v19, v1

    .line 1679
    :cond_68e
    move/from16 v0, v19

    .line 1681
    iput v0, v6, Landroidx/constraintlayout/core/widgets/d;->F0:I

    .line 1683
    const/16 v0, 0x200

    .line 1685
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/d;->S(I)Z

    .line 1688
    move-result v0

    .line 1689
    sput-boolean v0, Landroidx/constraintlayout/core/c;->p:Z

    .line 1691
    :cond_69a
    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/c;

    .line 3
    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    if-nez p1, :cond_35

    .line 3
    instance-of p1, p2, Ljava/lang/String;

    .line 5
    if-eqz p1, :cond_35

    .line 7
    instance-of p1, p3, Ljava/lang/Integer;

    .line 9
    if-eqz p1, :cond_35

    .line 11
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 13
    if-nez p1, :cond_15

    .line 15
    new-instance p1, Ljava/util/HashMap;

    .line 17
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 20
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 22
    :cond_15
    check-cast p2, Ljava/lang/String;

    .line 24
    const-string p1, "/"

    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 29
    move-result p1

    .line 30
    const/4 v0, -0x1

    .line 31
    if-eq p1, v0, :cond_26

    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    :cond_26
    check-cast p3, Ljava/lang/Integer;

    .line 41
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result p1

    .line 45
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_35
    return-void
.end method

.method public setId(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 10
    invoke-super {p0, p1}, Landroid/view/View;->setId(I)V

    .line 13
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 11
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 11
    return-void
.end method

.method public setMinHeight(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 11
    return-void
.end method

.method public setMinWidth(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 11
    return-void
.end method

.method public setOnConstraintsChanged(Lz/b;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lz/a;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    :cond_7
    return-void
.end method

.method public setOptimizationLevel(I)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/d;

    .line 5
    iput p1, v0, Landroidx/constraintlayout/core/widgets/d;->F0:I

    .line 7
    const/16 p1, 0x200

    .line 9
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/d;->S(I)Z

    .line 12
    move-result p1

    .line 13
    sput-boolean p1, Landroidx/constraintlayout/core/c;->p:Z

    .line 15
    return-void
.end method

.method public setSelfDimensionBehaviour(Landroidx/constraintlayout/core/widgets/d;IIII)V
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 3
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->e:I

    .line 5
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I

    .line 7
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    const/high16 v5, 0x40000000  # 2.0f

    .line 16
    const/high16 v6, -0x80000000

    .line 18
    if-eq p2, v6, :cond_2f

    .line 20
    if-eqz p2, :cond_22

    .line 22
    if-eq p2, v5, :cond_19

    .line 24
    move-object p2, v2

    .line 25
    goto :goto_2d

    .line 26
    :cond_19
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 28
    sub-int/2addr p2, v0

    .line 29
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 32
    move-result p3

    .line 33
    move-object p2, v2

    .line 34
    goto :goto_39

    .line 35
    :cond_22
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 37
    if-nez v3, :cond_2d

    .line 39
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 41
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    .line 44
    move-result p3

    .line 45
    goto :goto_39

    .line 46
    :cond_2d
    :goto_2d
    move p3, v4

    .line 47
    goto :goto_39

    .line 48
    :cond_2f
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 50
    if-nez v3, :cond_39

    .line 52
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 54
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    .line 57
    move-result p3

    .line 58
    :cond_39
    :goto_39
    if-eq p4, v6, :cond_55

    .line 60
    if-eqz p4, :cond_48

    .line 62
    if-eq p4, v5, :cond_40

    .line 64
    goto :goto_53

    .line 65
    :cond_40
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 67
    sub-int/2addr p4, v1

    .line 68
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    .line 71
    move-result p5

    .line 72
    goto :goto_5f

    .line 73
    :cond_48
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 75
    if-nez v3, :cond_53

    .line 77
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 79
    invoke-static {v4, p4}, Ljava/lang/Math;->max(II)I

    .line 82
    move-result p5

    .line 83
    goto :goto_5f

    .line 84
    :cond_53
    :goto_53
    move p5, v4

    .line 85
    goto :goto_5f

    .line 86
    :cond_55
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 88
    if-nez v3, :cond_5f

    .line 90
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 92
    invoke-static {v4, p4}, Ljava/lang/Math;->max(II)I

    .line 95
    move-result p5

    .line 96
    :cond_5f
    :goto_5f
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 99
    move-result p4

    .line 100
    const/4 v3, 0x1

    .line 101
    if-ne p3, p4, :cond_6c

    .line 103
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 106
    move-result p4

    .line 107
    if-eq p5, p4, :cond_70

    .line 109
    :cond_6c
    iget-object p4, p1, Landroidx/constraintlayout/core/widgets/d;->u0:Lw/e;

    .line 111
    iput-boolean v3, p4, Lw/e;->c:Z

    .line 113
    :cond_70
    iput v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 115
    iput v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 117
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 119
    sub-int/2addr p4, v0

    .line 120
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    .line 122
    aput p4, v5, v4

    .line 124
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 126
    sub-int/2addr p4, v1

    .line 127
    aput p4, v5, v3

    .line 129
    iput v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 131
    iput v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 133
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 136
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 139
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 142
    invoke-virtual {p1, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 145
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 147
    sub-int/2addr p2, v0

    .line 148
    if-gez p2, :cond_98

    .line 150
    iput v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 152
    goto :goto_9a

    .line 153
    :cond_98
    iput p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 155
    :goto_9a
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 157
    sub-int/2addr p2, v1

    .line 158
    if-gez p2, :cond_a2

    .line 160
    iput v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 162
    goto :goto_a4

    .line 163
    :cond_a2
    iput p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 165
    :goto_a4
    return-void
.end method

.method public setState(III)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Lz/a;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    int-to-float p2, p2

    .line 6
    int-to-float p3, p3

    .line 7
    invoke-virtual {v0, p2, p3, p1}, Lz/a;->b(FFI)V

    .line 10
    :cond_9
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
