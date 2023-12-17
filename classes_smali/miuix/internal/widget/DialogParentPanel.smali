.class public Lmiuix/internal/widget/DialogParentPanel;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "DialogParentPanel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogParentPanel"


# instance fields
.field private final EMPTY:[I

.field private mButtonGroup:Landroid/widget/LinearLayout;

.field private mButtonPanel:Landroid/view/View;

.field private mContentPanel:Landroid/view/View;

.field private mCustomPanel:Landroid/view/View;

.field private mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

.field private mLayoutSplit:Landroidx/constraintlayout/widget/a;

.field private mReferenceIds:[I

.field private mShouldAdjustLayout:Z

.field private mTopPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [I

    .line 7
    iput-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->EMPTY:[I

    .line 9
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 11
    invoke-direct {v0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->setIsInDialogMode(Z)V

    .line 20
    return-void
.end method

.method private changeHorizontalParams(Landroidx/constraintlayout/widget/ConstraintLayout$b;I)V
    .registers 3

    .line 1
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 3
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 5
    return-void
.end method

.method private changeVerticalParams(Landroidx/constraintlayout/widget/ConstraintLayout$b;I)V
    .registers 3

    .line 1
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 3
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 5
    return-void
.end method

.method private getChildLayoutParams(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$b;
    .registers 3

    .line 1
    if-nez p1, :cond_10

    .line 3
    const-string p1, "DialogParentPanel"

    .line 5
    const-string v0, "Child View is null!"

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p1, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 16
    return-object p1

    .line 17
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 23
    return-object p1
.end method

.method private init()V
    .registers 6

    .line 1
    sget v0, Lmiuix/appcompat/R$id;->buttonPanel:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mButtonPanel:Landroid/view/View;

    .line 9
    sget v0, Lmiuix/appcompat/R$id;->topPanel:I

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lmiuix/internal/widget/DialogParentPanel;->mTopPanel:Landroid/view/View;

    .line 17
    sget v1, Lmiuix/appcompat/R$id;->contentPanel:I

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v2

    .line 23
    iput-object v2, p0, Lmiuix/internal/widget/DialogParentPanel;->mContentPanel:Landroid/view/View;

    .line 25
    sget v2, Lmiuix/appcompat/R$id;->customPanel:I

    .line 27
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v3

    .line 31
    iput-object v3, p0, Lmiuix/internal/widget/DialogParentPanel;->mCustomPanel:Landroid/view/View;

    .line 33
    sget v3, Lmiuix/appcompat/R$id;->buttonGroup:I

    .line 35
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Landroid/widget/LinearLayout;

    .line 41
    iput-object v3, p0, Lmiuix/internal/widget/DialogParentPanel;->mButtonGroup:Landroid/widget/LinearLayout;

    .line 43
    const/4 v3, 0x3

    .line 44
    new-array v3, v3, [I

    .line 46
    const/4 v4, 0x0

    .line 47
    aput v0, v3, v4

    .line 49
    const/4 v0, 0x1

    .line 50
    aput v1, v3, v0

    .line 52
    const/4 v0, 0x2

    .line 53
    aput v2, v3, v0

    .line 55
    iput-object v3, p0, Lmiuix/internal/widget/DialogParentPanel;->mReferenceIds:[I

    .line 57
    return-void
.end method


# virtual methods
.method public adjustLayout()V
    .registers 10

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mButtonPanel:Landroid/view/View;

    .line 3
    invoke-direct {p0, v0}, Lmiuix/internal/widget/DialogParentPanel;->getChildLayoutParams(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/internal/widget/DialogParentPanel;->mTopPanel:Landroid/view/View;

    .line 9
    invoke-direct {p0, v1}, Lmiuix/internal/widget/DialogParentPanel;->getChildLayoutParams(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lmiuix/internal/widget/DialogParentPanel;->mContentPanel:Landroid/view/View;

    .line 15
    invoke-direct {p0, v2}, Lmiuix/internal/widget/DialogParentPanel;->getChildLayoutParams(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lmiuix/internal/widget/DialogParentPanel;->mCustomPanel:Landroid/view/View;

    .line 21
    invoke-direct {p0, v3}, Lmiuix/internal/widget/DialogParentPanel;->getChildLayoutParams(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p0}, Lmiuix/internal/widget/DialogParentPanel;->shouldAdjustLayout()Z

    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x1

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, -0x1

    .line 32
    if-eqz v4, :cond_6d

    .line 34
    iget-object v4, p0, Lmiuix/internal/widget/DialogParentPanel;->mLayoutSplit:Landroidx/constraintlayout/widget/a;

    .line 36
    const/4 v8, 0x6

    .line 37
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/widget/a;->setType(I)V

    .line 40
    iget-object v4, p0, Lmiuix/internal/widget/DialogParentPanel;->mLayoutSplit:Landroidx/constraintlayout/widget/a;

    .line 42
    iget-object v8, p0, Lmiuix/internal/widget/DialogParentPanel;->mReferenceIds:[I

    .line 44
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V

    .line 47
    iget-object v4, p0, Lmiuix/internal/widget/DialogParentPanel;->mButtonGroup:Landroid/widget/LinearLayout;

    .line 49
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    const/high16 v4, 0x3f000000  # 0.5f

    .line 54
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:F

    .line 56
    iput v6, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 58
    iput v6, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 60
    iput v7, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 62
    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:F

    .line 64
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 66
    iput v7, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 68
    sget v5, Lmiuix/appcompat/R$id;->topPanel:I

    .line 70
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    .line 72
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 74
    iput-boolean v6, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:Z

    .line 76
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->M:I

    .line 78
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:F

    .line 80
    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 82
    sget v5, Lmiuix/appcompat/R$id;->contentPanel:I

    .line 84
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    .line 86
    iput v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 88
    iput v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    .line 90
    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 92
    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 94
    iput-boolean v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:Z

    .line 96
    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->M:I

    .line 98
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:F

    .line 100
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 102
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    .line 104
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 106
    invoke-direct {p0, v0, v6}, Lmiuix/internal/widget/DialogParentPanel;->changeVerticalParams(Landroidx/constraintlayout/widget/ConstraintLayout$b;I)V

    .line 109
    goto :goto_a8

    .line 110
    :cond_6d
    iget-object v4, p0, Lmiuix/internal/widget/DialogParentPanel;->mLayoutSplit:Landroidx/constraintlayout/widget/a;

    .line 112
    iget-object v8, p0, Lmiuix/internal/widget/DialogParentPanel;->EMPTY:[I

    .line 114
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V

    .line 117
    iget-object v4, p0, Lmiuix/internal/widget/DialogParentPanel;->mButtonGroup:Landroid/widget/LinearLayout;

    .line 119
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    const/high16 v4, 0x3f800000  # 1.0f

    .line 124
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:F

    .line 126
    invoke-direct {p0, v1, v6}, Lmiuix/internal/widget/DialogParentPanel;->changeHorizontalParams(Landroidx/constraintlayout/widget/ConstraintLayout$b;I)V

    .line 129
    iput v6, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 131
    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:F

    .line 133
    iput-boolean v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:Z

    .line 135
    const/4 v8, -0x2

    .line 136
    iput v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 138
    invoke-direct {p0, v2, v6}, Lmiuix/internal/widget/DialogParentPanel;->changeHorizontalParams(Landroidx/constraintlayout/widget/ConstraintLayout$b;I)V

    .line 141
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:F

    .line 143
    iput-boolean v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:Z

    .line 145
    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 147
    invoke-direct {p0, v3, v6}, Lmiuix/internal/widget/DialogParentPanel;->changeHorizontalParams(Landroidx/constraintlayout/widget/ConstraintLayout$b;I)V

    .line 150
    sget v5, Lmiuix/appcompat/R$id;->buttonPanel:I

    .line 152
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    .line 154
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:F

    .line 156
    invoke-direct {p0, v0, v6}, Lmiuix/internal/widget/DialogParentPanel;->changeHorizontalParams(Landroidx/constraintlayout/widget/ConstraintLayout$b;I)V

    .line 159
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    .line 161
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 163
    sget v4, Lmiuix/appcompat/R$id;->customPanel:I

    .line 165
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    .line 167
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 169
    :goto_a8
    iget-object v4, p0, Lmiuix/internal/widget/DialogParentPanel;->mButtonPanel:Landroid/view/View;

    .line 171
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mTopPanel:Landroid/view/View;

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mContentPanel:Landroid/view/View;

    .line 181
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mCustomPanel:Landroid/view/View;

    .line 186
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object p1, p0, Lmiuix/internal/widget/DialogParentPanel;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 6
    invoke-virtual {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->onConfigurationChanged()V

    .line 9
    invoke-virtual {p0}, Lmiuix/internal/widget/DialogParentPanel;->adjustLayout()V

    .line 12
    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    invoke-direct {p0}, Lmiuix/internal/widget/DialogParentPanel;->init()V

    .line 7
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 3
    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getHeightMeasureSpecForDialog(I)I

    .line 6
    move-result p2

    .line 7
    invoke-virtual {p0}, Lmiuix/internal/widget/DialogParentPanel;->shouldAdjustLayout()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_16

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    move-result p2

    .line 17
    const/high16 v0, 0x40000000  # 2.0f

    .line 19
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 22
    move-result p2

    .line 23
    :cond_16
    iget-object v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 25
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getWidthMeasureSpecForDialog(I)I

    .line 28
    move-result p1

    .line 29
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 32
    return-void
.end method

.method public setShouldAdjustLayout(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/internal/widget/DialogParentPanel;->mShouldAdjustLayout:Z

    .line 3
    return-void
.end method

.method public shouldAdjustLayout()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/internal/widget/DialogParentPanel;->mShouldAdjustLayout:Z

    .line 3
    return v0
.end method
