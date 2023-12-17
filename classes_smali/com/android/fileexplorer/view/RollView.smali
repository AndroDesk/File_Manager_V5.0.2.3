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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/RollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    .line 4
    iput-boolean p2, p0, Lcom/android/fileexplorer/view/RollView;->mIsRolling:Z

    const-wide/16 v0, 0x7d0

    .line 5
    iput-wide v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollDelay:J

    .line 6
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/view/RollView;->mHandler:Landroid/os/Handler;

    .line 7
    new-instance p2, Lcom/android/fileexplorer/view/RollView$1;

    invoke-direct {p2, p0}, Lcom/android/fileexplorer/view/RollView$1;-><init>(Lcom/android/fileexplorer/view/RollView;)V

    iput-object p2, p0, Lcom/android/fileexplorer/view/RollView;->mRollRunnable:Ljava/lang/Runnable;

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/view/RollView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/RollView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/RollView;->mIsRolling:Z

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/RollView;)Lcom/android/fileexplorer/view/RollView$RollAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/RollView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RollView;->scrollView()V

    .line 4
    return-void
.end method

.method private clearView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mItemViewArray:Ljava/util/LinkedList;

    .line 10
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 13
    :cond_c
    return-void
.end method

.method private createAlphaAnimation(FF)Landroid/view/animation/Animation;
    .registers 4

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 3
    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 6
    const-wide/16 p1, 0x1f4

    .line 8
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 15
    return-object v0
.end method

.method private createTranslateAnimation(I)Landroid/view/animation/Animation;
    .registers 5

    .line 1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 3
    int-to-float p1, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, v1, v1, p1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 8
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 10
    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 16
    const-wide/16 v1, 0x1f4

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 25
    return-object v0
.end method

.method private getRollHeight(Landroid/view/View;)I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method private initAnimation()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mItemViewArray:Ljava/util/LinkedList;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/View;

    .line 10
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/RollView;->getRollHeight(Landroid/view/View;)I

    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollHeight:I

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    .line 18
    invoke-interface {v0}, Lcom/android/fileexplorer/view/RollView$RollAdapter;->getViewCount()I

    .line 21
    move-result v0

    .line 22
    iget v1, p0, Lcom/android/fileexplorer/view/RollView;->mRollHeight:I

    .line 24
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/RollView;->createTranslateAnimation(I)Landroid/view/animation/Animation;

    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/android/fileexplorer/view/RollView;->mTranslateAnimation:Landroid/view/animation/Animation;

    .line 30
    add-int/lit8 v1, v0, -0x1

    .line 32
    new-array v2, v1, [Landroid/view/animation/AlphaAnimation;

    .line 34
    iput-object v2, p0, Lcom/android/fileexplorer/view/RollView;->mAlphaAnimations:[Landroid/view/animation/Animation;

    .line 36
    add-int/lit8 v0, v0, -0x2

    .line 38
    const/high16 v2, 0x3f800000  # 1.0f

    .line 40
    move v3, v2

    .line 41
    :goto_28
    if-ltz v0, :cond_3b

    .line 43
    int-to-float v4, v1

    .line 44
    div-float v4, v2, v4

    .line 46
    sub-float v4, v3, v4

    .line 48
    iget-object v5, p0, Lcom/android/fileexplorer/view/RollView;->mAlphaAnimations:[Landroid/view/animation/Animation;

    .line 50
    invoke-direct {p0, v3, v4}, Lcom/android/fileexplorer/view/RollView;->createAlphaAnimation(FF)Landroid/view/animation/Animation;

    .line 53
    move-result-object v3

    .line 54
    aput-object v3, v5, v0

    .line 56
    add-int/lit8 v0, v0, -0x1

    .line 58
    move v3, v4

    .line 59
    goto :goto_28

    .line 60
    :cond_3b
    return-void
.end method

.method private initView()V
    .registers 6

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/view/RollView;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 14
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 17
    const/16 v0, 0x50

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 24
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    const/4 v3, -0x2

    .line 27
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    .line 35
    invoke-interface {v0}, Lcom/android/fileexplorer/view/RollView$RollAdapter;->getViewCount()I

    .line 38
    move-result v0

    .line 39
    new-instance v2, Ljava/util/LinkedList;

    .line 41
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/android/fileexplorer/view/RollView;->mItemViewArray:Ljava/util/LinkedList;

    .line 46
    const/4 v2, 0x0

    .line 47
    :goto_2e
    add-int/lit8 v3, v0, 0x1

    .line 49
    if-ge v2, v3, :cond_40

    .line 51
    iget-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    .line 53
    invoke-interface {v3}, Lcom/android/fileexplorer/view/RollView$RollAdapter;->onCreateView()Landroid/view/View;

    .line 56
    move-result-object v3

    .line 57
    iget-object v4, p0, Lcom/android/fileexplorer/view/RollView;->mItemViewArray:Ljava/util/LinkedList;

    .line 59
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 64
    goto :goto_2e

    .line 65
    :cond_40
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RollView;->initAnimation()V

    .line 68
    return-void
.end method

.method private release()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RollView;->clearView()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    .line 10
    return-void
.end method

.method private scrollView()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/view/RollView$RollAdapter;->getViewCount()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    .line 9
    invoke-interface {v1}, Lcom/android/fileexplorer/view/RollView$RollAdapter;->getItemCount()I

    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_110

    .line 15
    if-lez v0, :cond_110

    .line 17
    const/4 v2, 0x1

    .line 18
    if-le v1, v2, :cond_1a

    .line 20
    iget v3, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    .line 22
    add-int v4, v1, v0

    .line 24
    sub-int/2addr v4, v2

    .line 25
    if-ge v3, v4, :cond_110

    .line 27
    :cond_1a
    if-ne v1, v2, :cond_22

    .line 29
    iget v3, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    .line 31
    if-le v3, v1, :cond_22

    .line 33
    goto/16 :goto_110

    .line 35
    :cond_22
    iget-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mItemViewArray:Ljava/util/LinkedList;

    .line 37
    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroid/view/View;

    .line 43
    if-nez v3, :cond_32

    .line 45
    iget-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    .line 47
    invoke-interface {v3}, Lcom/android/fileexplorer/view/RollView$RollAdapter;->onCreateView()Landroid/view/View;

    .line 50
    move-result-object v3

    .line 51
    :cond_32
    iget v4, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    .line 53
    const/4 v5, 0x0

    .line 54
    if-ge v4, v1, :cond_43

    .line 56
    iget-object v6, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    .line 58
    invoke-interface {v6, v3, v4}, Lcom/android/fileexplorer/view/RollView$RollAdapter;->onBindView(Landroid/view/View;I)V

    .line 61
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 67
    goto :goto_4a

    .line 68
    :cond_43
    const/4 v4, 0x4

    .line 69
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 72
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 75
    :goto_4a
    iget-object v4, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 77
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    iget v3, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    .line 82
    if-lt v3, v0, :cond_6b

    .line 84
    add-int v4, v1, v0

    .line 86
    sub-int/2addr v4, v2

    .line 87
    if-ge v3, v4, :cond_6b

    .line 89
    iget-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 91
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 98
    iget-object v4, p0, Lcom/android/fileexplorer/view/RollView;->mItemViewArray:Ljava/util/LinkedList;

    .line 100
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 105
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 108
    :cond_6b
    iget-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 110
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 113
    move-result v4

    .line 114
    sub-int/2addr v4, v2

    .line 115
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 118
    move-result-object v3

    .line 119
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/RollView;->getRollHeight(Landroid/view/View;)I

    .line 122
    move-result v3

    .line 123
    iget v4, p0, Lcom/android/fileexplorer/view/RollView;->mRollHeight:I

    .line 125
    if-eq v3, v4, :cond_86

    .line 127
    iput v3, p0, Lcom/android/fileexplorer/view/RollView;->mRollHeight:I

    .line 129
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/RollView;->createTranslateAnimation(I)Landroid/view/animation/Animation;

    .line 132
    move-result-object v3

    .line 133
    iput-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mTranslateAnimation:Landroid/view/animation/Animation;

    .line 135
    :cond_86
    iget-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 137
    iget-object v4, p0, Lcom/android/fileexplorer/view/RollView;->mTranslateAnimation:Landroid/view/animation/Animation;

    .line 139
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    if-ne v1, v2, :cond_af

    .line 144
    iget v3, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    .line 146
    if-ne v3, v1, :cond_af

    .line 148
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 150
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 153
    move-result-object v0

    .line 154
    if-eqz v0, :cond_101

    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_101

    .line 162
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 165
    const/high16 v1, 0x3f800000  # 1.0f

    .line 167
    const/4 v3, 0x0

    .line 168
    invoke-direct {p0, v1, v3}, Lcom/android/fileexplorer/view/RollView;->createAlphaAnimation(FF)Landroid/view/animation/Animation;

    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 175
    goto :goto_101

    .line 176
    :cond_af
    iget v1, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    .line 178
    sub-int/2addr v0, v2

    .line 179
    if-le v1, v0, :cond_d6

    .line 181
    :goto_b4
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 183
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 186
    move-result v0

    .line 187
    sub-int/2addr v0, v2

    .line 188
    if-ge v5, v0, :cond_101

    .line 190
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 192
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_d3

    .line 202
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 205
    iget-object v1, p0, Lcom/android/fileexplorer/view/RollView;->mAlphaAnimations:[Landroid/view/animation/Animation;

    .line 207
    aget-object v1, v1, v5

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 212
    :cond_d3
    add-int/lit8 v5, v5, 0x1

    .line 214
    goto :goto_b4

    .line 215
    :cond_d6
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 217
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 220
    move-result v0

    .line 221
    add-int/lit8 v0, v0, -0x2

    .line 223
    iget-object v1, p0, Lcom/android/fileexplorer/view/RollView;->mAlphaAnimations:[Landroid/view/animation/Animation;

    .line 225
    array-length v1, v1

    .line 226
    sub-int/2addr v1, v2

    .line 227
    :goto_e2
    if-ltz v0, :cond_101

    .line 229
    if-ltz v1, :cond_101

    .line 231
    iget-object v3, p0, Lcom/android/fileexplorer/view/RollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 233
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 240
    move-result v4

    .line 241
    if-nez v4, :cond_fc

    .line 243
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 246
    iget-object v4, p0, Lcom/android/fileexplorer/view/RollView;->mAlphaAnimations:[Landroid/view/animation/Animation;

    .line 248
    aget-object v4, v4, v1

    .line 250
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 253
    :cond_fc
    add-int/lit8 v0, v0, -0x1

    .line 255
    add-int/lit8 v1, v1, -0x1

    .line 257
    goto :goto_e2

    .line 258
    :cond_101
    :goto_101
    iget v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    .line 260
    add-int/2addr v0, v2

    .line 261
    iput v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollIndex:I

    .line 263
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mHandler:Landroid/os/Handler;

    .line 265
    iget-object v1, p0, Lcom/android/fileexplorer/view/RollView;->mRollRunnable:Ljava/lang/Runnable;

    .line 267
    iget-wide v2, p0, Lcom/android/fileexplorer/view/RollView;->mRollDelay:J

    .line 269
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    return-void

    .line 273
    :cond_110
    :goto_110
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RollView;->release()V

    .line 276
    return-void
.end method


# virtual methods
.method public setAdapter(Lcom/android/fileexplorer/view/RollView$RollAdapter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RollView;->clearView()V

    .line 8
    :cond_7
    iput-object p1, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    .line 10
    invoke-direct {p0}, Lcom/android/fileexplorer/view/RollView;->initView()V

    .line 13
    return-void
.end method

.method public setRollDelay(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/android/fileexplorer/view/RollView;->mRollDelay:J

    .line 3
    return-void
.end method

.method public startRoll()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RollView;->mIsRolling:Z

    .line 3
    if-nez v0, :cond_14

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mRollAdapter:Lcom/android/fileexplorer/view/RollView$RollAdapter;

    .line 7
    if-eqz v0, :cond_14

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/RollView;->mIsRolling:Z

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mHandler:Landroid/os/Handler;

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/view/RollView;->mRollRunnable:Ljava/lang/Runnable;

    .line 16
    iget-wide v2, p0, Lcom/android/fileexplorer/view/RollView;->mRollDelay:J

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    :cond_14
    return-void
.end method

.method public stopRoll()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/RollView;->mIsRolling:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/RollView;->mIsRolling:Z

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView;->mHandler:Landroid/os/Handler;

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/view/RollView;->mRollRunnable:Ljava/lang/Runnable;

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    :cond_e
    return-void
.end method
