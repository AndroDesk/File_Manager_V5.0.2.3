.class Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;
.super Ljava/lang/Object;
.source "StickyHeaderDecoration.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemTouchListener"
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mTempPoint:[F

.field private parent:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/view/GestureDetector;

    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener$1;-><init>(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;)V

    invoke-direct {p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$1;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;-><init>(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->parent:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    return-object p0
.end method

.method private getTempPoint()[F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->mTempPoint:[F

    .line 3
    if-nez v0, :cond_9

    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [F

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->mTempPoint:[F

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->mTempPoint:[F

    .line 12
    return-object v0
.end method

.method private pointInView(Landroid/view/View;FFFF)Z
    .registers 7

    .line 1
    neg-float v0, p4

    .line 2
    cmpl-float v0, p2, v0

    .line 4
    if-ltz v0, :cond_20

    .line 6
    neg-float v0, p5

    .line 7
    cmpl-float v0, p3, v0

    .line 9
    if-ltz v0, :cond_20

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    add-float/2addr v0, p4

    .line 17
    cmpg-float p2, p2, v0

    .line 19
    if-gez p2, :cond_20

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 24
    move-result p1

    .line 25
    int-to-float p1, p1

    .line 26
    add-float/2addr p1, p5

    .line 27
    cmpg-float p1, p3, p1

    .line 29
    if-gez p1, :cond_20

    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
    :goto_21
    return p1
.end method

.method private transformPointToViewLocal([FLandroid/view/ViewGroup;Landroid/view/View;)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    .line 7
    move-result v2

    .line 8
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 11
    move-result v3

    .line 12
    sub-int/2addr v2, v3

    .line 13
    int-to-float v2, v2

    .line 14
    add-float/2addr v1, v2

    .line 15
    aput v1, p1, v0

    .line 17
    const/4 v0, 0x1

    .line 18
    aget v1, p1, v0

    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    .line 23
    move-result p2

    .line 24
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 27
    move-result p3

    .line 28
    sub-int/2addr p2, p3

    .line 29
    int-to-float p2, p2

    .line 30
    add-float/2addr v1, p2

    .line 31
    aput v1, p1, v0

    .line 33
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$200(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_58

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    goto :goto_58

    .line 17
    :cond_10
    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->getTempPoint()[F

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 24
    move-result v2

    .line 25
    aput v2, v0, v1

    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 30
    move-result p2

    .line 31
    const/4 v2, 0x1

    .line 32
    aput p2, v0, v2

    .line 34
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 36
    invoke-static {p2}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$200(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Landroid/view/View;

    .line 39
    move-result-object p2

    .line 40
    invoke-direct {p0, v0, p1, p2}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->transformPointToViewLocal([FLandroid/view/ViewGroup;Landroid/view/View;)V

    .line 43
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 45
    invoke-static {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$200(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Landroid/view/View;

    .line 48
    move-result-object v4

    .line 49
    aget v5, v0, v1

    .line 51
    aget v6, v0, v2

    .line 53
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 55
    iget p1, p1, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->offsetX:I

    .line 57
    int-to-float v7, p1

    .line 58
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_50

    .line 64
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 66
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->getOffsetY()I

    .line 69
    move-result p1

    .line 70
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 72
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->parent:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->getOffsetYTop(Landroid/view/View;)I

    .line 77
    move-result p2

    .line 78
    sub-int/2addr p1, p2

    .line 79
    int-to-float p1, p1

    .line 80
    goto :goto_51

    .line 81
    :cond_50
    const/4 p1, 0x0

    .line 82
    :goto_51
    move v8, p1

    .line 83
    move-object v3, p0

    .line 84
    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->pointInView(Landroid/view/View;FFFF)Z

    .line 87
    move-result p1

    .line 88
    return p1

    .line 89
    :cond_58
    :goto_58
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->this$0:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->access$200(Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->parent:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration$ItemTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    return-void
.end method
