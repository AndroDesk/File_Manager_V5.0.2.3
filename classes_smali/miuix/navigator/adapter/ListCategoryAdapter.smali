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

    .line 1
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

    .line 3
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

    .line 4
    invoke-direct {p0, p1, p4}, Lmiuix/navigator/adapter/CategoryAdapter;-><init>(Ljava/util/List;Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V

    .line 5
    iput p2, p0, Lmiuix/navigator/adapter/ListCategoryAdapter;->mItemLayoutRes:I

    .line 6
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

    .line 2
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
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_f
    if-ge v3, v0, :cond_2b

    .line 18
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 21
    move-result-object v4

    .line 22
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    .line 28
    invoke-static {v4}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Z

    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_28

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_28
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_f

    .line 44
    :cond_2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 47
    move-result v0

    .line 48
    new-array v3, v0, [I

    .line 50
    :goto_31
    if-ge v2, v0, :cond_42

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Ljava/lang/Integer;

    .line 58
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 61
    move-result v4

    .line 62
    aput v4, v3, v2

    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 66
    goto :goto_31

    .line 67
    :cond_42
    return-object v3
.end method

.method private synthetic lambda$onBindNormalView$0(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 8
    move-result-object p3

    .line 9
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 12
    move-result p3

    .line 13
    const/4 v0, -0x1

    .line 14
    if-eq p1, v0, :cond_38

    .line 16
    if-ge p1, p3, :cond_38

    .line 18
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 21
    move-result-object p3

    .line 22
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    .line 28
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    .line 31
    move-result p3

    .line 32
    if-eqz p3, :cond_2d

    .line 34
    if-eqz p2, :cond_38

    .line 36
    invoke-static {p1}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Z

    .line 39
    move-result p1

    .line 40
    xor-int/lit8 p1, p1, 0x1

    .line 42
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 45
    goto :goto_38

    .line 46
    :cond_2d
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigator()Lmiuix/navigator/Navigator;

    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p2, p1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method private synthetic lambda$setupEditWidget$1(Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 8
    move-result p1

    .line 9
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    .line 15
    invoke-static {p1, p3}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$302(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;Z)Z

    .line 18
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x0

    .line 27
    move p3, p2

    .line 28
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2d

    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    .line 40
    invoke-static {v0}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Z

    .line 43
    move-result v0

    .line 44
    add-int/2addr p3, v0

    .line 45
    goto :goto_1b

    .line 46
    :cond_2d
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 53
    move-result p1

    .line 54
    if-ne p3, p1, :cond_38

    .line 56
    const/4 p2, 0x1

    .line 57
    :cond_38
    invoke-virtual {p0, p2, p3}, Lmiuix/navigator/adapter/ListCategoryAdapter;->notifyCheckStateChanged(ZI)V

    .line 60
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
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->hasContextMenu()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_13

    .line 19
    return v2

    .line 20
    :cond_13
    invoke-virtual {p2, v2}, Landroid/view/View;->setPressed(Z)V

    .line 23
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/ListCategoryAdapter;->startEdit(Landroidx/recyclerview/widget/RecyclerView$b0;)V

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

.method private setupEditWidget(Landroid/widget/CheckBox;Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)V
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
    if-eqz v0, :cond_21

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-static {p3}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Z

    .line 21
    move-result p3

    .line 22
    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 25
    new-instance p3, Lmiuix/navigator/adapter/d;

    .line 27
    invoke-direct {p3, p0, p2, v0}, Lmiuix/navigator/adapter/d;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 30
    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 33
    goto :goto_26

    .line 34
    :cond_21
    const/16 p2, 0x8

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :goto_26
    return-void
.end method

.method private setupIconView(Landroid/widget/ImageView;Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)V
    .registers 4

    .line 1
    invoke-static {p2}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$100(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-static {p2}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$100(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    goto :goto_15

    .line 15
    :cond_e
    invoke-static {p2}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$200(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)I

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
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/android/fileexplorer/adapter/category/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 12
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_27

    .line 18
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->hasContextMenu()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_27

    .line 28
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 30
    new-instance v1, Lmiuix/navigator/adapter/c;

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v1, p0, p1, v2}, Lmiuix/navigator/adapter/c;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 39
    goto :goto_2d

    .line 40
    :cond_27
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 46
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

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->isEditing()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1d

    .line 7
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->allowReorder()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1d

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    new-instance v1, Lmiuix/navigator/adapter/b;

    .line 23
    invoke-direct {v1, p0, p2, v0}, Lmiuix/navigator/adapter/b;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 29
    goto :goto_26

    .line 30
    :cond_1d
    const/4 p2, 0x0

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 34
    const/16 p2, 0x8

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :goto_26
    return-void
.end method

.method private setupWidgetFrame(Landroid/view/ViewGroup;Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)V
    .registers 5

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Lmiuix/navigator/adapter/ListCategoryAdapter;->getWidgetProvider()Lmiuix/navigator/adapter/WidgetProvider;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_19

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-virtual {p0}, Lmiuix/navigator/adapter/ListCategoryAdapter;->getWidgetProvider()Lmiuix/navigator/adapter/WidgetProvider;

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

.method private startEdit(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getItemCount()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 8
    move-result p1

    .line 9
    invoke-super {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->startEdit()V

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq p1, v2, :cond_26

    .line 16
    if-ge p1, v0, :cond_26

    .line 18
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-static {p1, v2}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$302(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;Z)Z

    .line 32
    if-ne v0, v2, :cond_22

    .line 34
    move v1, v2

    .line 35
    :cond_22
    invoke-virtual {p0, v1, v2}, Lmiuix/navigator/adapter/ListCategoryAdapter;->notifyCheckStateChanged(ZI)V

    .line 38
    goto :goto_29

    .line 39
    :cond_26
    invoke-virtual {p0, v1, v1}, Lmiuix/navigator/adapter/ListCategoryAdapter;->notifyCheckStateChanged(ZI)V

    .line 42
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

    .line 1
    const/4 v0, -0x3

    .line 2
    if-ne p2, v0, :cond_7

    .line 4
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/ListCategoryAdapter;->startEdit(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    .line 11
    move-result-object v0

    .line 12
    instance-of v0, v0, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;

    .line 14
    if-nez v0, :cond_13

    .line 16
    invoke-super {p0, p1, p2}, Lmiuix/navigator/adapter/CategoryAdapter;->dispatchContextAction(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 19
    return-void

    .line 20
    :cond_13
    const/4 v0, 0x1

    .line 21
    new-array v0, v0, [I

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 27
    move-result p1

    .line 28
    aput p1, v0, v1

    .line 30
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;

    .line 36
    invoke-interface {p1, p0, p2, v0}, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;->onEditAction(Lmiuix/navigator/adapter/CategoryAdapter;I[I)Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_2c

    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 45
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

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, -0x1

    .line 4
    if-ne p1, v2, :cond_34

    .line 6
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1d

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    .line 26
    invoke-static {v2, v0}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$302(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;Z)Z

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 37
    move-result p1

    .line 38
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 41
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    move-result p1

    .line 49
    invoke-virtual {p0, v0, p1}, Lmiuix/navigator/adapter/ListCategoryAdapter;->notifyCheckStateChanged(ZI)V

    .line 52
    return-void

    .line 53
    :cond_34
    const/4 v2, -0x2

    .line 54
    if-ne p1, v2, :cond_5e

    .line 56
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object p1

    .line 64
    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4f

    .line 70
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    .line 76
    invoke-static {v0, v1}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$302(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;Z)Z

    .line 79
    goto :goto_3f

    .line 80
    :cond_4f
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 87
    move-result p1

    .line 88
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 91
    invoke-virtual {p0, v1, v1}, Lmiuix/navigator/adapter/ListCategoryAdapter;->notifyCheckStateChanged(ZI)V

    .line 94
    return-void

    .line 95
    :cond_5e
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    .line 98
    move-result-object v2

    .line 99
    if-eqz v2, :cond_80

    .line 101
    instance-of v2, v2, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;

    .line 103
    if-eqz v2, :cond_77

    .line 105
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;

    .line 111
    invoke-direct {p0}, Lmiuix/navigator/adapter/ListCategoryAdapter;->getSelection()[I

    .line 114
    move-result-object v3

    .line 115
    invoke-interface {v2, p0, p1, v3}, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;->onEditAction(Lmiuix/navigator/adapter/CategoryAdapter;I[I)Z

    .line 118
    move-result p1

    .line 119
    goto :goto_81

    .line 120
    :cond_77
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    .line 123
    move-result-object v2

    .line 124
    invoke-interface {v2, p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter$EditListener;->onEditAction(Lmiuix/navigator/adapter/CategoryAdapter;I)Z

    .line 127
    move-result p1

    .line 128
    goto :goto_81

    .line 129
    :cond_80
    move p1, v1

    .line 130
    :goto_81
    if-nez p1, :cond_84

    .line 132
    return-void

    .line 133
    :cond_84
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 136
    move-result-object p1

    .line 137
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 140
    move-result p1

    .line 141
    move v2, v1

    .line 142
    move v3, v2

    .line 143
    :goto_8e
    if-ge v2, p1, :cond_a5

    .line 145
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 148
    move-result-object v4

    .line 149
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    move-result-object v4

    .line 153
    check-cast v4, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    .line 155
    invoke-static {v4}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Z

    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_a2

    .line 161
    add-int/lit8 v3, v3, 0x1

    .line 163
    :cond_a2
    add-int/lit8 v2, v2, 0x1

    .line 165
    goto :goto_8e

    .line 166
    :cond_a5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 169
    if-ne v3, p1, :cond_ad

    .line 171
    if-lez p1, :cond_ad

    .line 173
    goto :goto_ae

    .line 174
    :cond_ad
    move v0, v1

    .line 175
    :goto_ae
    invoke-virtual {p0, v0, v3}, Lmiuix/navigator/adapter/ListCategoryAdapter;->notifyCheckStateChanged(ZI)V

    .line 178
    return-void
.end method

.method public dispatchSelectionChanged(Landroid/view/Menu;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;

    .line 7
    if-eqz v0, :cond_15

    .line 9
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;

    .line 15
    invoke-direct {p0}, Lmiuix/navigator/adapter/ListCategoryAdapter;->getSelection()[I

    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, p0, v1, p1}, Lmiuix/navigator/adapter/ListCategoryAdapter$EditListener;->onSelectionChanged(Lmiuix/navigator/adapter/CategoryAdapter;[ILandroid/view/Menu;)V

    .line 22
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

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/ListCategoryAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

    .line 3
    return-object v0
.end method

.method public isVisible(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public final notifyCheckStateChanged(ZI)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/adapter/NavigationAdapter;->onCheckStateChanged(ZI)V

    .line 8
    return-void
.end method

.method public bridge synthetic onBindNormalView(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/CategoryAdapter$Item;)V
    .registers 3

    .line 1
    check-cast p2, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    invoke-virtual {p0, p1, p2}, Lmiuix/navigator/adapter/ListCategoryAdapter;->onBindNormalView(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)V

    return-void
.end method

.method public onBindNormalView(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)V
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
    invoke-static {p2}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$000(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6
    invoke-direct {p0, v0, p2}, Lmiuix/navigator/adapter/ListCategoryAdapter;->setupIconView(Landroid/widget/ImageView;Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)V

    .line 7
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    invoke-direct {p0, v0, p2}, Lmiuix/navigator/adapter/ListCategoryAdapter;->setupWidgetFrame(Landroid/view/ViewGroup;Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)V

    .line 9
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v2, Lmiuix/navigator/R$id;->miuix_navigator_edit_widget:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 10
    invoke-direct {p0, v0, p1, p2}, Lmiuix/navigator/adapter/ListCategoryAdapter;->setupEditWidget(Landroid/widget/CheckBox;Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)V

    .line 11
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v3, Lcom/android/fileexplorer/pad/fragment/a;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p1, v0, v4}, Lcom/android/fileexplorer/pad/fragment/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 13
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/ListCategoryAdapter;->setupLongClick(Landroidx/recyclerview/widget/RecyclerView$b0;)V

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

    move v1, v4

    .line 20
    :cond_82
    invoke-virtual {v2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 21
    :goto_85
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v0, Lmiuix/navigator/R$id;->rearrange_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 22
    invoke-direct {p0, p2, p1}, Lmiuix/navigator/adapter/ListCategoryAdapter;->setupRearrangeButton(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$b0;)V

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
    iget v1, p0, Lmiuix/navigator/adapter/ListCategoryAdapter;->mItemLayoutRes:I

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
    new-instance v3, Landroid/widget/CheckBox;

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v3, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

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
    iget-object p1, p0, Lmiuix/navigator/adapter/ListCategoryAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

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

.method public onStartEdit()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_19

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v1, v2}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->access$302(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;Z)Z

    .line 25
    goto :goto_8

    .line 26
    :cond_19
    invoke-super {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->onStartEdit()V

    .line 29
    return-void
.end method
