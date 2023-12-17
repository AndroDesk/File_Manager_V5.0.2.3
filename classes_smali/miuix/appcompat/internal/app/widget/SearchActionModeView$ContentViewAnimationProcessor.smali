.class Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;
.super Ljava/lang/Object;
.source "SearchActionModeView.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentViewAnimationProcessor"
.end annotation


# instance fields
.field private mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mAnimationAnchorView:Landroid/view/View;

.field private mAnimationAnimateView:Landroid/view/View;

.field private mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

.field private mAnimationResultView:Landroid/view/View;

.field private mContentViewTranslationYBeforeMode:I

.field private mContentViewTranslationYLength:I

.field private mIsActionBarNestedScrolledBeforeMode:Z

.field private mModeViewTranslationYBeforeMode:I

.field private mModeViewTranslationYLength:I

.field private mNestedCoordObTranslationYLength:I

.field private mTmpAnchorAccessibilityMode:I

.field private mTmpAnimAccessibilityMode:I

.field private mTmpResultAccessibilityMode:I

.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpAnchorAccessibilityMode:I

    .line 9
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpAnimAccessibilityMode:I

    .line 11
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpResultAccessibilityMode:I

    .line 13
    return-void
.end method

.method private updateAnimValues()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-interface {v0}, Lmiuix/core/view/NestedCoordinatorObserver;->getNestedScrollableValue()I

    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mNestedCoordObTranslationYLength:I

    .line 11
    :cond_a
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_58

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 19
    move-result v0

    .line 20
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 22
    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    .line 25
    move-result v2

    .line 26
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 28
    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandedHeight()I

    .line 31
    move-result v3

    .line 32
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 34
    invoke-virtual {v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_29

    .line 40
    add-int/2addr v0, v2

    .line 41
    goto :goto_32

    .line 42
    :cond_29
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 44
    invoke-virtual {v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 47
    move-result v4

    .line 48
    if-ne v4, v1, :cond_32

    .line 50
    add-int/2addr v0, v3

    .line 51
    :cond_32
    :goto_32
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYBeforeMode:I

    .line 53
    neg-int v0, v0

    .line 54
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYLength:I

    .line 56
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 61
    move-result v1

    .line 62
    add-int/2addr v1, v0

    .line 63
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mContentViewTranslationYLength:I

    .line 65
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    .line 67
    if-eqz v0, :cond_7b

    .line 69
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mIsActionBarNestedScrolledBeforeMode:Z

    .line 71
    if-nez v0, :cond_7b

    .line 73
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 75
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_7b

    .line 81
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mNestedCoordObTranslationYLength:I

    .line 83
    sub-int/2addr v3, v2

    .line 84
    neg-int v1, v3

    .line 85
    add-int/2addr v0, v1

    .line 86
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mNestedCoordObTranslationYLength:I

    .line 88
    goto :goto_7b

    .line 89
    :cond_58
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnchorView:Landroid/view/View;

    .line 91
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 93
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I

    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 100
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 102
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I

    .line 105
    move-result-object v0

    .line 106
    aget v0, v0, v1

    .line 108
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYBeforeMode:I

    .line 110
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 112
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 115
    move-result v1

    .line 116
    sub-int/2addr v0, v1

    .line 117
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYBeforeMode:I

    .line 119
    neg-int v0, v0

    .line 120
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYLength:I

    .line 122
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mContentViewTranslationYLength:I

    .line 124
    :cond_7b
    :goto_7b
    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getActionBarView()Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 11
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1e

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 20
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/view/View;

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move-object v0, v1

    .line 32
    :goto_1f
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnchorView:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 36
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_36

    .line 42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 44
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/view/View;

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move-object v0, v1

    .line 56
    :goto_37
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnimateView:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 60
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_4e

    .line 66
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 68
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroid/view/View;

    .line 78
    goto :goto_4f

    .line 79
    :cond_4e
    move-object v0, v1

    .line 80
    :goto_4f
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 84
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_66

    .line 90
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 92
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 100
    move-object v1, v0

    .line 101
    check-cast v1, Landroid/view/View;

    .line 103
    :cond_66
    instance-of v0, v1, Lmiuix/core/view/NestedCoordinatorObserver;

    .line 105
    if-eqz v0, :cond_6e

    .line 107
    check-cast v1, Lmiuix/core/view/NestedCoordinatorObserver;

    .line 109
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    .line 111
    :cond_6e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 113
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 116
    move-result v0

    .line 117
    const v1, 0x7fffffff

    .line 120
    const/4 v2, 0x1

    .line 121
    if-ne v0, v1, :cond_96

    .line 123
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/view/View;

    .line 131
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 133
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I

    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 140
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 142
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I

    .line 145
    move-result-object v1

    .line 146
    aget v1, v1, v2

    .line 148
    invoke-static {v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1302(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I

    .line 151
    :cond_96
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnchorView:Landroid/view/View;

    .line 153
    if-eqz v0, :cond_9e

    .line 155
    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 159
    :cond_9e
    const/4 v0, 0x0

    .line 160
    if-eqz p1, :cond_b0

    .line 162
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 164
    if-eqz v1, :cond_b0

    .line 166
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    .line 169
    move-result v1

    .line 170
    if-nez v1, :cond_ad

    .line 172
    move v1, v2

    .line 173
    goto :goto_ae

    .line 174
    :cond_ad
    move v1, v0

    .line 175
    :goto_ae
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mIsActionBarNestedScrolledBeforeMode:Z

    .line 177
    :cond_b0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnchorView:Landroid/view/View;

    .line 179
    if-eqz v1, :cond_b7

    .line 181
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->updateAnimValues()V

    .line 184
    :cond_b7
    if-eqz p1, :cond_112

    .line 186
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnchorView:Landroid/view/View;

    .line 188
    const/4 v1, 0x4

    .line 189
    if-eqz p1, :cond_c9

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    .line 194
    move-result p1

    .line 195
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpAnchorAccessibilityMode:I

    .line 197
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnchorView:Landroid/view/View;

    .line 199
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 202
    :cond_c9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnimateView:Landroid/view/View;

    .line 204
    if-eqz p1, :cond_d8

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    .line 209
    move-result p1

    .line 210
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpAnimAccessibilityMode:I

    .line 212
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnimateView:Landroid/view/View;

    .line 214
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 217
    :cond_d8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    .line 219
    if-eqz p1, :cond_e7

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    .line 224
    move-result p1

    .line 225
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpResultAccessibilityMode:I

    .line 227
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    .line 229
    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 232
    :cond_e7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 234
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYBeforeMode:I

    .line 236
    int-to-float v1, v1

    .line 237
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 240
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 242
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    .line 245
    move-result p1

    .line 246
    if-nez p1, :cond_166

    .line 248
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYBeforeMode:I

    .line 250
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 252
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 255
    move-result v1

    .line 256
    sub-int/2addr p1, v1

    .line 257
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mContentViewTranslationYBeforeMode:I

    .line 259
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 261
    int-to-float p1, p1

    .line 262
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(F)V

    .line 265
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 267
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 270
    move-result v1

    .line 271
    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 274
    goto :goto_166

    .line 275
    :cond_112
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 277
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    .line 280
    move-result-object p1

    .line 281
    if-eqz p1, :cond_123

    .line 283
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 285
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    .line 288
    move-result-object p1

    .line 289
    invoke-interface {p1, v0}, Lmiuix/view/SearchActionMode$AnimatedViewListener;->onInSearchMode(Z)V

    .line 292
    :cond_123
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnchorView:Landroid/view/View;

    .line 294
    if-eqz p1, :cond_12c

    .line 296
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpAnchorAccessibilityMode:I

    .line 298
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 301
    :cond_12c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnimateView:Landroid/view/View;

    .line 303
    if-eqz p1, :cond_135

    .line 305
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpAnimAccessibilityMode:I

    .line 307
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 310
    :cond_135
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    .line 312
    if-eqz p1, :cond_13e

    .line 314
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpResultAccessibilityMode:I

    .line 316
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 319
    :cond_13e
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 321
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    .line 324
    move-result p1

    .line 325
    if-nez p1, :cond_166

    .line 327
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    .line 329
    if-eqz p1, :cond_166

    .line 331
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 333
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    .line 336
    move-result v1

    .line 337
    int-to-float v1, v1

    .line 338
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 340
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 343
    move-result v2

    .line 344
    int-to-float v2, v2

    .line 345
    add-float/2addr v1, v2

    .line 346
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(F)V

    .line 349
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    .line 351
    invoke-interface {p1, v0, v0}, Lmiuix/core/view/NestedCoordinatorObserver;->updateCoordinatorHeightGapInfo(II)V

    .line 354
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 356
    invoke-virtual {p1, v0, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 359
    :cond_166
    :goto_166
    return-void
.end method

.method public onStop(Z)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_61

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 7
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_15

    .line 13
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 15
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1, v1}, Lmiuix/view/SearchActionMode$AnimatedViewListener;->onUpdateOffsetY(I)V

    .line 22
    :cond_15
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 24
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_38

    .line 30
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    .line 32
    if-eqz p1, :cond_24

    .line 34
    invoke-interface {p1, v1, v1}, Lmiuix/core/view/NestedCoordinatorObserver;->updateCoordinatorHeightGapInfo(II)V

    .line 37
    :cond_24
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 39
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(F)V

    .line 42
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 44
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 47
    move-result v0

    .line 48
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 50
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 53
    move-result v1

    .line 54
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 57
    :cond_38
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    .line 59
    if-eqz p1, :cond_e6

    .line 61
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 63
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_e6

    .line 69
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 74
    move-result v0

    .line 75
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 77
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 80
    move-result v1

    .line 81
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    .line 83
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 86
    move-result v2

    .line 87
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 89
    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 92
    move-result v3

    .line 93
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 96
    goto/16 :goto_e6

    .line 98
    :cond_61
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 100
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_7e

    .line 106
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 108
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    .line 111
    move-result-object p1

    .line 112
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mNestedCoordObTranslationYLength:I

    .line 114
    invoke-interface {p1, v2}, Lmiuix/view/SearchActionMode$AnimatedViewListener;->onUpdateOffsetY(I)V

    .line 117
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 119
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    .line 122
    move-result-object p1

    .line 123
    const/4 v2, 0x1

    .line 124
    invoke-interface {p1, v2}, Lmiuix/view/SearchActionMode$AnimatedViewListener;->onInSearchMode(Z)V

    .line 127
    :cond_7e
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 129
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_ae

    .line 135
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 137
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(F)V

    .line 140
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    .line 142
    if-eqz p1, :cond_a5

    .line 144
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mNestedCoordObTranslationYLength:I

    .line 146
    invoke-interface {p1, v0, v1}, Lmiuix/core/view/NestedCoordinatorObserver;->updateCoordinatorHeightGapInfo(II)V

    .line 149
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 151
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 154
    move-result v0

    .line 155
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 157
    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    .line 160
    move-result v2

    .line 161
    add-int/2addr v2, v0

    .line 162
    invoke-virtual {p1, v2, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 165
    goto :goto_ae

    .line 166
    :cond_a5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 168
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 171
    move-result v0

    .line 172
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 175
    :cond_ae
    :goto_ae
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    .line 177
    if-eqz p1, :cond_e6

    .line 179
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 181
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_e6

    .line 187
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 192
    move-result v0

    .line 193
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 195
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    .line 198
    move-result v1

    .line 199
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 201
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 204
    move-result v2

    .line 205
    add-int/2addr v2, v1

    .line 206
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 208
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 211
    move-result v1

    .line 212
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 215
    move-result v1

    .line 216
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    .line 218
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 221
    move-result v2

    .line 222
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 224
    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 227
    move-result v3

    .line 228
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 231
    :cond_e6
    :goto_e6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 233
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYBeforeMode:I

    .line 235
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYLength:I

    .line 237
    add-int/2addr v0, v1

    .line 238
    int-to-float v0, v0

    .line 239
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 242
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 244
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    .line 247
    move-result-object p1

    .line 248
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 253
    move-result v0

    .line 254
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 256
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 259
    move-result v1

    .line 260
    int-to-float v1, v1

    .line 261
    add-float/2addr v0, v1

    .line 262
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 265
    return-void
.end method

.method public onUpdate(ZF)V
    .registers 7

    .line 1
    const/high16 v0, 0x3f800000  # 1.0f

    .line 3
    if-nez p1, :cond_6

    .line 5
    sub-float p2, v0, p2

    .line 7
    :cond_6
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYLength:I

    .line 9
    int-to-float v1, v1

    .line 10
    mul-float/2addr v1, p2

    .line 11
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 13
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYBeforeMode:I

    .line 15
    int-to-float v3, v3

    .line 16
    add-float/2addr v3, v1

    .line 17
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 22
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 34
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 37
    move-result v3

    .line 38
    int-to-float v3, v3

    .line 39
    add-float/2addr v2, v3

    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 43
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mNestedCoordObTranslationYLength:I

    .line 45
    int-to-float v2, v1

    .line 46
    mul-float/2addr v2, p2

    .line 47
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 50
    move-result v2

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 54
    move-result v1

    .line 55
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 57
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_b8

    .line 63
    const/4 v2, 0x0

    .line 64
    if-eqz p1, :cond_72

    .line 66
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    .line 68
    if-eqz p1, :cond_5e

    .line 70
    sub-float/2addr v0, p2

    .line 71
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mContentViewTranslationYBeforeMode:I

    .line 73
    int-to-float p1, p1

    .line 74
    mul-float/2addr v0, p1

    .line 75
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 77
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    .line 80
    move-result p1

    .line 81
    int-to-float p1, p1

    .line 82
    mul-float/2addr p2, p1

    .line 83
    add-float/2addr p2, v0

    .line 84
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 86
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(F)V

    .line 89
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    .line 91
    invoke-interface {p1, v1, v2}, Lmiuix/core/view/NestedCoordinatorObserver;->updateCoordinatorHeightGapInfo(II)V

    .line 94
    goto :goto_b8

    .line 95
    :cond_5e
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 100
    move-result v2

    .line 101
    sub-float/2addr v0, p2

    .line 102
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 104
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 107
    move-result p2

    .line 108
    int-to-float p2, p2

    .line 109
    mul-float/2addr v0, p2

    .line 110
    sub-float/2addr v2, v0

    .line 111
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(F)V

    .line 114
    goto :goto_b8

    .line 115
    :cond_72
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    .line 117
    if-eqz p1, :cond_a5

    .line 119
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 121
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    .line 124
    move-result p1

    .line 125
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 127
    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 130
    move-result v3

    .line 131
    add-int/2addr v3, p1

    .line 132
    int-to-float p1, v3

    .line 133
    sub-float/2addr v0, p2

    .line 134
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYBeforeMode:I

    .line 136
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 138
    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    .line 141
    move-result v3

    .line 142
    sub-int/2addr p2, v3

    .line 143
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 145
    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 148
    move-result v3

    .line 149
    sub-int/2addr p2, v3

    .line 150
    int-to-float p2, p2

    .line 151
    mul-float/2addr v0, p2

    .line 152
    add-float/2addr v0, p1

    .line 153
    float-to-int p1, v0

    .line 154
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 156
    int-to-float p1, p1

    .line 157
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(F)V

    .line 160
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    .line 162
    invoke-interface {p1, v1, v2}, Lmiuix/core/view/NestedCoordinatorObserver;->updateCoordinatorHeightGapInfo(II)V

    .line 165
    goto :goto_b8

    .line 166
    :cond_a5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 171
    move-result v2

    .line 172
    sub-float/2addr v0, p2

    .line 173
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 175
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 178
    move-result p2

    .line 179
    int-to-float p2, p2

    .line 180
    mul-float/2addr v0, p2

    .line 181
    sub-float/2addr v2, v0

    .line 182
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(F)V

    .line 185
    :cond_b8
    :goto_b8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 187
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    .line 190
    move-result-object p1

    .line 191
    if-eqz p1, :cond_c9

    .line 193
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 195
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    .line 198
    move-result-object p1

    .line 199
    invoke-interface {p1, v1}, Lmiuix/view/SearchActionMode$AnimatedViewListener;->onUpdateOffsetY(I)V

    .line 202
    :cond_c9
    return-void
.end method
