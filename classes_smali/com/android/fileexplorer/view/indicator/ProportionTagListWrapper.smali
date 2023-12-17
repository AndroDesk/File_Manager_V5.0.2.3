.class public Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;
.super Ljava/lang/Object;
.source "ProportionTagListWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;
    }
.end annotation


# static fields
.field private static final HIDE_TIME_BY_ALPHA_DURATION_MS:I = 0x64

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xff

.field private static final SHOW_TIME_BY_ALPHA_DURATION_MS:I = 0xc8


# instance fields
.field private mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

.field private mAlpha:I

.field private mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mOnAnimatorListener:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;

.field private mProportionTagViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/indicator/ProportionTagView;",
            ">;"
        }
    .end annotation
.end field

.field private mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0xff

    .line 6
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mAlpha:I

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    .line 10
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mOnAnimatorListener:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;

    .line 3
    return-object p0
.end method


# virtual methods
.method public cancelHideTagByAnimator()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    :cond_7
    return-void
.end method

.method public cancelShowTagByAnimator()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    :cond_7
    return-void
.end method

.method public draw(IZLandroid/graphics/Canvas;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mProportionTagViews:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_4c

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_4c

    .line 12
    const/4 v0, 0x0

    .line 13
    move v1, v0

    .line 14
    :goto_d
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mProportionTagViews:Ljava/util/List;

    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 19
    move-result v2

    .line 20
    if-ge v0, v2, :cond_4c

    .line 22
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mProportionTagViews:Ljava/util/List;

    .line 24
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/fileexplorer/view/indicator/ProportionTagView;

    .line 30
    iget v3, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mAlpha:I

    .line 32
    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->setAlpha(I)V

    .line 35
    if-nez v0, :cond_36

    .line 37
    if-eqz p2, :cond_32

    .line 39
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->getTagMarginStart()I

    .line 42
    move-result v1

    .line 43
    sub-int v1, p1, v1

    .line 45
    invoke-interface {v2}, Lcom/android/fileexplorer/view/indicator/DrawView;->getViewWidth()I

    .line 48
    move-result v3

    .line 49
    sub-int/2addr v1, v3

    .line 50
    goto :goto_36

    .line 51
    :cond_32
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->getTagMarginStart()I

    .line 54
    move-result v1

    .line 55
    :cond_36
    :goto_36
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->getPositionY()I

    .line 58
    move-result v3

    .line 59
    int-to-float v4, v1

    .line 60
    int-to-float v5, v3

    .line 61
    invoke-virtual {p3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 64
    invoke-interface {v2, p3}, Lcom/android/fileexplorer/view/indicator/DrawView;->draw(Landroid/graphics/Canvas;)V

    .line 67
    neg-int v2, v1

    .line 68
    int-to-float v2, v2

    .line 69
    neg-int v3, v3

    .line 70
    int-to-float v3, v3

    .line 71
    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 76
    goto :goto_d

    .line 77
    :cond_4c
    return-void
.end method

.method public getAlpha()I
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mAlpha:I

    .line 3
    return v0
.end method

.method public hideTagByAnimator()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->cancelHideTagByAnimator()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 6
    if-nez v0, :cond_38

    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_3e

    .line 14
    const-string v1, "alpha"

    .line 16
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 22
    const-wide/16 v1, 0x64

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 29
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 31
    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 34
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 39
    new-instance v1, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$3;

    .line 41
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$3;-><init>(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 49
    new-instance v1, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$4;

    .line 51
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$4;-><init>(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 57
    :cond_38
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 59
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 62
    return-void

    .line 63
    :array_3e
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public refreshViews(Ljava/util/List;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/indicator/ProportionTagModel;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->setDataAndRefreshView(Ljava/util/List;II)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mProportionTagViews:Ljava/util/List;

    .line 9
    return-void
.end method

.method public setAlpha(I)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mAlpha:I

    .line 3
    return-void
.end method

.method public setInvisible()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mAlpha:I

    .line 4
    return-void
.end method

.method public setOnAnimatorListener(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mOnAnimatorListener:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;

    .line 3
    return-void
.end method

.method public setVisible()V
    .registers 2

    .line 1
    const/16 v0, 0xff

    .line 3
    iput v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mAlpha:I

    .line 5
    return-void
.end method

.method public showTagByAnimator()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->cancelShowTagByAnimator()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 6
    if-nez v0, :cond_38

    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_3e

    .line 14
    const-string v1, "alpha"

    .line 16
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 22
    const-wide/16 v1, 0xc8

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 29
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 31
    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 34
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 39
    new-instance v1, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$1;

    .line 41
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$1;-><init>(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 49
    new-instance v1, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$2;

    .line 51
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$2;-><init>(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 57
    :cond_38
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 59
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 62
    return-void

    .line 63
    :array_3e
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
