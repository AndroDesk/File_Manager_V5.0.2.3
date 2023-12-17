.class public Lmiuix/navigator/adapter/CategoryImpl;
.super Lmiuix/navigator/Navigator$Category;
.source "CategoryImpl.java"

# interfaces
.implements Lmiuix/navigator/adapter/NavigationAdapterItem;


# static fields
.field private static final COLLAPSE:I = 0x2

.field private static final EMPTY:I = 0x0

.field private static final EXPAND:I = 0x1

.field private static final HIDE_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final ROTATION_CONFIG:Lmiuix/animation/base/AnimConfig;

.field private static final SHOW_CONFIG:Lmiuix/animation/base/AnimConfig;


# instance fields
.field public mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

.field private mCollapsable:Z

.field private mEmpty:Z

.field private mExpanded:Z

.field private final mFooterType:I

.field private mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

.field private mState:I
    .annotation build Lmiuix/navigator/adapter/CategoryImpl$CategoryState;
    .end annotation
.end field

.field private mTitle:Ljava/lang/CharSequence;

.field private final mType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 3
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [F

    .line 9
    fill-array-data v1, :array_44

    .line 12
    const/4 v2, -0x2

    .line 13
    invoke-static {v2, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lmiuix/navigator/adapter/CategoryImpl;->ROTATION_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 23
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 25
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 28
    const/4 v1, 0x1

    .line 29
    new-array v2, v1, [F

    .line 31
    const/high16 v3, 0x42c80000  # 100.0f

    .line 33
    const/4 v4, 0x0

    .line 34
    aput v3, v2, v4

    .line 36
    const/4 v3, 0x4

    .line 37
    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lmiuix/navigator/adapter/CategoryImpl;->HIDE_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 47
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 49
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 52
    new-array v1, v1, [F

    .line 54
    const/high16 v2, 0x43960000  # 300.0f

    .line 56
    aput v2, v1, v4

    .line 58
    invoke-static {v3, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lmiuix/navigator/adapter/CategoryImpl;->SHOW_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 68
    return-void

    .line 69
    :array_44
    .array-data 4
        0x3f733333  # 0.95f
        0x3eb33333  # 0.35f
    .end array-data
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/Navigator$Category;-><init>()V

    .line 4
    iput p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mType:I

    .line 6
    iput p2, p0, Lmiuix/navigator/adapter/CategoryImpl;->mFooterType:I

    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    .line 11
    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mCollapsable:Z

    .line 13
    iput p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mState:I

    .line 15
    return-void
.end method

.method public static synthetic a(Lmiuix/navigator/adapter/CategoryImpl;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/CategoryImpl;->lambda$bindWidget$1(Landroid/view/View;)V

    return-void
.end method

.method private animateWidgetTo(I)V
    .registers 10
    .param p1  # I
        .annotation build Lmiuix/navigator/adapter/CategoryImpl$CategoryState;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mState:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 8
    if-eqz v0, :cond_d8

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_11

    .line 16
    goto/16 :goto_d8

    .line 18
    :cond_11
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 20
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 22
    sget v1, Lmiuix/navigator/R$id;->navigation_item_category_arrow:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 30
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 32
    sget v2, Lmiuix/navigator/R$id;->navigation_item_category_edit:I

    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v1

    .line 38
    const/high16 v2, 0x3f800000  # 1.0f

    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x1

    .line 43
    if-nez p1, :cond_61

    .line 45
    new-array v6, v5, [Landroid/view/View;

    .line 47
    aput-object v0, v6, v4

    .line 49
    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 56
    move-result-object v0

    .line 57
    sget-object v6, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 59
    invoke-interface {v0, v6, v3}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 62
    move-result-object v0

    .line 63
    new-array v3, v5, [Lmiuix/animation/base/AnimConfig;

    .line 65
    sget-object v7, Lmiuix/navigator/adapter/CategoryImpl;->HIDE_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 67
    aput-object v7, v3, v4

    .line 69
    invoke-interface {v0, v3}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 72
    new-array v0, v5, [Landroid/view/View;

    .line 74
    aput-object v1, v0, v4

    .line 76
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0, v6, v2}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 87
    move-result-object v0

    .line 88
    new-array v1, v5, [Lmiuix/animation/base/AnimConfig;

    .line 90
    sget-object v2, Lmiuix/navigator/adapter/CategoryImpl;->SHOW_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 92
    aput-object v2, v1, v4

    .line 94
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 97
    goto :goto_d5

    .line 98
    :cond_61
    iget v6, p0, Lmiuix/navigator/adapter/CategoryImpl;->mState:I

    .line 100
    if-nez v6, :cond_9a

    .line 102
    new-array v6, v5, [Landroid/view/View;

    .line 104
    aput-object v1, v6, v4

    .line 106
    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 113
    move-result-object v1

    .line 114
    sget-object v6, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 116
    invoke-interface {v1, v6, v3}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 119
    move-result-object v1

    .line 120
    new-array v3, v5, [Lmiuix/animation/base/AnimConfig;

    .line 122
    sget-object v7, Lmiuix/navigator/adapter/CategoryImpl;->HIDE_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 124
    aput-object v7, v3, v4

    .line 126
    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 129
    new-array v1, v5, [Landroid/view/View;

    .line 131
    aput-object v0, v1, v4

    .line 133
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 136
    move-result-object v0

    .line 137
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 140
    move-result-object v0

    .line 141
    invoke-interface {v0, v6, v2}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 144
    move-result-object v0

    .line 145
    new-array v1, v5, [Lmiuix/animation/base/AnimConfig;

    .line 147
    sget-object v2, Lmiuix/navigator/adapter/CategoryImpl;->SHOW_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 149
    aput-object v2, v1, v4

    .line 151
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 154
    goto :goto_d5

    .line 155
    :cond_9a
    if-ne v6, v5, :cond_ba

    .line 157
    new-array v1, v5, [Landroid/view/View;

    .line 159
    aput-object v0, v1, v4

    .line 161
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 164
    move-result-object v0

    .line 165
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 168
    move-result-object v0

    .line 169
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    .line 171
    const/16 v2, 0xb4

    .line 173
    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;

    .line 176
    move-result-object v0

    .line 177
    new-array v1, v5, [Lmiuix/animation/base/AnimConfig;

    .line 179
    sget-object v2, Lmiuix/navigator/adapter/CategoryImpl;->ROTATION_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 181
    aput-object v2, v1, v4

    .line 183
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 186
    goto :goto_d5

    .line 187
    :cond_ba
    new-array v1, v5, [Landroid/view/View;

    .line 189
    aput-object v0, v1, v4

    .line 191
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 194
    move-result-object v0

    .line 195
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 198
    move-result-object v0

    .line 199
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    .line 201
    invoke-interface {v0, v1, v4}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;

    .line 204
    move-result-object v0

    .line 205
    new-array v1, v5, [Lmiuix/animation/base/AnimConfig;

    .line 207
    sget-object v2, Lmiuix/navigator/adapter/CategoryImpl;->ROTATION_CONFIG:Lmiuix/animation/base/AnimConfig;

    .line 209
    aput-object v2, v1, v4

    .line 211
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 214
    :goto_d5
    iput p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mState:I

    .line 216
    return-void

    .line 217
    :cond_d8
    :goto_d8
    iput p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mState:I

    .line 219
    return-void
.end method

.method private animateWidgetToCurrent()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mEmpty:Z

    .line 3
    if-eqz v0, :cond_25

    .line 5
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryImpl;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->hideWhenEmpty()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_25

    .line 19
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryImpl;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->showEmptyCategoryEditWidget()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_25

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lmiuix/navigator/adapter/CategoryImpl;->animateWidgetTo(I)V

    .line 37
    goto :goto_2f

    .line 38
    :cond_25
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    .line 40
    if-eqz v0, :cond_2b

    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    const/4 v0, 0x2

    .line 45
    :goto_2c
    invoke-direct {p0, v0}, Lmiuix/navigator/adapter/CategoryImpl;->animateWidgetTo(I)V

    .line 48
    :goto_2f
    return-void
.end method

.method public static synthetic b(Lmiuix/navigator/adapter/CategoryImpl;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/CategoryImpl;->lambda$setOnCategoryClick$0(Landroid/view/View;)V

    return-void
.end method

.method private bindWidget()V
    .registers 10

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 5
    sget v1, Lmiuix/navigator/R$id;->navigation_item_category_arrow:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 13
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 15
    sget v2, Lmiuix/navigator/R$id;->navigation_item_category_edit:I

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    iget v2, p0, Lmiuix/navigator/adapter/CategoryImpl;->mState:I

    .line 23
    const/high16 v3, 0x3f800000  # 1.0f

    .line 25
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 33
    move-result-object v4

    .line 34
    const/4 v5, 0x2

    .line 35
    const/4 v6, 0x1

    .line 36
    const/4 v7, 0x0

    .line 37
    if-nez v2, :cond_54

    .line 39
    new-array v2, v6, [Landroid/view/View;

    .line 41
    aput-object v0, v2, v7

    .line 43
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 50
    move-result-object v0

    .line 51
    new-array v2, v5, [Ljava/lang/Object;

    .line 53
    sget-object v8, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 55
    aput-object v8, v2, v7

    .line 57
    aput-object v4, v2, v6

    .line 59
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 62
    new-array v0, v6, [Landroid/view/View;

    .line 64
    aput-object v1, v0, v7

    .line 66
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 73
    move-result-object v0

    .line 74
    new-array v2, v5, [Ljava/lang/Object;

    .line 76
    aput-object v8, v2, v7

    .line 78
    aput-object v3, v2, v6

    .line 80
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 83
    goto/16 :goto_d1

    .line 85
    :cond_54
    if-ne v2, v6, :cond_93

    .line 87
    new-array v2, v6, [Landroid/view/View;

    .line 89
    aput-object v0, v2, v7

    .line 91
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 98
    move-result-object v0

    .line 99
    new-array v2, v5, [Ljava/lang/Object;

    .line 101
    sget-object v8, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    .line 103
    aput-object v8, v2, v7

    .line 105
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v8

    .line 109
    aput-object v8, v2, v6

    .line 111
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 114
    move-result-object v0

    .line 115
    new-array v2, v5, [Ljava/lang/Object;

    .line 117
    sget-object v8, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 119
    aput-object v8, v2, v7

    .line 121
    aput-object v3, v2, v6

    .line 123
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 126
    new-array v0, v6, [Landroid/view/View;

    .line 128
    aput-object v1, v0, v7

    .line 130
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 133
    move-result-object v0

    .line 134
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 137
    move-result-object v0

    .line 138
    new-array v2, v5, [Ljava/lang/Object;

    .line 140
    aput-object v8, v2, v7

    .line 142
    aput-object v4, v2, v6

    .line 144
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 147
    goto :goto_d1

    .line 148
    :cond_93
    new-array v2, v6, [Landroid/view/View;

    .line 150
    aput-object v0, v2, v7

    .line 152
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 155
    move-result-object v0

    .line 156
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 159
    move-result-object v0

    .line 160
    new-array v2, v5, [Ljava/lang/Object;

    .line 162
    sget-object v8, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    .line 164
    aput-object v8, v2, v7

    .line 166
    const/16 v8, 0xb4

    .line 168
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    move-result-object v8

    .line 172
    aput-object v8, v2, v6

    .line 174
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 177
    move-result-object v0

    .line 178
    new-array v2, v5, [Ljava/lang/Object;

    .line 180
    sget-object v8, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 182
    aput-object v8, v2, v7

    .line 184
    aput-object v3, v2, v6

    .line 186
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 189
    new-array v0, v6, [Landroid/view/View;

    .line 191
    aput-object v1, v0, v7

    .line 193
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 196
    move-result-object v0

    .line 197
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 200
    move-result-object v0

    .line 201
    new-array v2, v5, [Ljava/lang/Object;

    .line 203
    aput-object v8, v2, v7

    .line 205
    aput-object v4, v2, v6

    .line 207
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 210
    :goto_d1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryImpl;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->isEditable()Z

    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_e5

    .line 224
    new-instance v0, Lmiuix/navigator/adapter/a;

    .line 226
    invoke-direct {v0, p0, v7}, Lmiuix/navigator/adapter/a;-><init>(Lmiuix/navigator/adapter/CategoryImpl;I)V

    .line 229
    goto :goto_e6

    .line 230
    :cond_e5
    const/4 v0, 0x0

    .line 231
    :goto_e6
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    return-void
.end method

.method private isFooterView(I)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    .line 3
    if-eqz v0, :cond_1c

    .line 5
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 7
    if-eqz v0, :cond_1c

    .line 9
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getBaseAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->hasFooterView()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1c

    .line 19
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 21
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getItemCount()I

    .line 24
    move-result v0

    .line 25
    if-le p1, v0, :cond_1c

    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    :goto_1d
    return p1
.end method

.method private synthetic lambda$bindWidget$1(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryImpl;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter;->startEdit()V

    .line 8
    return-void
.end method

.method private synthetic lambda$setOnCategoryClick$0(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-boolean p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    .line 3
    xor-int/lit8 p1, p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/CategoryImpl;->setExpand(Z)V

    .line 8
    return-void
.end method

.method private setExpand(Z)V
    .registers 4

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    .line 3
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 5
    if-eqz p1, :cond_48

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_48

    .line 13
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 15
    if-nez p1, :cond_11

    .line 17
    goto :goto_48

    .line 18
    :cond_11
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 23
    move-result p1

    .line 24
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 26
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getItemCount()I

    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 32
    invoke-virtual {v1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getBaseAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lmiuix/navigator/adapter/CategoryAdapter;->hasFooterView()Z

    .line 39
    move-result v1

    .line 40
    add-int/2addr v1, v0

    .line 41
    if-eqz v1, :cond_45

    .line 43
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    .line 45
    if-eqz v0, :cond_3a

    .line 47
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 49
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 52
    move-result-object v0

    .line 53
    add-int/lit8 p1, p1, 0x1

    .line 55
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 58
    goto :goto_45

    .line 59
    :cond_3a
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 61
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 64
    move-result-object v0

    .line 65
    add-int/lit8 p1, p1, 0x1

    .line 67
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 70
    :cond_45
    :goto_45
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryImpl;->animateWidgetToCurrent()V

    .line 73
    :cond_48
    :goto_48
    return-void
.end method

.method private setGeneral()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 5
    iget-boolean v1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mEmpty:Z

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1a

    .line 11
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryImpl;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->hideWhenEmpty()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1a

    .line 25
    move v1, v2

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v1, v3

    .line 28
    :goto_1b
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryImpl;->getTitle()Ljava/lang/CharSequence;

    .line 31
    move-result-object v4

    .line 32
    if-eqz v4, :cond_25

    .line 34
    if-eqz v1, :cond_24

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v2, v3

    .line 38
    :cond_25
    :goto_25
    if-eqz v2, :cond_33

    .line 40
    const/16 v2, 0x8

    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    move-result-object v2

    .line 49
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    goto :goto_4b

    .line 52
    :cond_33
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    move-result-object v2

    .line 59
    const/4 v3, -0x2

    .line 60
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    const v2, 0x1020016

    .line 65
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroid/widget/TextView;

    .line 71
    iget-object v3, p0, Lmiuix/navigator/adapter/CategoryImpl;->mTitle:Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_4b
    sget v2, Lmiuix/navigator/R$id;->miuix_navigator_category_hide_divider:I

    .line 78
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method private setOnCategoryClick()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 5
    iget-boolean v1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mCollapsable:Z

    .line 7
    if-eqz v1, :cond_f

    .line 9
    new-instance v1, Lmiuix/navigator/adapter/a;

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, p0, v2}, Lmiuix/navigator/adapter/a;-><init>(Lmiuix/navigator/adapter/CategoryImpl;I)V

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v1, 0x0

    .line 17
    :goto_10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    return-void
.end method


# virtual methods
.method public findNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigatorInfoPosition(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)I

    .line 6
    move-result p1

    .line 7
    if-ltz p1, :cond_b

    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, -0x1

    .line 13
    :goto_c
    return p1
.end method

.method public getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "+",
            "Lmiuix/navigator/adapter/CategoryAdapter$Item;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getBaseAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getFooterId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mFooterType:I

    .line 3
    return v0
.end method

.method public getId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mType:I

    .line 3
    return v0
.end method

.method public getItemCount()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1c

    .line 6
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 8
    if-eqz v0, :cond_1c

    .line 10
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getItemCount()I

    .line 13
    move-result v0

    .line 14
    add-int/2addr v1, v0

    .line 15
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 17
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getBaseAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->hasFooterView()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1c

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 29
    :cond_1c
    return v1
.end method

.method public getItemId(I)J
    .registers 4

    .line 1
    if-nez p1, :cond_6

    .line 3
    iget p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mType:I

    .line 5
    int-to-long v0, p1

    .line 6
    return-wide v0

    .line 7
    :cond_6
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/CategoryImpl;->isFooterView(I)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_10

    .line 13
    iget p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mFooterType:I

    .line 15
    int-to-long v0, p1

    .line 16
    return-wide v0

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 19
    add-int/lit8 p1, p1, -0x1

    .line 21
    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getItemId(I)J

    .line 24
    move-result-wide v0

    .line 25
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, -0x2

    .line 4
    return p1

    .line 5
    :cond_4
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/CategoryImpl;->isFooterView(I)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_d

    .line 11
    iget p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mFooterType:I

    .line 13
    return p1

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 16
    add-int/lit8 p1, p1, -0x1

    .line 18
    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getItemViewType(I)I

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mTitle:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public handleBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 4

    .line 1
    if-nez p2, :cond_17

    .line 3
    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 5
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryImpl;->setGeneral()V

    .line 8
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryImpl;->setOnCategoryClick()V

    .line 11
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryImpl;->bindWidget()V

    .line 14
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 16
    sget p2, Lmiuix/navigator/R$id;->miuix_navigator_drag_helper_token:I

    .line 18
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 23
    goto :goto_1e

    .line 24
    :cond_17
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 26
    add-int/lit8 p2, p2, -0x1

    .line 28
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 31
    :goto_1e
    return-void
.end method

.method public isExpanded()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    .line 3
    return v0
.end method

.method public setAdapter(Lmiuix/navigator/adapter/CategoryAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "+",
            "Lmiuix/navigator/adapter/CategoryAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter;->hasFooterView()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    iget v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mFooterType:I

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_c

    .line 12
    goto :goto_14

    .line 13
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    const-string v0, "footerId must be defined for adapter that has a footer view"

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1

    .line 21
    :cond_14
    :goto_14
    new-instance v0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 23
    invoke-direct {v0, p1, p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;Lmiuix/navigator/adapter/CategoryImpl;)V

    .line 26
    iput-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 28
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 30
    if-eqz p1, :cond_2e

    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_2e

    .line 38
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 40
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 47
    :cond_2e
    return-void
.end method

.method public setCollapsable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mCollapsable:Z

    .line 3
    if-nez p1, :cond_d

    .line 5
    iget-boolean p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    .line 7
    if-eqz p1, :cond_9

    .line 9
    goto :goto_d

    .line 10
    :cond_9
    const/4 p1, 0x1

    .line 11
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/CategoryImpl;->setExpand(Z)V

    .line 14
    :cond_d
    :goto_d
    return-void
.end method

.method public setCurrentEmpty(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mEmpty:Z

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    .line 8
    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mEmpty:Z

    .line 10
    :cond_9
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryImpl;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_12

    .line 16
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryImpl;->animateWidgetToCurrent()V

    .line 19
    :cond_12
    return-void
.end method

.method public setNavigatorDragListener(Lmiuix/navigator/draganddrop/NavigatorDragListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->setNavigatorDragListener(Lmiuix/navigator/draganddrop/NavigatorDragListener;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mTitle:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 5
    if-eqz p1, :cond_1b

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_1b

    .line 13
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 28
    :cond_1b
    return-void
.end method
