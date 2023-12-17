.class public final Lmiuix/navigator/adapter/NavigationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NavigationAdapter.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;",
        "Landroid/view/ActionMode$Callback;"
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private final DRAG_BACKGROUND_ALPHA:Lmiuix/animation/property/ViewProperty;

.field private mActionMode:Landroid/view/ActionMode;

.field private mAttachedToRecyclerView:Z

.field private mCategoryLayoutRes:I

.field private mContextMenuHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

.field private mContextMenuOpenCount:I

.field private final mDragHelper:Lmiuix/navigator/draganddrop/DragHelper;

.field private mDragPlaceholderLayoutRes:I

.field private mDragTranslationZ:I

.field private mEditAllChecked:Z

.field private mEditCheckedCount:I

.field private mEditing:Z

.field private mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "+",
            "Lmiuix/navigator/adapter/CategoryAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mEditingType:I

.field private final mItemTouchHelper:Landroidx/recyclerview/widget/f;

.field private mLabelAdapter:Lmiuix/navigator/adapter/LabelAdapter;

.field private mLabelLayoutRes:I

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/navigator/adapter/NavigationAdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavigator:Lmiuix/navigator/Navigator;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [I

    .line 4
    sget v1, Lmiuix/navigator/R$attr;->navigatorCategoryLayout:I

    .line 6
    const/4 v2, 0x0

    .line 7
    aput v1, v0, v2

    .line 9
    sget v1, Lmiuix/navigator/R$attr;->navigatorLabelLayout:I

    .line 11
    const/4 v2, 0x1

    .line 12
    aput v1, v0, v2

    .line 14
    sget v1, Lmiuix/navigator/R$attr;->navigatorDragPlaceholderLayout:I

    .line 16
    const/4 v2, 0x2

    .line 17
    aput v1, v0, v2

    .line 19
    sput-object v0, Lmiuix/navigator/adapter/NavigationAdapter;->ATTRS:[I

    .line 21
    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/Navigator;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 11
    new-instance v0, Lmiuix/navigator/adapter/NavigationAdapter$1;

    .line 13
    const-string v1, "dragBackgroundAlpha"

    .line 15
    invoke-direct {v0, p0, v1}, Lmiuix/navigator/adapter/NavigationAdapter$1;-><init>(Lmiuix/navigator/adapter/NavigationAdapter;Ljava/lang/String;)V

    .line 18
    iput-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->DRAG_BACKGROUND_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 20
    new-instance v0, Lmiuix/navigator/adapter/NavigationAdapter$3;

    .line 22
    new-instance v1, Lmiuix/navigator/adapter/NavigationAdapter$2;

    .line 24
    invoke-direct {v1, p0}, Lmiuix/navigator/adapter/NavigationAdapter$2;-><init>(Lmiuix/navigator/adapter/NavigationAdapter;)V

    .line 27
    invoke-direct {v0, p0, v1}, Lmiuix/navigator/adapter/NavigationAdapter$3;-><init>(Lmiuix/navigator/adapter/NavigationAdapter;Landroidx/recyclerview/widget/f$e;)V

    .line 30
    iput-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/f;

    .line 32
    new-instance v0, Lmiuix/navigator/draganddrop/DragHelper;

    .line 34
    invoke-direct {v0}, Lmiuix/navigator/draganddrop/DragHelper;-><init>()V

    .line 37
    iput-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragHelper:Lmiuix/navigator/draganddrop/DragHelper;

    .line 39
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    .line 42
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 45
    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    .line 47
    new-instance v0, Lmiuix/navigator/adapter/LabelAdapter;

    .line 49
    invoke-direct {v0}, Lmiuix/navigator/adapter/LabelAdapter;-><init>()V

    .line 52
    invoke-virtual {p0, v0}, Lmiuix/navigator/adapter/NavigationAdapter;->setLabelAdapter(Lmiuix/navigator/adapter/LabelAdapter;)V

    .line 55
    invoke-direct {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->initResources()V

    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 62
    new-instance v0, Lmiuix/navigator/adapter/NavigationAdapter$4;

    .line 64
    invoke-direct {v0, p0}, Lmiuix/navigator/adapter/NavigationAdapter$4;-><init>(Lmiuix/navigator/adapter/NavigationAdapter;)V

    .line 67
    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    .line 70
    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/navigator/adapter/CategoryAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/navigator/adapter/NavigationAdapter;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragTranslationZ:I

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/animation/property/ViewProperty;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->DRAG_BACKGROUND_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/navigator/adapter/NavigationAdapter;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    .line 3
    return p0
.end method

.method private createInternalView(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
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
    const/4 v1, 0x0

    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne p2, v2, :cond_33

    .line 13
    iget p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mLabelLayoutRes:I

    .line 15
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 26
    const p2, 0x1020016

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/widget/TextView;

    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 39
    new-instance p2, Lmiuix/navigator/adapter/Holder;

    .line 41
    invoke-direct {p2, p1}, Lmiuix/navigator/adapter/Holder;-><init>(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->getLabelAdapter()Lmiuix/navigator/adapter/LabelAdapter;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, p2}, Lmiuix/navigator/adapter/LabelAdapter;->onPrepareViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 51
    return-object p2

    .line 52
    :cond_33
    const/4 v2, -0x2

    .line 53
    if-ne p2, v2, :cond_42

    .line 55
    iget p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mCategoryLayoutRes:I

    .line 57
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 60
    move-result-object p1

    .line 61
    new-instance p2, Lmiuix/navigator/adapter/Holder;

    .line 63
    invoke-direct {p2, p1}, Lmiuix/navigator/adapter/Holder;-><init>(Landroid/view/View;)V

    .line 66
    return-object p2

    .line 67
    :cond_42
    const/4 v2, -0x3

    .line 68
    if-ne p2, v2, :cond_51

    .line 70
    iget p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragPlaceholderLayoutRes:I

    .line 72
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 75
    move-result-object p1

    .line 76
    new-instance p2, Lmiuix/navigator/adapter/Holder;

    .line 78
    invoke-direct {p2, p1}, Lmiuix/navigator/adapter/Holder;-><init>(Landroid/view/View;)V

    .line 81
    return-object p2

    .line 82
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 84
    const-string p2, "bad viewType"

    .line 86
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p1
.end method

.method private getBaseNavigator()Lmiuix/navigator/NavigatorImpl;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getBaseNavigator()Lmiuix/navigator/Navigator;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/navigator/NavigatorImpl;

    .line 9
    return-object v0
.end method

.method private initResources()V
    .registers 6

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lmiuix/navigator/adapter/NavigationAdapter;->ATTRS:[I

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 14
    move-result-object v0

    .line 15
    sget v1, Lmiuix/navigator/R$layout;->miuix_navigator_item_category:I

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 21
    move-result v1

    .line 22
    sget v2, Lmiuix/navigator/R$layout;->miuix_navigator_item_label:I

    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 28
    move-result v2

    .line 29
    sget v3, Lmiuix/navigator/R$layout;->miuix_navigator_item_drag_placeholder:I

    .line 31
    const/4 v4, 0x2

    .line 32
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 35
    move-result v3

    .line 36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    iget v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mCategoryLayoutRes:I

    .line 41
    if-ne v1, v0, :cond_32

    .line 43
    iget v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mLabelLayoutRes:I

    .line 45
    if-ne v2, v0, :cond_32

    .line 47
    iget v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragPlaceholderLayoutRes:I

    .line 49
    if-eq v3, v0, :cond_67

    .line 51
    :cond_32
    iput v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mCategoryLayoutRes:I

    .line 53
    iput v2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mLabelLayoutRes:I

    .line 55
    iput v3, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragPlaceholderLayoutRes:I

    .line 57
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    .line 59
    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 62
    move-result-object v0

    .line 63
    const-string v1, "miuix.navigation"

    .line 65
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lmiuix/navigator/NavigationFragment;

    .line 71
    if-eqz v0, :cond_67

    .line 73
    invoke-virtual {v0}, Lmiuix/navigator/NavigationFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_67

    .line 79
    invoke-virtual {v0}, Lmiuix/navigator/NavigationFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 86
    move-result-object v1

    .line 87
    if-ne v1, p0, :cond_67

    .line 89
    invoke-virtual {v0}, Lmiuix/navigator/NavigationFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    move-result-object v1

    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 97
    invoke-virtual {v0}, Lmiuix/navigator/NavigationFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 104
    :cond_67
    invoke-direct {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getContext()Landroid/content/Context;

    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    move-result-object v0

    .line 116
    sget v1, Lmiuix/navigator/R$dimen;->miuix_navigator_item_dragging_translation_z:I

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 121
    move-result v0

    .line 122
    iput v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragTranslationZ:I

    .line 124
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragHelper:Lmiuix/navigator/draganddrop/DragHelper;

    .line 126
    invoke-virtual {v0}, Lmiuix/navigator/draganddrop/DragHelper;->initResources()V

    .line 129
    return-void
.end method

.method private notifyNavigationItemInserted(Lmiuix/navigator/adapter/NavigationAdapterItem;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1c

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 20
    if-ne p1, v2, :cond_16

    .line 22
    goto :goto_1c

    .line 23
    :cond_16
    invoke-interface {v2}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    .line 26
    move-result v2

    .line 27
    add-int/2addr v1, v2

    .line 28
    goto :goto_7

    .line 29
    :cond_1c
    :goto_1c
    invoke-interface {p1}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    .line 32
    move-result p1

    .line 33
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 36
    return-void
.end method

.method private prepareEditListActionMode(Landroid/view/ActionMode;)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditAllChecked:Z

    .line 4
    iput v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditCheckedCount:I

    .line 6
    invoke-direct {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lmiuix/navigator/NavigatorImpl;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 18
    sget v2, Lmiuix/navigator/R$plurals;->miuix_appcompat_items_selected:I

    .line 20
    iget v3, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditCheckedCount:I

    .line 22
    const/4 v4, 0x1

    .line 23
    new-array v4, v4, [Ljava/lang/Object;

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v5

    .line 29
    aput-object v5, v4, v0

    .line 31
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    check-cast p1, Lmiuix/view/EditActionMode;

    .line 40
    sget v0, Lmiuix/navigator/R$drawable;->miuix_appcompat_action_mode_title_button_cancel:I

    .line 42
    const v1, 0x1020019

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-interface {p1, v1, v2, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 49
    sget v0, Lmiuix/navigator/R$drawable;->miuix_appcompat_action_mode_title_button_select_all:I

    .line 51
    const v1, 0x102001a

    .line 54
    invoke-interface {p1, v1, v2, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 57
    return-void
.end method

.method private prepareEditMenuActionMode(Landroid/view/ActionMode;)V
    .registers 5

    .line 1
    sget v0, Lmiuix/navigator/R$string;->miuix_appcompat_edit:I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    .line 6
    check-cast p1, Lmiuix/view/EditActionMode;

    .line 8
    sget v0, Lmiuix/navigator/R$drawable;->miuix_appcompat_action_mode_title_button_cancel:I

    .line 10
    const v1, 0x1020019

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {p1, v1, v2, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 17
    sget v0, Lmiuix/navigator/R$drawable;->miuix_appcompat_action_mode_title_button_confirm:I

    .line 19
    const v1, 0x102001a

    .line 22
    invoke-interface {p1, v1, v2, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 25
    return-void
.end method

.method private removeNavigationAdapterItemAndNotify(Lmiuix/navigator/adapter/NavigationAdapterItem;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_2c

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 20
    if-ne p1, v2, :cond_26

    .line 22
    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 24
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 27
    iget-boolean p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mAttachedToRecyclerView:Z

    .line 29
    if-eqz p1, :cond_2c

    .line 31
    invoke-interface {v2}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    .line 34
    move-result p1

    .line 35
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 38
    goto :goto_2c

    .line 39
    :cond_26
    invoke-interface {v2}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    .line 42
    move-result v2

    .line 43
    add-int/2addr v1, v2

    .line 44
    goto :goto_7

    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method


# virtual methods
.method public addCategory(Lmiuix/navigator/Navigator$Category;I)V
    .registers 5

    .line 1
    instance-of v0, p1, Lmiuix/navigator/adapter/CategoryImpl;

    .line 3
    if-eqz v0, :cond_29

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p2, v0, :cond_10

    .line 8
    iget-object p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Lmiuix/navigator/adapter/CategoryImpl;

    .line 13
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    goto :goto_18

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 19
    move-object v1, p1

    .line 20
    check-cast v1, Lmiuix/navigator/adapter/CategoryImpl;

    .line 22
    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25
    :goto_18
    invoke-virtual {p1}, Lmiuix/navigator/Navigator$Category;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p0}, Lmiuix/navigator/adapter/CategoryAdapter;->onAttachNavigationAdapter(Lmiuix/navigator/adapter/NavigationAdapter;)V

    .line 32
    iget-boolean p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mAttachedToRecyclerView:Z

    .line 34
    if-eqz p2, :cond_28

    .line 36
    check-cast p1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 38
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->notifyNavigationItemInserted(Lmiuix/navigator/adapter/NavigationAdapterItem;)V

    .line 41
    :cond_28
    return-void

    .line 42
    :cond_29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 44
    const-string p2, "use newCategory() to make Category instance"

    .line 46
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1
.end method

.method public addLabel(Lmiuix/navigator/Navigator$Label;I)V
    .registers 5

    .line 1
    instance-of v0, p1, Lmiuix/navigator/adapter/LabelImpl;

    .line 3
    if-eqz v0, :cond_22

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p2, v0, :cond_10

    .line 8
    iget-object p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Lmiuix/navigator/adapter/LabelImpl;

    .line 13
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    goto :goto_18

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 19
    move-object v1, p1

    .line 20
    check-cast v1, Lmiuix/navigator/adapter/LabelImpl;

    .line 22
    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25
    :goto_18
    iget-boolean p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mAttachedToRecyclerView:Z

    .line 27
    if-eqz p2, :cond_21

    .line 29
    check-cast p1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 31
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->notifyNavigationItemInserted(Lmiuix/navigator/adapter/NavigationAdapterItem;)V

    .line 34
    :cond_21
    return-void

    .line 35
    :cond_22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 37
    const-string p2, "use newLabel() to make Label instance"

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
.end method

.method public dispatchOnDragStart(Ljava/util/Map;Landroid/view/DragEvent;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lmiuix/navigator/adapter/CategoryAdapterWrapper;",
            "Lmiuix/navigator/draganddrop/DragStartFeedback;",
            ">;",
            "Landroid/view/DragEvent;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_57

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 19
    instance-of v2, v1, Lmiuix/navigator/adapter/CategoryImpl;

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_23

    .line 24
    check-cast v1, Lmiuix/navigator/adapter/CategoryImpl;

    .line 26
    iget-object v3, v1, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 28
    invoke-virtual {v3}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigatorDragListener()Lmiuix/navigator/draganddrop/NavigatorDragListener;

    .line 31
    move-result-object v1

    .line 32
    move-object v4, v3

    .line 33
    move-object v3, v1

    .line 34
    move-object v1, v4

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move-object v1, v3

    .line 37
    :goto_24
    if-nez v3, :cond_27

    .line 39
    goto :goto_6

    .line 40
    :cond_27
    new-instance v2, Lmiuix/navigator/draganddrop/DragStartFeedback;

    .line 42
    invoke-direct {v2}, Lmiuix/navigator/draganddrop/DragStartFeedback;-><init>()V

    .line 45
    invoke-interface {v3, p2, v2}, Lmiuix/navigator/draganddrop/NavigatorDragListener;->onDragStart(Landroid/view/DragEvent;Lmiuix/navigator/draganddrop/DragStartFeedback;)V

    .line 48
    invoke-virtual {v2}, Lmiuix/navigator/draganddrop/DragStartFeedback;->canInsert()Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_47

    .line 54
    invoke-virtual {v1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getBaseAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->multiChoiceMode()Z

    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_47

    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-virtual {v2, v3}, Lmiuix/navigator/draganddrop/DragStartFeedback;->setCanInsert(Z)V

    .line 72
    :cond_47
    invoke-virtual {v2}, Lmiuix/navigator/draganddrop/DragStartFeedback;->canInsert()Z

    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_53

    .line 78
    invoke-virtual {v2}, Lmiuix/navigator/draganddrop/DragStartFeedback;->canAccept()Z

    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_6

    .line 84
    :cond_53
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    goto :goto_6

    .line 88
    :cond_57
    return-void
.end method

.method public findNavigationItemPosition(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)I
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_21

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 20
    invoke-interface {v2, p1}, Lmiuix/navigator/adapter/NavigationAdapterItem;->findNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)I

    .line 23
    move-result v3

    .line 24
    if-ltz v3, :cond_1b

    .line 26
    add-int/2addr v1, v3

    .line 27
    return v1

    .line 28
    :cond_1b
    invoke-interface {v2}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    .line 31
    move-result v2

    .line 32
    add-int/2addr v1, v2

    .line 33
    goto :goto_7

    .line 34
    :cond_21
    const/4 p1, -0x1

    .line 35
    return p1
.end method

.method public findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "I)I"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)I

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_b
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)I

    .line 15
    move-result v0

    .line 16
    const/4 v1, -0x1

    .line 17
    if-eq v0, v1, :cond_13

    .line 19
    return v0

    .line 20
    :cond_13
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3e

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 38
    instance-of v3, v2, Lmiuix/navigator/adapter/CategoryImpl;

    .line 40
    if-eqz v3, :cond_37

    .line 42
    move-object v3, v2

    .line 43
    check-cast v3, Lmiuix/navigator/adapter/CategoryImpl;

    .line 45
    iget-object v3, v3, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 47
    add-int/lit8 v4, p3, -0x1

    .line 49
    invoke-virtual {v3, p1, p2, v4}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)I

    .line 52
    move-result v3

    .line 53
    if-eq v3, v1, :cond_37

    .line 55
    return v3

    .line 56
    :cond_37
    invoke-interface {v2}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    .line 59
    move-result v2

    .line 60
    sub-int/2addr p3, v2

    .line 61
    if-gez p3, :cond_19

    .line 63
    :cond_3e
    return v1
.end method

.method public getCategoryPosition(Lmiuix/navigator/adapter/CategoryImpl;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1c

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 20
    if-ne v2, p1, :cond_16

    .line 22
    return v1

    .line 23
    :cond_16
    invoke-interface {v2}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    .line 26
    move-result v2

    .line 27
    add-int/2addr v1, v2

    .line 28
    goto :goto_7

    .line 29
    :cond_1c
    const/4 p1, -0x1

    .line 30
    return p1
.end method

.method public getItemCount()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 7
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getItemCount()I

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_24

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 31
    invoke-interface {v2}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    .line 34
    move-result v2

    .line 35
    add-int/2addr v0, v2

    .line 36
    goto :goto_12

    .line 37
    :cond_24
    return v0
.end method

.method public getItemId(I)J
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->getItemId(I)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2a

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 30
    invoke-interface {v1}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    .line 33
    move-result v2

    .line 34
    if-ge p1, v2, :cond_28

    .line 36
    invoke-interface {v1, p1}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemId(I)J

    .line 39
    move-result-wide v0

    .line 40
    return-wide v0

    .line 41
    :cond_28
    sub-int/2addr p1, v2

    .line 42
    goto :goto_11

    .line 43
    :cond_2a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 45
    const-string v1, "pos: "

    .line 47
    const-string v2, " limit: "

    .line 49
    invoke-static {v1, p1, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object p1

    .line 53
    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 55
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 58
    move-result v1

    .line 59
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 69
    throw v0
.end method

.method public getItemViewType(I)I
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingType:I

    .line 7
    return p1

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_26

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 26
    invoke-interface {v1}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    .line 29
    move-result v2

    .line 30
    if-ge p1, v2, :cond_24

    .line 32
    invoke-interface {v1, p1}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemViewType(I)I

    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_24
    sub-int/2addr p1, v2

    .line 38
    goto :goto_d

    .line 39
    :cond_26
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 41
    const-string v1, "pos: "

    .line 43
    const-string v2, " limit: "

    .line 45
    invoke-static {v1, p1, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object p1

    .line 49
    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 51
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 54
    move-result v1

    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 65
    throw v0
.end method

.method public getLabelAdapter()Lmiuix/navigator/adapter/LabelAdapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mLabelAdapter:Lmiuix/navigator/adapter/LabelAdapter;

    .line 3
    return-object v0
.end method

.method public getNavigator()Lmiuix/navigator/Navigator;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    .line 3
    return-object v0
.end method

.method public isEditing()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    .line 3
    return v0
.end method

.method public notifyItemChanged(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V
    .registers 2

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->findNavigationItemPosition(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)I

    .line 7
    move-result p1

    .line 8
    if-ltz p1, :cond_c

    .line 10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 13
    :cond_c
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 7

    .line 1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    const v2, 0x1020019

    .line 10
    if-ne p2, v2, :cond_14

    .line 12
    iget-object p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 14
    invoke-virtual {p2, v0}, Lmiuix/navigator/adapter/CategoryAdapter;->finishEdit(Z)V

    .line 17
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 20
    return v1

    .line 21
    :cond_14
    const v2, 0x102001a

    .line 24
    if-ne p2, v2, :cond_3b

    .line 26
    iget-object p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 28
    invoke-virtual {p2}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->multiChoiceMode()Z

    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_32

    .line 38
    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 40
    iget-boolean p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditAllChecked:Z

    .line 42
    if-eqz p2, :cond_2d

    .line 44
    const/4 p2, -0x2

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    const/4 p2, -0x1

    .line 47
    :goto_2e
    invoke-virtual {p1, p2}, Lmiuix/navigator/adapter/CategoryAdapter;->dispatchEditAction(I)V

    .line 50
    goto :goto_3a

    .line 51
    :cond_32
    iget-object p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 53
    invoke-virtual {p2, v1}, Lmiuix/navigator/adapter/CategoryAdapter;->finishEdit(Z)V

    .line 56
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 59
    :goto_3a
    return v1

    .line 60
    :cond_3b
    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 62
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->getEditMenu()Ljava/util/List;

    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_71

    .line 72
    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 74
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->getEditMenu()Ljava/util/List;

    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    move-result-object p1

    .line 86
    :cond_55
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_71

    .line 92
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;

    .line 98
    invoke-virtual {v2}, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->getEditAction()I

    .line 101
    move-result v3

    .line 102
    if-ne p2, v3, :cond_55

    .line 104
    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 106
    invoke-virtual {v2}, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->getEditAction()I

    .line 109
    move-result p2

    .line 110
    invoke-virtual {p1, p2}, Lmiuix/navigator/adapter/CategoryAdapter;->dispatchEditAction(I)V

    .line 113
    return v1

    .line 114
    :cond_71
    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mAttachedToRecyclerView:Z

    .line 4
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/f;

    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/f;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 9
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragHelper:Lmiuix/navigator/draganddrop/DragHelper;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/navigator/draganddrop/DragHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 14
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 7
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 10
    return-void

    .line 11
    :cond_a
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_28

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 29
    invoke-interface {v1}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    .line 32
    move-result v2

    .line 33
    if-ge p2, v2, :cond_26

    .line 35
    invoke-interface {v1, p1, p2}, Lmiuix/navigator/adapter/NavigationAdapterItem;->handleBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 38
    return-void

    .line 39
    :cond_26
    sub-int/2addr p2, v2

    .line 40
    goto :goto_10

    .line 41
    :cond_28
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 43
    const-string v0, "pos: "

    .line 45
    const-string v1, " limit: "

    .line 47
    invoke-static {v0, p2, v1}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    move-result-object p2

    .line 51
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    move-result v0

    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p2

    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1
.end method

.method public onCheckStateChanged(ZI)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditAllChecked:Z

    .line 3
    if-eq p1, v0, :cond_18

    .line 5
    iput-boolean p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditAllChecked:Z

    .line 7
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 9
    check-cast v0, Lmiuix/view/EditActionMode;

    .line 11
    const v1, 0x102001a

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz p1, :cond_13

    .line 17
    sget p1, Lmiuix/navigator/R$drawable;->miuix_appcompat_action_mode_title_button_deselect_all:I

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    sget p1, Lmiuix/navigator/R$drawable;->miuix_appcompat_action_mode_title_button_select_all:I

    .line 22
    :goto_15
    invoke-interface {v0, v1, v2, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 25
    :cond_18
    iget p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditCheckedCount:I

    .line 27
    if-eq p2, p1, :cond_4e

    .line 29
    iput p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditCheckedCount:I

    .line 31
    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 33
    invoke-direct {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Lmiuix/navigator/NavigatorImpl;->getContext()Landroid/content/Context;

    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object p2

    .line 45
    sget v0, Lmiuix/navigator/R$plurals;->miuix_appcompat_items_selected:I

    .line 47
    iget v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditCheckedCount:I

    .line 49
    const/4 v2, 0x1

    .line 50
    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v4

    .line 57
    aput-object v4, v2, v3

    .line 59
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 68
    check-cast p1, Lmiuix/navigator/adapter/ListCategoryAdapter;

    .line 70
    iget-object p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 72
    invoke-virtual {p2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p1, p2}, Lmiuix/navigator/adapter/ListCategoryAdapter;->dispatchSelectionChanged(Landroid/view/Menu;)V

    .line 79
    :cond_4e
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->initResources()V

    .line 4
    return-void
.end method

.method public onContextEditAction(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mContextMenuHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lmiuix/navigator/adapter/CategoryAdapter;

    .line 9
    if-eqz v1, :cond_11

    .line 11
    check-cast v0, Lmiuix/navigator/adapter/CategoryAdapter;

    .line 13
    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mContextMenuHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 15
    invoke-virtual {v0, v1, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->dispatchContextAction(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 18
    :cond_11
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 6

    .line 1
    if-gez p2, :cond_7

    .line 3
    invoke-direct {p0, p1, p2}, Lmiuix/navigator/adapter/NavigationAdapter;->createInternalView(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_32

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 26
    instance-of v2, v1, Lmiuix/navigator/adapter/CategoryImpl;

    .line 28
    if-eqz v2, :cond_d

    .line 30
    check-cast v1, Lmiuix/navigator/adapter/CategoryImpl;

    .line 32
    invoke-virtual {v1}, Lmiuix/navigator/adapter/CategoryImpl;->getId()I

    .line 35
    move-result v2

    .line 36
    if-eq p2, v2, :cond_2b

    .line 38
    invoke-virtual {v1}, Lmiuix/navigator/adapter/CategoryImpl;->getFooterId()I

    .line 41
    move-result v2

    .line 42
    if-ne p2, v2, :cond_d

    .line 44
    :cond_2b
    iget-object v0, v1, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    .line 46
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 53
    const-string p2, "bad viewType"

    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 4
    iget-boolean p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    .line 6
    if-eqz p1, :cond_14

    .line 8
    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 10
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->multiChoiceMode()Z

    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1, v0}, Lmiuix/navigator/adapter/CategoryAdapter;->finishEdit(Z)V

    .line 21
    :cond_14
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mAttachedToRecyclerView:Z

    .line 4
    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/f;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/f;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 10
    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragHelper:Lmiuix/navigator/draganddrop/DragHelper;

    .line 12
    invoke-virtual {p1, v0}, Lmiuix/navigator/draganddrop/DragHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 15
    return-void
.end method

.method public onFinishEditMode(Lmiuix/navigator/adapter/CategoryAdapter;)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

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
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    .line 4
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    .line 6
    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "miuix.navigation"

    .line 12
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lmiuix/navigator/NavigationFragment;

    .line 18
    if-eqz v0, :cond_69

    .line 20
    invoke-virtual {v0}, Lmiuix/navigator/NavigationFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_1a

    .line 26
    goto :goto_69

    .line 27
    :cond_1a
    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v1

    .line 33
    move v2, p1

    .line 34
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_43

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 46
    instance-of v4, v3, Lmiuix/navigator/adapter/CategoryImpl;

    .line 48
    if-eqz v4, :cond_3d

    .line 50
    move-object v4, v3

    .line 51
    check-cast v4, Lmiuix/navigator/adapter/CategoryImpl;

    .line 53
    invoke-virtual {v4}, Lmiuix/navigator/adapter/CategoryImpl;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 56
    move-result-object v4

    .line 57
    iget-object v5, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 59
    if-ne v4, v5, :cond_3d

    .line 61
    goto :goto_43

    .line 62
    :cond_3d
    invoke-interface {v3}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    .line 65
    move-result v3

    .line 66
    add-int/2addr v2, v3

    .line 67
    goto :goto_21

    .line 68
    :cond_43
    :goto_43
    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 71
    invoke-virtual {v0}, Lmiuix/navigator/NavigationFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 81
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 84
    move-result v1

    .line 85
    add-int/2addr v1, v2

    .line 86
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 89
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 92
    invoke-direct {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->onEditingChanged(Z)V

    .line 99
    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 101
    if-eqz p1, :cond_69

    .line 103
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 106
    :cond_69
    :goto_69
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 3
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->multiChoiceMode()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_12

    .line 15
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->prepareEditListActionMode(Landroid/view/ActionMode;)V

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->prepareEditMenuActionMode(Landroid/view/ActionMode;)V

    .line 22
    :goto_15
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 25
    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 27
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->getEditMenu()Ljava/util/List;

    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_42

    .line 37
    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 39
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->getEditMenu()Ljava/util/List;

    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p1

    .line 51
    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_42

    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;

    .line 63
    invoke-virtual {v0, p2}, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->addTo(Landroid/view/Menu;)V

    .line 66
    goto :goto_32

    .line 67
    :cond_42
    const/4 p1, 0x1

    .line 68
    return p1
.end method

.method public onStartEditMode(Lmiuix/navigator/adapter/CategoryAdapter;)Z
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "+",
            "Lmiuix/navigator/adapter/CategoryAdapter$Item;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "miuix.navigation"

    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lmiuix/navigator/NavigationFragment;

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_5c

    .line 18
    invoke-virtual {v0}, Lmiuix/navigator/NavigationFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_18

    .line 24
    goto :goto_5c

    .line 25
    :cond_18
    const/4 v2, 0x1

    .line 26
    iput-boolean v2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    .line 28
    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 30
    iget-object v3, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    .line 32
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v3

    .line 36
    :cond_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_41

    .line 42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 48
    instance-of v5, v4, Lmiuix/navigator/adapter/CategoryImpl;

    .line 50
    if-eqz v5, :cond_23

    .line 52
    check-cast v4, Lmiuix/navigator/adapter/CategoryImpl;

    .line 54
    invoke-virtual {v4}, Lmiuix/navigator/adapter/CategoryImpl;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 57
    move-result-object v5

    .line 58
    if-ne v5, p1, :cond_23

    .line 60
    invoke-virtual {v4}, Lmiuix/navigator/adapter/CategoryImpl;->getId()I

    .line 63
    move-result p1

    .line 64
    iput p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingType:I

    .line 66
    :cond_41
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 69
    invoke-virtual {v0}, Lmiuix/navigator/NavigationFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 79
    invoke-virtual {p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 82
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/Fragment;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 85
    invoke-direct {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, v2}, Lmiuix/navigator/NavigatorImpl;->onEditingChanged(Z)V

    .line 92
    return v2

    .line 93
    :cond_5c
    :goto_5c
    return v1
.end method

.method public removeCategory(Lmiuix/navigator/Navigator$Category;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lmiuix/navigator/adapter/CategoryImpl;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    .line 8
    if-eqz v0, :cond_17

    .line 10
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 12
    invoke-virtual {p1}, Lmiuix/navigator/Navigator$Category;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 15
    move-result-object v1

    .line 16
    if-ne v0, v1, :cond_17

    .line 18
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lmiuix/navigator/adapter/CategoryAdapter;->finishEdit(Z)V

    .line 24
    :cond_17
    invoke-virtual {p1}, Lmiuix/navigator/Navigator$Category;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lmiuix/navigator/adapter/CategoryAdapter;->onAttachNavigationAdapter(Lmiuix/navigator/adapter/NavigationAdapter;)V

    .line 32
    check-cast p1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 34
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->removeNavigationAdapterItemAndNotify(Lmiuix/navigator/adapter/NavigationAdapterItem;)V

    .line 37
    return-void
.end method

.method public removeLabel(Lmiuix/navigator/Navigator$Label;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lmiuix/navigator/adapter/LabelImpl;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    check-cast p1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    .line 8
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->removeNavigationAdapterItemAndNotify(Lmiuix/navigator/adapter/NavigationAdapterItem;)V

    .line 11
    return-void
.end method

.method public setContextHolder(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_b

    .line 4
    iget v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mContextMenuOpenCount:I

    .line 6
    sub-int/2addr v1, v0

    .line 7
    iput v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mContextMenuOpenCount:I

    .line 9
    if-lez v1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mContextMenuHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 14
    if-eqz v1, :cond_15

    .line 16
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 22
    :cond_15
    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mContextMenuHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 24
    if-eqz p1, :cond_23

    .line 26
    iget v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mContextMenuOpenCount:I

    .line 28
    add-int/2addr v1, v0

    .line 29
    iput v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mContextMenuOpenCount:I

    .line 31
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 36
    :cond_23
    return-void
.end method

.method public setLabelAdapter(Lmiuix/navigator/adapter/LabelAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mLabelAdapter:Lmiuix/navigator/adapter/LabelAdapter;

    .line 3
    invoke-virtual {p1, p0}, Lmiuix/navigator/adapter/LabelAdapter;->onAttachNavigationAdapter(Lmiuix/navigator/adapter/NavigationAdapter;)V

    .line 6
    return-void
.end method

.method public startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/f;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/f;->startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 6
    return-void
.end method
