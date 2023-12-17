.class public Lmiuix/navigator/adapter/ListCategoryAdapter;
.super Lmiuix/navigator/adapter/CategoryAdapter;
.source "ListCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;,
        Lmiuix/navigator/adapter/ListCategoryAdapter$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/navigator/adapter/CategoryAdapter<",
        "Lmiuix/navigator/adapter/ListCategoryAdapter$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItemLayoutRes:I

.field private final mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/navigator/adapter/WidgetProvider<",
            "Lmiuix/navigator/adapter/ListCategoryAdapter$Item;",
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
            "Lmiuix/navigator/adapter/ListCategoryAdapter$Item;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->listConfig(Z)Lmiuix/navigator/adapter/CategoryAdapter$ListEditConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiuix/navigator/adapter/ListCategoryAdapter;-><init>(Ljava/util/List;Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/navigator/adapter/ListCategoryAdapter$Item;",
            ">;I",
            "Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lmiuix/navigator/adapter/ListCategoryAdapter;-><init>(Ljava/util/List;ILmiuix/navigator/adapter/WidgetProvider;Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILmiuix/navigator/adapter/WidgetProvider;Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/navigator/adapter/ListCategoryAdapter$Item;",
            ">;I",
            "Lmiuix/navigator/adapter/WidgetProvider<",
            "Lmiuix/navigator/adapter/ListCategoryAdapter$Item;",
            ">;",
            "Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Lmiuix/navigator/adapter/CategoryAdapter;-><init>(Ljava/util/List;Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V

    iput p2, p0, Lmiuix/navigator/adapter/ListCategoryAdapter;->mItemLayoutRes:I

    iput-object p3, p0, Lmiuix/navigator/adapter/ListCategoryAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/navigator/adapter/ListCategoryAdapter$Item;",
            ">;",
            "Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;",
            ")V"
        }
    .end annotation

    sget v0, Lmiuix/navigator/R$layout;->miuix_navigator_item_label:I

    invoke-direct {p0, p1, v0, p2}, Lmiuix/navigator/adapter/ListCategoryAdapter;-><init>(Ljava/util/List;ILmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V

    return-void
.end method

.method public static synthetic a(Lmiuix/navigator/adapter/ListCategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/navigator/adapter/ListCategoryAdapter;->lambda$setupLongClick$4(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public static synthetic b(Lmiuix/navigator/adapter/ListCategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/widget/CompoundButton;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/adapter/ListCategoryAdapter;->lambda$setupEditWidget$1(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic c(Lmiuix/navigator/adapter/ListCategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/adapter/ListCategoryAdapter;->lambda$setupLongClick$3(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lmiuix/navigator/adapter/ListCategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/adapter/ListCategoryAdapter;->lambda$setupRearrangeButton$2(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lmiuix/navigator/adapter/ListCategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/adapter/ListCategoryAdapter;->lambda$onBindNormalView$0(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method private getSelection()[I
    .registers 6

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v0, :cond_2b

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    invoke-static {v4}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [I

    :goto_31
    if-ge v2, v0, :cond_42

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_42
    return-object v3
.end method

.method private synthetic lambda$onBindNormalView$0(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_38

    if-ge p1, p3, :cond_38

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result p3

    if-eqz p3, :cond_2d

    if-eqz p2, :cond_38

    invoke-static {p1}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_38

    :cond_2d
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigator()Lmiuix/navigator/Navigator;

    move-result-object p2

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    :cond_38
    :goto_38
    return-void
.end method

.method private synthetic lambda$setupEditWidget$1(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/widget/CompoundButton;Z)V
    .registers 5

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    invoke-static {p1, p3}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$302(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;Z)Z

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    invoke-static {v0}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Z

    move-result v0

    add-int/2addr p3, v0

    goto :goto_1b

    :cond_2d
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p3, p1, :cond_38

    const/4 p2, 0x1

    :cond_38
    invoke-virtual {p0, p2, p3}, Lmiuix/navigator/adapter/ListCategoryAdapter;->notifyCheckStateChanged(ZI)V

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

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->hasContextMenu()Z

    move-result v0

    if-eqz v0, :cond_13

    return v2

    :cond_13
    invoke-virtual {p2, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/ListCategoryAdapter;->startEdit(Landroidx/recyclerview/widget/RecyclerView$b0;)V

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

.method private setupEditWidget(Landroid/widget/CheckBox;Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p3}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance p3, Lmiuix/navigator/adapter/d;

    invoke-direct {p3, p0, p2, v0}, Lmiuix/navigator/adapter/d;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_26

    :cond_21
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_26
    return-void
.end method

.method private setupIconView(Landroid/widget/ImageView;Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)V
    .registers 4

    invoke-static {p2}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$100(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {p2}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$100(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_15

    :cond_e
    invoke-static {p2}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$200(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)I

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

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/fileexplorer/adapter/category/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->hasContextMenu()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lmiuix/navigator/adapter/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lmiuix/navigator/adapter/c;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_2d

    :cond_27
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    :goto_2d
    return-void
.end method

.method private setupRearrangeButton(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->allowReorder()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lmiuix/navigator/adapter/b;

    invoke-direct {v1, p0, p2, v0}, Lmiuix/navigator/adapter/b;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_26

    :cond_1d
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_26
    return-void
.end method

.method private setupWidgetFrame(Landroid/view/ViewGroup;Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lmiuix/navigator/adapter/ListCategoryAdapter;->getWidgetProvider()Lmiuix/navigator/adapter/WidgetProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lmiuix/navigator/adapter/ListCategoryAdapter;->getWidgetProvider()Lmiuix/navigator/adapter/WidgetProvider;

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

.method private startEdit(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 5

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    invoke-super {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->startEdit()V

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_26

    if-ge p1, v0, :cond_26

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$302(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;Z)Z

    if-ne v0, v2, :cond_22

    move v1, v2

    :cond_22
    invoke-virtual {p0, v1, v2}, Lmiuix/navigator/adapter/ListCategoryAdapter;->notifyCheckStateChanged(ZI)V

    goto :goto_29

    :cond_26
    invoke-virtual {p0, v1, v1}, Lmiuix/navigator/adapter/ListCategoryAdapter;->notifyCheckStateChanged(ZI)V

    :goto_29
    return-void
.end method


# virtual methods
.method public dispatchContextAction(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    const/4 v0, -0x3

    if-ne p2, v0, :cond_7

    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/ListCategoryAdapter;->startEdit(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void

    :cond_7
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    move-result-object v0

    instance-of v0, v0, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;

    if-nez v0, :cond_13

    invoke-super {p0, p1, p2}, Lmiuix/navigator/adapter/CategoryAdapter;->dispatchContextAction(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    return-void

    :cond_13
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    aput p1, v0, v1

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    move-result-object p1

    check-cast p1, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;

    invoke-interface {p1, p0, p2, v0}, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;->onEditAction(Lmiuix/navigator/adapter/CategoryAdapter;I[I)Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2c
    return-void
.end method

.method public dispatchEditAction(I)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_34

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    invoke-static {v2, v0}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$302(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;Z)Z

    goto :goto_d

    :cond_1d
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lmiuix/navigator/adapter/ListCategoryAdapter;->notifyCheckStateChanged(ZI)V

    return-void

    :cond_34
    const/4 v2, -0x2

    if-ne p1, v2, :cond_5e

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    invoke-static {v0, v1}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$302(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;Z)Z

    goto :goto_3f

    :cond_4f
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    invoke-virtual {p0, v1, v1}, Lmiuix/navigator/adapter/ListCategoryAdapter;->notifyCheckStateChanged(ZI)V

    return-void

    :cond_5e
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    move-result-object v2

    if-eqz v2, :cond_80

    instance-of v2, v2, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;

    if-eqz v2, :cond_77

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    move-result-object v2

    check-cast v2, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;

    invoke-direct {p0}, Lmiuix/navigator/adapter/ListCategoryAdapter;->getSelection()[I

    move-result-object v3

    invoke-interface {v2, p0, p1, v3}, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;->onEditAction(Lmiuix/navigator/adapter/CategoryAdapter;I[I)Z

    move-result p1

    goto :goto_81

    :cond_77
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter$EditListener;->onEditAction(Lmiuix/navigator/adapter/CategoryAdapter;I)Z

    move-result p1

    goto :goto_81

    :cond_80
    move p1, v1

    :goto_81
    if-nez p1, :cond_84

    return-void

    :cond_84
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v2, v1

    move v3, v2

    :goto_8e
    if-ge v2, p1, :cond_a5

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    invoke-static {v4}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Z

    move-result v4

    if-eqz v4, :cond_a2

    add-int/lit8 v3, v3, 0x1

    :cond_a2
    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    :cond_a5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-ne v3, p1, :cond_ad

    if-lez p1, :cond_ad

    goto :goto_ae

    :cond_ad
    move v0, v1

    :goto_ae
    invoke-virtual {p0, v0, v3}, Lmiuix/navigator/adapter/ListCategoryAdapter;->notifyCheckStateChanged(ZI)V

    return-void
.end method

.method public dispatchSelectionChanged(Landroid/view/Menu;)V
    .registers 4

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    move-result-object v0

    instance-of v0, v0, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;

    invoke-direct {p0}, Lmiuix/navigator/adapter/ListCategoryAdapter;->getSelection()[I

    move-result-object v1

    invoke-interface {v0, p0, v1, p1}, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;->onSelectionChanged(Lmiuix/navigator/adapter/CategoryAdapter;[ILandroid/view/Menu;)V

    :cond_15
    return-void
.end method

.method public getWidgetProvider()Lmiuix/navigator/adapter/WidgetProvider;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiuix/navigator/adapter/WidgetProvider<",
            "Lmiuix/navigator/adapter/ListCategoryAdapter$Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/adapter/ListCategoryAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

    return-object v0
.end method

.method public isVisible(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public final notifyCheckStateChanged(ZI)V
    .registers 4

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/adapter/NavigationAdapter;->onCheckStateChanged(ZI)V

    return-void
.end method

.method public bridge synthetic onBindNormalView(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/CategoryAdapter$Item;)V
    .registers 3

    check-cast p2, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    invoke-virtual {p0, p1, p2}, Lmiuix/navigator/adapter/ListCategoryAdapter;->onBindNormalView(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)V

    return-void
.end method

.method public onBindNormalView(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)V
    .registers 8

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$000(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0, p2}, Lmiuix/navigator/adapter/ListCategoryAdapter;->setupIconView(Landroid/widget/ImageView;Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lmiuix/navigator/adapter/ListCategoryAdapter;->setupWidgetFrame(Landroid/view/ViewGroup;Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v2, Lmiuix/navigator/R$id;->miuix_navigator_edit_widget:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-direct {p0, v0, p1, p2}, Lmiuix/navigator/adapter/ListCategoryAdapter;->setupEditWidget(Landroid/widget/CheckBox;Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v3, Lcom/android/fileexplorer/pad/fragment/a;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p1, v0, v4}, Lcom/android/fileexplorer/pad/fragment/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/ListCategoryAdapter;->setupLongClick(Landroidx/recyclerview/widget/RecyclerView$b0;)V

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

    move v1, v4

    :cond_82
    invoke-virtual {v2, v1}, Landroid/view/View;->setActivated(Z)V

    :goto_85
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v0, Lmiuix/navigator/R$id;->rearrange_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lmiuix/navigator/adapter/ListCategoryAdapter;->setupRearrangeButton(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiuix/navigator/adapter/ListCategoryAdapter;->mItemLayoutRes:I

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

    new-instance v3, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

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

    iget-object p1, p0, Lmiuix/navigator/adapter/ListCategoryAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

    if-eqz p1, :cond_61

    invoke-interface {p1, v1}, Lmiuix/navigator/adapter/WidgetProvider;->onPrepareWidget(Landroid/view/ViewGroup;)V

    :cond_61
    new-instance p1, Lmiuix/navigator/adapter/Holder;

    invoke-direct {p1, v0}, Lmiuix/navigator/adapter/Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onStartEdit()V
    .registers 4

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$302(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;Z)Z

    goto :goto_8

    :cond_19
    invoke-super {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->onStartEdit()V

    return-void
.end method
