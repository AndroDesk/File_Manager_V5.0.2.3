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
.field private static final HIDE_TIME_BY_ALPHA_DURATION_MS:I

.field private static final SCROLLBAR_FULL_OPAQUE:I

.field private static final SHOW_TIME_BY_ALPHA_DURATION_MS:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92df2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->HIDE_TIME_BY_ALPHA_DURATION_MS:I

    const v0, 0x92d69

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->SCROLLBAR_FULL_OPAQUE:I

    const v0, 0x92d5e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->SHOW_TIME_BY_ALPHA_DURATION_MS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mAlpha:I

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mOnAnimatorListener:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;

    return-object p0
.end method


# virtual methods
.method public cancelHideTagByAnimator()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    return-void
.end method

.method public cancelShowTagByAnimator()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    return-void
.end method

.method public draw(IZLandroid/graphics/Canvas;)V
    .registers 10

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mProportionTagViews:Ljava/util/List;

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4c

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mProportionTagViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4c

    iget-object v2, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mProportionTagViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/view/indicator/ProportionTagView;

    iget v3, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mAlpha:I

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->setAlpha(I)V

    if-nez v0, :cond_36

    if-eqz p2, :cond_32

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->getTagMarginStart()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v2}, Lcom/android/fileexplorer/view/indicator/DrawView;->getViewWidth()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_36

    :cond_32
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->getTagMarginStart()I

    move-result v1

    :cond_36
    :goto_36
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/indicator/ProportionTagView;->getPositionY()I

    move-result v3

    int-to-float v4, v1

    int-to-float v5, v3

    invoke-virtual {p3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-interface {v2, p3}, Lcom/android/fileexplorer/view/indicator/DrawView;->draw(Landroid/graphics/Canvas;)V

    neg-int v2, v1

    int-to-float v2, v2

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_4c
    return-void
.end method

.method public getAlpha()I
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mAlpha:I

    return v0
.end method

.method public hideTagByAnimator()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->cancelHideTagByAnimator()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_38

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$3;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$3;-><init>(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$4;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$4;-><init>(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_38
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mHideByAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

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

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mAdapter:Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/view/indicator/ProportionTagBaseAdapter;->setDataAndRefreshView(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mProportionTagViews:Ljava/util/List;

    return-void
.end method

.method public setAlpha(I)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mAlpha:I

    return-void
.end method

.method public setInvisible()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mAlpha:I

    return-void
.end method

.method public setOnAnimatorListener(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mOnAnimatorListener:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;

    return-void
.end method

.method public setVisible()V
    .registers 2

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mAlpha:I

    return-void
.end method

.method public showTagByAnimator()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->cancelShowTagByAnimator()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_38

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$1;-><init>(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$2;-><init>(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_38
    iget-object v0, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->mShowByAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_3e
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
