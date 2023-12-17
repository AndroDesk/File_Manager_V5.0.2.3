.class public Lcom/android/fileexplorer/view/RollView;
.super Landroid/widget/LinearLayout;
.source "RollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/RollView$RollAdapter;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x1f4L

.field private static final ROLL_DELAY:J = 0x7d0L


# instance fields
.field private mAlphaAnimations:[Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsRolling:Z

.field private mItemViewArray:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

.field private mRollDelay:J

.field private mRollHeight:I

.field private mRollIndex:I

.field private mRollRunnable:Ljava/lang/Runnable;

.field private mTranslateAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/RollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    iput-boolean p2, p0, Lcom/android/fileexplorer/view/RollView;->mIsRolling:Z

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollDelay:J

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/view/RollView;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/fileexplorer/view/RollView$1;

    invoke-direct {p2, p0}, Lcom/android/fileexplorer/view/RollView$1;-><init>(Lcom/android/fileexplorer/view/RollView;)V

    iput-object p2, p0, Lcom/android/fileexplorer/view/RollView;->mRollRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/fileexplorer/view/RollView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/RollView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/RollView;->mIsRolling:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/RollView;)Lcom/android/fileexplorer/view/RollView$RollAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/RollView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RollView;->scrollView()V

    return-void
.end method

.method private clearView()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mItemViewArray:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_c
    return-void
.end method

.method private createAlphaAnimation(FF)Landroid/view/animation/Animation;
    .registers 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-object v0
.end method

.method private createTranslateAnimation(I)Landroid/view/animation/Animation;
    .registers 5

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-object v0
.end method

.method private getRollHeight(Landroid/view/View;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method private initAnimation()V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mItemViewArray:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/RollView;->getRollHeight(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollHeight:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    invoke-interface {v0}, Lcom/android/fileexplorer/view/RollView$RollAdapter;->getViewCount()I

    move-result v0

    iget v1, p0, Lcom/android/fileexplorer/view/RollView;->mRollHeight:I

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/RollView;->createTranslateAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/view/RollView;->mTranslateAnimation:Landroid/view/animation/Animation;

    add-int/lit8 v1, v0, -0x1

    new-array v2, v1, [Landroid/view/animation/AlphaAnimation;

    iput-object v2, p0, Lcom/android/fileexplorer/view/RollView;->mAlphaAnimations:[Landroid/view/animation/Animation;

    add-int/lit8 v0, v0, -0x2

    const/high16 v2, 0x3f800000  # 1.0f

    move v3, v2

    :goto_28
    if-ltz v0, :cond_3b

    int-to-float v4, v1

    div-float v4, v2, v4

    sub-float v4, v3, v4

    iget-object v5, p0, Lcom/android/fileexplorer/view/RollView;->mAlphaAnimations:[Landroid/view/animation/Animation;

    invoke-direct {p0, v3, v4}, Lcom/android/fileexplorer/view/RollView;->createAlphaAnimation(FF)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v5, v0

    add-int/lit8 v0, v0, -0x1

    move v3, v4

    goto :goto_28

    :cond_3b
    return-void
.end method

.method private initView()V
    .registers 6

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/fileexplorer/view/RollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    invoke-interface {v0}, Lcom/android/fileexplorer/view/RollView$RollAdapter;->getViewCount()I

    move-result v0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/fileexplorer/view/RollView;->mItemViewArray:Ljava/util/LinkedList;

    const/4 v2, 0x0

    :goto_2e
    add-int/lit8 v3, v0, 0x1

    if-ge v2, v3, :cond_40

    iget-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    invoke-interface {v3}, Lcom/android/fileexplorer/view/RollView$RollAdapter;->onCreateView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fileexplorer/view/RollView;->mItemViewArray:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_40
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RollView;->initAnimation()V

    return-void
.end method

.method private release()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RollView;->clearView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    return-void
.end method

.method private scrollView()V
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    invoke-interface {v0}, Lcom/android/fileexplorer/view/RollView$RollAdapter;->getViewCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    invoke-interface {v1}, Lcom/android/fileexplorer/view/RollView$RollAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_110

    if-lez v0, :cond_110

    const/4 v2, 0x1

    if-le v1, v2, :cond_1a

    iget v3, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    add-int v4, v1, v0

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_110

    :cond_1a
    if-ne v1, v2, :cond_22

    iget v3, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    if-le v3, v1, :cond_22

    goto/16 :goto_110

    :cond_22
    iget-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mItemViewArray:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_32

    iget-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    invoke-interface {v3}, Lcom/android/fileexplorer/view/RollView$RollAdapter;->onCreateView()Landroid/view/View;

    move-result-object v3

    :cond_32
    iget v4, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    const/4 v5, 0x0

    if-ge v4, v1, :cond_43

    iget-object v6, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    invoke-interface {v6, v3, v4}, Lcom/android/fileexplorer/view/RollView$RollAdapter;->onBindView(Landroid/view/View;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4a

    :cond_43
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    :goto_4a
    iget-object v4, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget v3, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    if-lt v3, v0, :cond_6b

    add-int v4, v1, v0

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_6b

    iget-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    iget-object v4, p0, Lcom/android/fileexplorer/view/RollView;->mItemViewArray:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_6b
    iget-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/RollView;->getRollHeight(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/fileexplorer/view/RollView;->mRollHeight:I

    if-eq v3, v4, :cond_86

    iput v3, p0, Lcom/android/fileexplorer/view/RollView;->mRollHeight:I

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/RollView;->createTranslateAnimation(I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mTranslateAnimation:Landroid/view/animation/Animation;

    :cond_86
    iget-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/fileexplorer/view/RollView;->mTranslateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    if-ne v1, v2, :cond_af

    iget v3, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    if-ne v3, v1, :cond_af

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_101

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_101

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/fileexplorer/view/RollView;->createAlphaAnimation(FF)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_101

    :cond_af
    iget v1, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_d6

    :goto_b4
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ge v5, v0, :cond_101

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_d3

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/android/fileexplorer/view/RollView;->mAlphaAnimations:[Landroid/view/animation/Animation;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_d3
    add-int/lit8 v5, v5, 0x1

    goto :goto_b4

    :cond_d6
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lcom/android/fileexplorer/view/RollView;->mAlphaAnimations:[Landroid/view/animation/Animation;

    array-length v1, v1

    sub-int/2addr v1, v2

    :goto_e2
    if-ltz v0, :cond_101

    if-ltz v1, :cond_101

    iget-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_fc

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    iget-object v4, p0, Lcom/android/fileexplorer/view/RollView;->mAlphaAnimations:[Landroid/view/animation/Animation;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_fc
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_e2

    :cond_101
    :goto_101
    iget v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fileexplorer/view/RollView;->mRollRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/fileexplorer/view/RollView;->mRollDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_110
    :goto_110
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RollView;->release()V

    return-void
.end method


# virtual methods
.method public setAdapter(Lcom/android/fileexplorer/view/RollView$RollAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RollView;->clearView()V

    :cond_7
    iput-object p1, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/RollView;->initView()V

    return-void
.end method

.method public setRollDelay(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/fileexplorer/view/RollView;->mRollDelay:J

    return-void
.end method

.method public startRoll()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RollView;->mIsRolling:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/RollView;->mIsRolling:Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fileexplorer/view/RollView;->mRollRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/fileexplorer/view/RollView;->mRollDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    return-void
.end method

.method public stopRoll()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RollView;->mIsRolling:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/RollView;->mIsRolling:Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fileexplorer/view/RollView;->mRollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method
