.class public Lmiuix/navigator/adapter/MenuCategoryAdapter;
.super Lmiuix/navigator/adapter/CategoryAdapter;
.source "MenuCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;,
        Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/navigator/adapter/CategoryAdapter<",
        "Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mImmutableCount:I

.field private final mItemLayoutRes:I

.field private mOriginList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/navigator/adapter/WidgetProvider<",
            "Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;",
            ">;)V"
        }
    .end annotation

    sget v0, Lmiuix/navigator/R$layout;->miuix_navigator_item_label:I

    invoke-direct {p0, p1, v0}, Lmiuix/navigator/adapter/MenuCategoryAdapter;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->menuConfig(Z)Lmiuix/navigator/adapter/CategoryAdapter$MenuEditConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lmiuix/navigator/adapter/MenuCategoryAdapter;-><init>(Ljava/util/List;ILmiuix/navigator/adapter/WidgetProvider;Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILmiuix/navigator/adapter/WidgetProvider;Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;",
            ">;I",
            "Lmiuix/navigator/adapter/WidgetProvider<",
            "Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;",
            ">;",
            "Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Lmiuix/navigator/adapter/CategoryAdapter;-><init>(Ljava/util/List;Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V

    iput p2, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mItemLayoutRes:I

    iput-object p3, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

    return-void
.end method

.method public static synthetic a(Lmiuix/navigator/adapter/MenuCategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/slidingwidget/widget/SlidingButton;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->lambda$onBindNormalView$0(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/slidingwidget/widget/SlidingButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lmiuix/navigator/adapter/MenuCategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->lambda$setupLongClick$4(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public static synthetic c(Lmiuix/navigator/adapter/MenuCategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->lambda$setupRearrangeButton$2(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lmiuix/navigator/adapter/MenuCategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->lambda$setupLongClick$3(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lmiuix/navigator/adapter/MenuCategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/widget/CompoundButton;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->lambda$setupEditWidget$1(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private synthetic lambda$onBindNormalView$0(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/slidingwidget/widget/SlidingButton;Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    if-ltz p1, :cond_2d

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result p3

    if-eqz p3, :cond_22

    if-eqz p2, :cond_2d

    invoke-static {p1}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    goto :goto_2d

    :cond_22
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigator()Lmiuix/navigator/Navigator;

    move-result-object p2

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private synthetic lambda$setupEditWidget$1(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/widget/CompoundButton;Z)V
    .registers 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    if-ltz p1, :cond_1d

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1d

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    invoke-static {p1, p3}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$302(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;Z)Z

    :cond_1d
    return-void
.end method

.method private synthetic lambda$setupLongClick$3(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)Z
    .registers 6

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->hasContextMenu()Z

    move-result p1

    if-eqz p1, :cond_13

    return v2

    :cond_13
    invoke-virtual {p2, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->startEdit()V

    return v1

    :cond_1a
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->allowReorder()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p2, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return v1

    :cond_2b
    return v2
.end method

.method private synthetic lambda$setupLongClick$4(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    invoke-virtual {p0, p2, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->createContextMenu(Landroid/view/ContextMenu;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method

.method private synthetic lambda$setupRearrangeButton$2(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method private setupEditWidget(Lmiuix/slidingwidget/widget/SlidingButton;Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0, p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->isHolderImmutable(Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p3}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Z

    move-result p3

    invoke-virtual {p1, p3}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    new-instance p3, Lmiuix/navigator/adapter/d;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p2, v0}, Lmiuix/navigator/adapter/d;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2d

    :cond_28
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_2d
    return-void
.end method

.method private setupIconView(Landroid/widget/ImageView;Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V
    .registers 4

    invoke-static {p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$100(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$100(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_15

    :cond_e
    invoke-static {p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$200(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_15
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_29

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getShowIconOnEdit()Z

    move-result p2

    if-eqz p2, :cond_23

    goto :goto_25

    :cond_23
    const/16 v0, 0x8

    :goto_25
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2c

    :cond_29
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2c
    return-void
.end method

.method private setupLongClick(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/fileexplorer/adapter/category/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/fileexplorer/adapter/category/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->hasContextMenu()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lmiuix/navigator/adapter/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lmiuix/navigator/adapter/c;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    :cond_20
    return-void
.end method

.method private setupRearrangeButton(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$b0;Z)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->allowReorder()Z

    move-result v0

    if-eqz v0, :cond_20

    if-nez p3, :cond_20

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    new-instance p3, Lmiuix/navigator/adapter/b;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p2, v0}, Lmiuix/navigator/adapter/b;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_29

    :cond_20
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_29
    return-void
.end method

.method private setupWidgetFrame(Landroid/view/ViewGroup;Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->getWidgetProvider()Lmiuix/navigator/adapter/WidgetProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->getWidgetProvider()Lmiuix/navigator/adapter/WidgetProvider;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lmiuix/navigator/adapter/WidgetProvider;->onSetupWidget(Landroid/view/ViewGroup;Ljava/lang/Object;Z)V

    goto :goto_28

    :cond_19
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28

    :cond_23
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_28
    return-void
.end method


# virtual methods
.method public getImmutableCount()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mImmutableCount:I

    return v0
.end method

.method public getWidgetProvider()Lmiuix/navigator/adapter/WidgetProvider;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiuix/navigator/adapter/WidgetProvider<",
            "Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

    return-object v0
.end method

.method public isHolderImmutable(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 6

    invoke-virtual {p0}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->getImmutableCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x1

    if-lez v0, :cond_13

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    if-ge p1, v0, :cond_12

    move v1, v2

    :cond_12
    return v1

    :cond_13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result v3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    sub-int/2addr v3, p1

    if-gt v0, v3, :cond_23

    move v1, v2

    :cond_23
    return v1
.end method

.method public isVisible(I)Z
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    invoke-static {p1}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p1, 0x1

    :goto_1a
    return p1
.end method

.method public onApplyEdit()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mOriginList:Ljava/util/List;

    invoke-super {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->onApplyEdit()V

    return-void
.end method

.method public bridge synthetic onBindNormalView(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/CategoryAdapter$Item;)V
    .registers 3

    check-cast p2, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    invoke-virtual {p0, p1, p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->onBindNormalView(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V

    return-void
.end method

.method public onBindNormalView(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V
    .registers 8

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$000(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0, p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->setupIconView(Landroid/widget/ImageView;Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->setupWidgetFrame(Landroid/view/ViewGroup;Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v2, Lmiuix/navigator/R$id;->miuix_navigator_edit_widget:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-direct {p0, v0, p1, p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->setupEditWidget(Lmiuix/slidingwidget/widget/SlidingButton;Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v3, Lcom/android/fileexplorer/pad/fragment/a;

    const/4 v4, 0x2

    invoke-direct {v3, p0, p1, v0, v4}, Lcom/android/fileexplorer/pad/fragment/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->setupLongClick(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    goto :goto_5f

    :cond_5a
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    :goto_5f
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_85

    :cond_6b
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigator()Lmiuix/navigator/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getCurrentInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object v0

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-eqz v0, :cond_82

    invoke-virtual {p2}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_82

    const/4 v1, 0x1

    :cond_82
    invoke-virtual {v2, v1}, Landroid/view/View;->setActivated(Z)V

    :goto_85
    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->isHolderImmutable(Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    move-result p2

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_95

    if-eqz p2, :cond_95

    const v0, 0x3e99999a  # 0.3f

    goto :goto_97

    :cond_95
    const/high16 v0, 0x3f800000  # 1.0f

    :goto_97
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_a3

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lf1/x;->h(FLandroid/view/View;)V

    goto :goto_a8

    :cond_a3
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_a8
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v1, Lmiuix/navigator/R$id;->rearrange_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->setupRearrangeButton(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v1, 0x1020018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v3

    invoke-virtual {v3}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->showEditWidget()Z

    move-result v3

    if-eqz v3, :cond_45

    new-instance v3, Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v3, p1}, Lmiuix/slidingwidget/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    sget p1, Lmiuix/navigator/R$id;->miuix_navigator_edit_widget:I

    invoke-virtual {v3, p1}, Landroid/view/View;->setId(I)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    const/16 p1, 0x8

    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_45
    sget p1, Lmiuix/navigator/R$id;->rearrange_button:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/navigator/R$attr;->navigatorRearrangeIcon:I

    invoke-static {v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

    if-eqz p1, :cond_61

    invoke-interface {p1, v1}, Lmiuix/navigator/adapter/WidgetProvider;->onPrepareWidget(Landroid/view/ViewGroup;)V

    :cond_61
    new-instance p1, Lmiuix/navigator/adapter/Holder;

    invoke-direct {p1, v0}, Lmiuix/navigator/adapter/Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onFinishEdit()V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mOriginList:Ljava/util/List;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_2d

    iget-object v1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mOriginList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;->access$400(Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;)Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;->access$400(Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;)Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    move-result-object v2

    invoke-static {v1}, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;->access$500(Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;)Z

    move-result v1

    invoke-static {v2, v1}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$302(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;Z)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mOriginList:Ljava/util/List;

    :cond_30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-super {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->onFinishEdit()V

    return-void
.end method

.method public onStartEdit()V
    .registers 6

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mOriginList:Ljava/util/List;

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_29

    iget-object v2, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mOriginList:Ljava/util/List;

    new-instance v3, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    invoke-direct {v3, v4}, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;-><init>(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_29
    invoke-super {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->onStartEdit()V

    return-void
.end method

.method public setImmutableCount(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mImmutableCount:I

    return-void
.end method
