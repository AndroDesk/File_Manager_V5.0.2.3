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

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_44

    const/4 v2, -0x2

    invoke-static {v2, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/navigator/adapter/CategoryImpl;->ROTATION_CONFIG:Lmiuix/animation/base/AnimConfig;

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/high16 v3, 0x42c80000  # 100.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/navigator/adapter/CategoryImpl;->HIDE_CONFIG:Lmiuix/animation/base/AnimConfig;

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    const/high16 v2, 0x43960000  # 300.0f

    aput v2, v1, v4

    invoke-static {v3, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/navigator/adapter/CategoryImpl;->SHOW_CONFIG:Lmiuix/animation/base/AnimConfig;

    return-void

    :array_44
    .array-data 4
        0x3f733333  # 0.95f
        0x3eb33333  # 0.35f
    .end array-data
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lmiuix/navigator/Navigator$Category;-><init>()V

    iput p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mType:I

    iput p2, p0, Lmiuix/navigator/adapter/CategoryImpl;->mFooterType:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mCollapsable:Z

    iput p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mState:I

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

    iget v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mState:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz v0, :cond_d8

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_11

    goto/16 :goto_d8

    :cond_11
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v1, Lmiuix/navigator/R$id;->navigation_item_category_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v2, Lmiuix/navigator/R$id;->navigation_item_category_edit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_61

    new-array v6, v5, [Landroid/view/View;

    aput-object v0, v6, v4

    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v6, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v6, v3}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v3, v5, [Lmiuix/animation/base/AnimConfig;

    sget-object v7, Lmiuix/navigator/adapter/CategoryImpl;->HIDE_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v7, v3, v4

    invoke-interface {v0, v3}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array v0, v5, [Landroid/view/View;

    aput-object v1, v0, v4

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, v6, v2}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v1, v5, [Lmiuix/animation/base/AnimConfig;

    sget-object v2, Lmiuix/navigator/adapter/CategoryImpl;->SHOW_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_d5

    :cond_61
    iget v6, p0, Lmiuix/navigator/adapter/CategoryImpl;->mState:I

    if-nez v6, :cond_9a

    new-array v6, v5, [Landroid/view/View;

    aput-object v1, v6, v4

    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    sget-object v6, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v1, v6, v3}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-array v3, v5, [Lmiuix/animation/base/AnimConfig;

    sget-object v7, Lmiuix/navigator/adapter/CategoryImpl;->HIDE_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v7, v3, v4

    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array v1, v5, [Landroid/view/View;

    aput-object v0, v1, v4

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, v6, v2}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v1, v5, [Lmiuix/animation/base/AnimConfig;

    sget-object v2, Lmiuix/navigator/adapter/CategoryImpl;->SHOW_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_d5

    :cond_9a
    if-ne v6, v5, :cond_ba

    new-array v1, v5, [Landroid/view/View;

    aput-object v0, v1, v4

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    const/16 v2, 0xb4

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v1, v5, [Lmiuix/animation/base/AnimConfig;

    sget-object v2, Lmiuix/navigator/adapter/CategoryImpl;->ROTATION_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_d5

    :cond_ba
    new-array v1, v5, [Landroid/view/View;

    aput-object v0, v1, v4

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    invoke-interface {v0, v1, v4}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v1, v5, [Lmiuix/animation/base/AnimConfig;

    sget-object v2, Lmiuix/navigator/adapter/CategoryImpl;->ROTATION_CONFIG:Lmiuix/animation/base/AnimConfig;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_d5
    iput p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mState:I

    return-void

    :cond_d8
    :goto_d8
    iput p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mState:I

    return-void
.end method

.method private animateWidgetToCurrent()V
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mEmpty:Z

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryImpl;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->hideWhenEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryImpl;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->showEmptyCategoryEditWidget()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/navigator/adapter/CategoryImpl;->animateWidgetTo(I)V

    goto :goto_2f

    :cond_25
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x2

    :goto_2c
    invoke-direct {p0, v0}, Lmiuix/navigator/adapter/CategoryImpl;->animateWidgetTo(I)V

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

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v1, Lmiuix/navigator/R$id;->navigation_item_category_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v2, Lmiuix/navigator/R$id;->navigation_item_category_edit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lmiuix/navigator/adapter/CategoryImpl;->mState:I

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_54

    new-array v2, v6, [Landroid/view/View;

    aput-object v0, v2, v7

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v8, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v8, v2, v7

    aput-object v4, v2, v6

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array v0, v6, [Landroid/view/View;

    aput-object v1, v0, v7

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v8, v2, v7

    aput-object v3, v2, v6

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto/16 :goto_d1

    :cond_54
    if-ne v2, v6, :cond_93

    new-array v2, v6, [Landroid/view/View;

    aput-object v0, v2, v7

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v8, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    aput-object v8, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v6

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v8, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v8, v2, v7

    aput-object v3, v2, v6

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array v0, v6, [Landroid/view/View;

    aput-object v1, v0, v7

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v8, v2, v7

    aput-object v4, v2, v6

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_d1

    :cond_93
    new-array v2, v6, [Landroid/view/View;

    aput-object v0, v2, v7

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v8, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    aput-object v8, v2, v7

    const/16 v8, 0xb4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v6

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v8, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v8, v2, v7

    aput-object v3, v2, v6

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array v0, v6, [Landroid/view/View;

    aput-object v1, v0, v7

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v8, v2, v7

    aput-object v4, v2, v6

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :goto_d1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryImpl;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_e5

    new-instance v0, Lmiuix/navigator/adapter/a;

    invoke-direct {v0, p0, v7}, Lmiuix/navigator/adapter/a;-><init>(Lmiuix/navigator/adapter/CategoryImpl;I)V

    goto :goto_e6

    :cond_e5
    const/4 v0, 0x0

    :goto_e6
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isFooterView(I)Z
    .registers 3

    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getBaseAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->hasFooterView()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getItemCount()I

    move-result v0

    if-le p1, v0, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method private synthetic lambda$bindWidget$1(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryImpl;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter;->startEdit()V

    return-void
.end method

.method private synthetic lambda$setOnCategoryClick$0(Landroid/view/View;)V
    .registers 2

    iget-boolean p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/CategoryImpl;->setExpand(Z)V

    return-void
.end method

.method private setExpand(Z)V
    .registers 4

    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz p1, :cond_48

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    if-nez p1, :cond_11

    goto :goto_48

    :cond_11
    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {v1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getBaseAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/navigator/adapter/CategoryAdapter;->hasFooterView()Z

    move-result v1

    add-int/2addr v1, v0

    if-eqz v1, :cond_45

    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_45

    :cond_3a
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_45
    :goto_45
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryImpl;->animateWidgetToCurrent()V

    :cond_48
    :goto_48
    return-void
.end method

.method private setGeneral()V
    .registers 6

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-boolean v1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mEmpty:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryImpl;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->hideWhenEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v2

    goto :goto_1b

    :cond_1a
    move v1, v3

    :goto_1b
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_25

    if-eqz v1, :cond_24

    goto :goto_25

    :cond_24
    move v2, v3

    :cond_25
    :goto_25
    if-eqz v2, :cond_33

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4b

    :cond_33
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lmiuix/navigator/adapter/CategoryImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4b
    sget v2, Lmiuix/navigator/R$id;->miuix_navigator_category_hide_divider:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private setOnCategoryClick()V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-boolean v1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mCollapsable:Z

    if-eqz v1, :cond_f

    new-instance v1, Lmiuix/navigator/adapter/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lmiuix/navigator/adapter/a;-><init>(Lmiuix/navigator/adapter/CategoryImpl;I)V

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public findNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)I
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigatorInfoPosition(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)I

    move-result p1

    if-ltz p1, :cond_b

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, -0x1

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

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getBaseAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getFooterId()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mFooterType:I

    return v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mType:I

    return v0
.end method

.method public getItemCount()I
    .registers 3

    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getItemCount()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getBaseAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->hasFooterView()Z

    move-result v0

    if-eqz v0, :cond_1c

    add-int/lit8 v1, v1, 0x1

    :cond_1c
    return v1
.end method

.method public getItemId(I)J
    .registers 4

    if-nez p1, :cond_6

    iget p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mType:I

    int-to-long v0, p1

    return-wide v0

    :cond_6
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/CategoryImpl;->isFooterView(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mFooterType:I

    int-to-long v0, p1

    return-wide v0

    :cond_10
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, -0x2

    return p1

    :cond_4
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/CategoryImpl;->isFooterView(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mFooterType:I

    return p1

    :cond_d
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public handleBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 4

    if-nez p2, :cond_17

    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryImpl;->setGeneral()V

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryImpl;->setOnCategoryClick()V

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryImpl;->bindWidget()V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget p2, Lmiuix/navigator/R$id;->miuix_navigator_drag_helper_token:I

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1e

    :cond_17
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    :goto_1e
    return-void
.end method

.method public isExpanded()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

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

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter;->hasFooterView()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mFooterType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    goto :goto_14

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "footerId must be defined for adapter that has a footer view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_14
    new-instance v0, Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-direct {v0, p1, p0}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;Lmiuix/navigator/adapter/CategoryImpl;)V

    iput-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2e
    return-void
.end method

.method public setCollapsable(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mCollapsable:Z

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    if-eqz p1, :cond_9

    goto :goto_d

    :cond_9
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/CategoryImpl;->setExpand(Z)V

    :cond_d
    :goto_d
    return-void
.end method

.method public setCurrentEmpty(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mEmpty:Z

    if-eq v0, p1, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mExpanded:Z

    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mEmpty:Z

    :cond_9
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryImpl;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryImpl;->animateWidgetToCurrent()V

    :cond_12
    return-void
.end method

.method public setNavigatorDragListener(Lmiuix/navigator/draganddrop/NavigatorDragListener;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->setNavigatorDragListener(Lmiuix/navigator/draganddrop/NavigatorDragListener;)V

    :cond_7
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mTitle:Ljava/lang/CharSequence;

    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1b
    return-void
.end method
