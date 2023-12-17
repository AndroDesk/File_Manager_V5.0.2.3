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

    .line 1
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

    .line 2
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

    .line 3
    invoke-direct {p0, p1, p4}, Lmiuix/navigator/adapter/CategoryAdapter;-><init>(Ljava/util/List;Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V

    .line 4
    iput p2, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mItemLayoutRes:I

    .line 5
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

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_2d

    .line 7
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 10
    move-result-object p3

    .line 11
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    .line 17
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    .line 20
    move-result p3

    .line 21
    if-eqz p3, :cond_22

    .line 23
    if-eqz p2, :cond_2d

    .line 25
    invoke-static {p1}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Z

    .line 28
    move-result p1

    .line 29
    xor-int/lit8 p1, p1, 0x1

    .line 31
    invoke-virtual {p2, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 34
    goto :goto_2d

    .line 35
    :cond_22
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigator()Lmiuix/navigator/Navigator;

    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p2, p1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 46
    :cond_2d
    :goto_2d
    return-void
.end method

.method private synthetic lambda$setupEditWidget$1(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_1d

    .line 7
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 14
    move-result p2

    .line 15
    if-ge p1, p2, :cond_1d

    .line 17
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 20
    move-result-object p2

    .line 21
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    .line 27
    invoke-static {p1, p3}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$302(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;Z)Z

    .line 30
    :cond_1d
    return-void
.end method

.method private synthetic lambda$setupLongClick$3(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_1a

    .line 9
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->hasContextMenu()Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_13

    .line 19
    return v2

    .line 20
    :cond_13
    invoke-virtual {p2, v2}, Landroid/view/View;->setPressed(Z)V

    .line 23
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->startEdit()V

    .line 26
    return v1

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->allowReorder()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2b

    .line 37
    invoke-virtual {p2, v2}, Landroid/view/View;->setPressed(Z)V

    .line 40
    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 43
    return v1

    .line 44
    :cond_2b
    return v2
.end method

.method private synthetic lambda$setupLongClick$4(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    .line 1
    invoke-virtual {p0, p2, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->createContextMenu(Landroid/view/ContextMenu;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$setupRearrangeButton$2(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_9

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 10
    :cond_9
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method private setupEditWidget(Lmiuix/slidingwidget/widget/SlidingButton;Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V
    .registers 5

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 8
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_28

    .line 14
    invoke-virtual {p0, p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->isHolderImmutable(Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_28

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    invoke-static {p3}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Z

    .line 27
    move-result p3

    .line 28
    invoke-virtual {p1, p3}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 31
    new-instance p3, Lmiuix/navigator/adapter/d;

    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-direct {p3, p0, p2, v0}, Lmiuix/navigator/adapter/d;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 37
    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    const/16 p2, 0x8

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :goto_2d
    return-void
.end method

.method private setupIconView(Landroid/widget/ImageView;Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V
    .registers 4

    .line 1
    invoke-static {p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$100(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-static {p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$100(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    goto :goto_15

    .line 15
    :cond_e
    invoke-static {p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$200(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)I

    .line 18
    move-result p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    :goto_15
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    .line 25
    move-result p2

    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz p2, :cond_29

    .line 29
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getShowIconOnEdit()Z

    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_23

    .line 35
    goto :goto_25

    .line 36
    :cond_23
    const/16 v0, 0x8

    .line 38
    :goto_25
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    goto :goto_2c

    .line 42
    :cond_29
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    :goto_2c
    return-void
.end method

.method private setupLongClick(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 5

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    new-instance v1, Lcom/android/fileexplorer/adapter/category/a;

    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/android/fileexplorer/adapter/category/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 12
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->hasContextMenu()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_20

    .line 22
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 24
    new-instance v1, Lmiuix/navigator/adapter/c;

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-direct {v1, p0, p1, v2}, Lmiuix/navigator/adapter/c;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 33
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

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_20

    .line 7
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->allowReorder()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_20

    .line 17
    if-nez p3, :cond_20

    .line 19
    const/4 p3, 0x0

    .line 20
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    new-instance p3, Lmiuix/navigator/adapter/b;

    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-direct {p3, p0, p2, v0}, Lmiuix/navigator/adapter/b;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 29
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    goto :goto_29

    .line 33
    :cond_20
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 37
    const/16 p2, 0x8

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    :goto_29
    return-void
.end method

.method private setupWidgetFrame(Landroid/view/ViewGroup;Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V
    .registers 5

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->getWidgetProvider()Lmiuix/navigator/adapter/WidgetProvider;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_19

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-virtual {p0}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->getWidgetProvider()Lmiuix/navigator/adapter/WidgetProvider;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    .line 21
    move-result v1

    .line 22
    invoke-interface {v0, p1, p2, v1}, Lmiuix/navigator/adapter/WidgetProvider;->onSetupWidget(Landroid/view/ViewGroup;Ljava/lang/Object;Z)V

    .line 25
    goto :goto_28

    .line 26
    :cond_19
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_23

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    goto :goto_28

    .line 36
    :cond_23
    const/16 p2, 0x8

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :goto_28
    return-void
.end method


# virtual methods
.method public getImmutableCount()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mImmutableCount:I

    .line 3
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

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

    .line 3
    return-object v0
.end method

.method public isHolderImmutable(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->getImmutableCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    const/4 v2, 0x1

    .line 10
    if-lez v0, :cond_13

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 15
    move-result p1

    .line 16
    if-ge p1, v0, :cond_12

    .line 18
    move v1, v2

    .line 19
    :cond_12
    return v1

    .line 20
    :cond_13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 23
    move-result v3

    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 31
    move-result p1

    .line 32
    sub-int/2addr v3, p1

    .line 33
    if-gt v0, v3, :cond_23

    .line 35
    move v1, v2

    .line 36
    :cond_23
    return v1
.end method

.method public isVisible(I)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_19

    .line 7
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    .line 17
    invoke-static {p1}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_17

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    :goto_19
    const/4 p1, 0x1

    .line 27
    :goto_1a
    return p1
.end method

.method public onApplyEdit()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mOriginList:Ljava/util/List;

    .line 4
    invoke-super {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->onApplyEdit()V

    .line 7
    return-void
.end method

.method public bridge synthetic onBindNormalView(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/CategoryAdapter$Item;)V
    .registers 3

    .line 1
    check-cast p2, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    invoke-virtual {p0, p1, p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->onBindNormalView(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V

    return-void
.end method

.method public onBindNormalView(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V
    .registers 8

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    invoke-static {p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$000(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6
    invoke-direct {p0, v0, p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->setupIconView(Landroid/widget/ImageView;Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V

    .line 7
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    invoke-direct {p0, v0, p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->setupWidgetFrame(Landroid/view/ViewGroup;Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V

    .line 9
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v2, Lmiuix/navigator/R$id;->miuix_navigator_edit_widget:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    .line 10
    invoke-direct {p0, v0, p1, p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->setupEditWidget(Lmiuix/slidingwidget/widget/SlidingButton;Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V

    .line 11
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v3, Lcom/android/fileexplorer/pad/fragment/a;

    const/4 v4, 0x2

    invoke-direct {v3, p0, p1, v0, v4}, Lcom/android/fileexplorer/pad/fragment/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 13
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->setupLongClick(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    goto :goto_5f

    .line 14
    :cond_5a
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 15
    :goto_5f
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 16
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_85

    .line 17
    :cond_6b
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigator()Lmiuix/navigator/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getCurrentInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object v0

    .line 18
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-eqz v0, :cond_82

    .line 19
    invoke-virtual {p2}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_82

    const/4 v1, 0x1

    .line 20
    :cond_82
    invoke-virtual {v2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 21
    :goto_85
    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->isHolderImmutable(Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    move-result p2

    .line 22
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_95

    if-eqz p2, :cond_95

    const v0, 0x3e99999a  # 0.3f

    goto :goto_97

    :cond_95
    const/high16 v0, 0x3f800000  # 1.0f

    .line 23
    :goto_97
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_a3

    .line 24
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lf1/x;->h(FLandroid/view/View;)V

    goto :goto_a8

    .line 25
    :cond_a3
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 26
    :goto_a8
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v1, Lmiuix/navigator/R$id;->rearrange_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 27
    invoke-direct {p0, v0, p1, p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->setupRearrangeButton(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mItemLayoutRes:I

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 23
    const v1, 0x1020018

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/widget/FrameLayout;

    .line 32
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->showEditWidget()Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_45

    .line 42
    new-instance v3, Lmiuix/slidingwidget/widget/SlidingButton;

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v3, p1}, Lmiuix/slidingwidget/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    .line 51
    sget p1, Lmiuix/navigator/R$id;->miuix_navigator_edit_widget:I

    .line 53
    invoke-virtual {v3, p1}, Landroid/view/View;->setId(I)V

    .line 56
    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 59
    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 62
    const/16 p1, 0x8

    .line 64
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    :cond_45
    sget p1, Lmiuix/navigator/R$id;->rearrange_button:I

    .line 72
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroid/widget/ImageView;

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    move-result-object v2

    .line 82
    sget v3, Lmiuix/navigator/R$attr;->navigatorRearrangeIcon:I

    .line 84
    invoke-static {v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    .line 87
    move-result v2

    .line 88
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object p1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

    .line 93
    if-eqz p1, :cond_61

    .line 95
    invoke-interface {p1, v1}, Lmiuix/navigator/adapter/WidgetProvider;->onPrepareWidget(Landroid/view/ViewGroup;)V

    .line 98
    :cond_61
    new-instance p1, Lmiuix/navigator/adapter/Holder;

    .line 100
    invoke-direct {p1, v0}, Lmiuix/navigator/adapter/Holder;-><init>(Landroid/view/View;)V

    .line 103
    return-object p1
.end method

.method public onFinishEdit()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mOriginList:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_30

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 11
    :goto_a
    if-ltz v0, :cond_2d

    .line 13
    iget-object v1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mOriginList:Ljava/util/List;

    .line 15
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;

    .line 21
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1}, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;->access$400(Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;)Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v1}, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;->access$400(Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;)Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1}, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;->access$500(Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;)Z

    .line 39
    move-result v1

    .line 40
    invoke-static {v2, v1}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$302(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;Z)Z

    .line 43
    add-int/lit8 v0, v0, -0x1

    .line 45
    goto :goto_a

    .line 46
    :cond_2d
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mOriginList:Ljava/util/List;

    .line 49
    :cond_30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 52
    invoke-super {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->onFinishEdit()V

    .line 55
    return-void
.end method

.method public onStartEdit()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    iput-object v1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mOriginList:Ljava/util/List;

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_10
    if-ge v1, v0, :cond_29

    .line 19
    iget-object v2, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mOriginList:Ljava/util/List;

    .line 21
    new-instance v3, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;

    .line 23
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 26
    move-result-object v4

    .line 27
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    .line 33
    invoke-direct {v3, v4}, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;-><init>(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V

    .line 36
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_10

    .line 42
    :cond_29
    invoke-super {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->onStartEdit()V

    .line 45
    return-void
.end method

.method public setImmutableCount(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter;->mImmutableCount:I

    .line 3
    return-void
.end method
