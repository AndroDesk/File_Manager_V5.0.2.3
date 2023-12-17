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

    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lmiuix/navigator/R$attr;->navigatorCategoryLayout:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lmiuix/navigator/R$attr;->navigatorLabelLayout:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lmiuix/navigator/R$attr;->navigatorDragPlaceholderLayout:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lmiuix/navigator/adapter/NavigationAdapter;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/Navigator;)V
    .registers 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    new-instance v0, Lmiuix/navigator/adapter/NavigationAdapter$1;

    const-string v1, "dragBackgroundAlpha"

    invoke-direct {v0, p0, v1}, Lmiuix/navigator/adapter/NavigationAdapter$1;-><init>(Lmiuix/navigator/adapter/NavigationAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->DRAG_BACKGROUND_ALPHA:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/navigator/adapter/NavigationAdapter$3;

    new-instance v1, Lmiuix/navigator/adapter/NavigationAdapter$2;

    invoke-direct {v1, p0}, Lmiuix/navigator/adapter/NavigationAdapter$2;-><init>(Lmiuix/navigator/adapter/NavigationAdapter;)V

    invoke-direct {v0, p0, v1}, Lmiuix/navigator/adapter/NavigationAdapter$3;-><init>(Lmiuix/navigator/adapter/NavigationAdapter;Landroidx/recyclerview/widget/f$e;)V

    iput-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/f;

    new-instance v0, Lmiuix/navigator/draganddrop/DragHelper;

    invoke-direct {v0}, Lmiuix/navigator/draganddrop/DragHelper;-><init>()V

    iput-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragHelper:Lmiuix/navigator/draganddrop/DragHelper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    new-instance v0, Lmiuix/navigator/adapter/LabelAdapter;

    invoke-direct {v0}, Lmiuix/navigator/adapter/LabelAdapter;-><init>()V

    invoke-virtual {p0, v0}, Lmiuix/navigator/adapter/NavigationAdapter;->setLabelAdapter(Lmiuix/navigator/adapter/LabelAdapter;)V

    invoke-direct {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->initResources()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    new-instance v0, Lmiuix/navigator/adapter/NavigationAdapter$4;

    invoke-direct {v0, p0}, Lmiuix/navigator/adapter/NavigationAdapter$4;-><init>(Lmiuix/navigator/adapter/NavigationAdapter;)V

    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/navigator/adapter/CategoryAdapter;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/navigator/adapter/NavigationAdapter;)I
    .registers 1

    iget p0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragTranslationZ:I

    return p0
.end method

.method public static synthetic access$200(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/animation/property/ViewProperty;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->DRAG_BACKGROUND_ALPHA:Lmiuix/animation/property/ViewProperty;

    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/navigator/adapter/NavigationAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    return p0
.end method

.method private createInternalView(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_33

    iget p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mLabelLayoutRes:I

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const p2, 0x1020016

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance p2, Lmiuix/navigator/adapter/Holder;

    invoke-direct {p2, p1}, Lmiuix/navigator/adapter/Holder;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->getLabelAdapter()Lmiuix/navigator/adapter/LabelAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/navigator/adapter/LabelAdapter;->onPrepareViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-object p2

    :cond_33
    const/4 v2, -0x2

    if-ne p2, v2, :cond_42

    iget p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mCategoryLayoutRes:I

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lmiuix/navigator/adapter/Holder;

    invoke-direct {p2, p1}, Lmiuix/navigator/adapter/Holder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_42
    const/4 v2, -0x3

    if-ne p2, v2, :cond_51

    iget p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragPlaceholderLayoutRes:I

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lmiuix/navigator/adapter/Holder;

    invoke-direct {p2, p1}, Lmiuix/navigator/adapter/Holder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad viewType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getBaseNavigator()Lmiuix/navigator/NavigatorImpl;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getBaseNavigator()Lmiuix/navigator/Navigator;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/NavigatorImpl;

    return-object v0
.end method

.method private initResources()V
    .registers 6

    invoke-direct {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiuix/navigator/adapter/NavigationAdapter;->ATTRS:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiuix/navigator/R$layout;->miuix_navigator_item_category:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v2, Lmiuix/navigator/R$layout;->miuix_navigator_item_label:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sget v3, Lmiuix/navigator/R$layout;->miuix_navigator_item_drag_placeholder:I

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mCategoryLayoutRes:I

    if-ne v1, v0, :cond_32

    iget v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mLabelLayoutRes:I

    if-ne v2, v0, :cond_32

    iget v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragPlaceholderLayoutRes:I

    if-eq v3, v0, :cond_67

    :cond_32
    iput v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mCategoryLayoutRes:I

    iput v2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mLabelLayoutRes:I

    iput v3, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragPlaceholderLayoutRes:I

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "miuix.navigation"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/NavigationFragment;

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lmiuix/navigator/NavigationFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_67

    invoke-virtual {v0}, Lmiuix/navigator/NavigationFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-ne v1, p0, :cond_67

    invoke-virtual {v0}, Lmiuix/navigator/NavigationFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0}, Lmiuix/navigator/NavigationFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_67
    invoke-direct {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/navigator/R$dimen;->miuix_navigator_item_dragging_translation_z:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragTranslationZ:I

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragHelper:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-virtual {v0}, Lmiuix/navigator/draganddrop/DragHelper;->initResources()V

    return-void
.end method

.method private notifyNavigationItemInserted(Lmiuix/navigator/adapter/NavigationAdapterItem;)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/navigator/adapter/NavigationAdapterItem;

    if-ne p1, v2, :cond_16

    goto :goto_1c

    :cond_16
    invoke-interface {v2}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_7

    :cond_1c
    :goto_1c
    invoke-interface {p1}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method private prepareEditListActionMode(Landroid/view/ActionMode;)V
    .registers 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditAllChecked:Z

    iput v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditCheckedCount:I

    invoke-direct {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/navigator/NavigatorImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/navigator/R$plurals;->miuix_appcompat_items_selected:I

    iget v3, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditCheckedCount:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    check-cast p1, Lmiuix/view/EditActionMode;

    sget v0, Lmiuix/navigator/R$drawable;->miuix_appcompat_action_mode_title_button_cancel:I

    const v1, 0x1020019

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    sget v0, Lmiuix/navigator/R$drawable;->miuix_appcompat_action_mode_title_button_select_all:I

    const v1, 0x102001a

    invoke-interface {p1, v1, v2, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    return-void
.end method

.method private prepareEditMenuActionMode(Landroid/view/ActionMode;)V
    .registers 5

    sget v0, Lmiuix/navigator/R$string;->miuix_appcompat_edit:I

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    check-cast p1, Lmiuix/view/EditActionMode;

    sget v0, Lmiuix/navigator/R$drawable;->miuix_appcompat_action_mode_title_button_cancel:I

    const v1, 0x1020019

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    sget v0, Lmiuix/navigator/R$drawable;->miuix_appcompat_action_mode_title_button_confirm:I

    const v1, 0x102001a

    invoke-interface {p1, v1, v2, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    return-void
.end method

.method private removeNavigationAdapterItemAndNotify(Lmiuix/navigator/adapter/NavigationAdapterItem;)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/navigator/adapter/NavigationAdapterItem;

    if-ne p1, v2, :cond_26

    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mAttachedToRecyclerView:Z

    if-eqz p1, :cond_2c

    invoke-interface {v2}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_2c

    :cond_26
    invoke-interface {v2}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_7

    :cond_2c
    :goto_2c
    return-void
.end method


# virtual methods
.method public addCategory(Lmiuix/navigator/Navigator$Category;I)V
    .registers 5

    instance-of v0, p1, Lmiuix/navigator/adapter/CategoryImpl;

    if-eqz v0, :cond_29

    const/4 v0, -0x1

    if-ne p2, v0, :cond_10

    iget-object p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lmiuix/navigator/adapter/CategoryImpl;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_10
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lmiuix/navigator/adapter/CategoryImpl;

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_18
    invoke-virtual {p1}, Lmiuix/navigator/Navigator$Category;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object p2

    invoke-virtual {p2, p0}, Lmiuix/navigator/adapter/CategoryAdapter;->onAttachNavigationAdapter(Lmiuix/navigator/adapter/NavigationAdapter;)V

    iget-boolean p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mAttachedToRecyclerView:Z

    if-eqz p2, :cond_28

    check-cast p1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->notifyNavigationItemInserted(Lmiuix/navigator/adapter/NavigationAdapterItem;)V

    :cond_28
    return-void

    :cond_29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "use newCategory() to make Category instance"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addLabel(Lmiuix/navigator/Navigator$Label;I)V
    .registers 5

    instance-of v0, p1, Lmiuix/navigator/adapter/LabelImpl;

    if-eqz v0, :cond_22

    const/4 v0, -0x1

    if-ne p2, v0, :cond_10

    iget-object p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lmiuix/navigator/adapter/LabelImpl;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_10
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lmiuix/navigator/adapter/LabelImpl;

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_18
    iget-boolean p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mAttachedToRecyclerView:Z

    if-eqz p2, :cond_21

    check-cast p1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->notifyNavigationItemInserted(Lmiuix/navigator/adapter/NavigationAdapterItem;)V

    :cond_21
    return-void

    :cond_22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "use newLabel() to make Label instance"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

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

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    instance-of v2, v1, Lmiuix/navigator/adapter/CategoryImpl;

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    check-cast v1, Lmiuix/navigator/adapter/CategoryImpl;

    iget-object v3, v1, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {v3}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getNavigatorDragListener()Lmiuix/navigator/draganddrop/NavigatorDragListener;

    move-result-object v1

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    goto :goto_24

    :cond_23
    move-object v1, v3

    :goto_24
    if-nez v3, :cond_27

    goto :goto_6

    :cond_27
    new-instance v2, Lmiuix/navigator/draganddrop/DragStartFeedback;

    invoke-direct {v2}, Lmiuix/navigator/draganddrop/DragStartFeedback;-><init>()V

    invoke-interface {v3, p2, v2}, Lmiuix/navigator/draganddrop/NavigatorDragListener;->onDragStart(Landroid/view/DragEvent;Lmiuix/navigator/draganddrop/DragStartFeedback;)V

    invoke-virtual {v2}, Lmiuix/navigator/draganddrop/DragStartFeedback;->canInsert()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {v1}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->getBaseAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v3

    invoke-virtual {v3}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->multiChoiceMode()Z

    move-result v3

    if-nez v3, :cond_47

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiuix/navigator/draganddrop/DragStartFeedback;->setCanInsert(Z)V

    :cond_47
    invoke-virtual {v2}, Lmiuix/navigator/draganddrop/DragStartFeedback;->canInsert()Z

    move-result v3

    if-nez v3, :cond_53

    invoke-virtual {v2}, Lmiuix/navigator/draganddrop/DragStartFeedback;->canAccept()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_53
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_57
    return-void
.end method

.method public findNavigationItemPosition(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)I
    .registers 6

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/navigator/adapter/NavigationAdapterItem;

    invoke-interface {v2, p1}, Lmiuix/navigator/adapter/NavigationAdapterItem;->findNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)I

    move-result v3

    if-ltz v3, :cond_1b

    add-int/2addr v1, v3

    return v1

    :cond_1b
    invoke-interface {v2}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_7

    :cond_21
    const/4 p1, -0x1

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

    iget-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)I

    move-result p1

    return p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    return v0

    :cond_13
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/navigator/adapter/NavigationAdapterItem;

    instance-of v3, v2, Lmiuix/navigator/adapter/CategoryImpl;

    if-eqz v3, :cond_37

    move-object v3, v2

    check-cast v3, Lmiuix/navigator/adapter/CategoryImpl;

    iget-object v3, v3, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v3, p1, p2, v4}, Lmiuix/navigator/adapter/CategoryAdapterWrapper;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)I

    move-result v3

    if-eq v3, v1, :cond_37

    return v3

    :cond_37
    invoke-interface {v2}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    move-result v2

    sub-int/2addr p3, v2

    if-gez p3, :cond_19

    :cond_3e
    return v1
.end method

.method public getCategoryPosition(Lmiuix/navigator/adapter/CategoryImpl;)I
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/navigator/adapter/NavigationAdapterItem;

    if-ne v2, p1, :cond_16

    return v1

    :cond_16
    invoke-interface {v2}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_7

    :cond_1c
    const/4 p1, -0x1

    return p1
.end method

.method public getItemCount()I
    .registers 4

    iget-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getItemCount()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/navigator/adapter/NavigationAdapterItem;

    invoke-interface {v2}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_12

    :cond_24
    return v0
.end method

.method public getItemId(I)J
    .registers 5

    iget-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_b
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    invoke-interface {v1}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    move-result v2

    if-ge p1, v2, :cond_28

    invoke-interface {v1, p1}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_28
    sub-int/2addr p1, v2

    goto :goto_11

    :cond_2a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "pos: "

    const-string v2, " limit: "

    invoke-static {v1, p1, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemViewType(I)I
    .registers 5

    iget-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    if-eqz v0, :cond_7

    iget p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingType:I

    return p1

    :cond_7
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    invoke-interface {v1}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    move-result v2

    if-ge p1, v2, :cond_24

    invoke-interface {v1, p1}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_24
    sub-int/2addr p1, v2

    goto :goto_d

    :cond_26
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "pos: "

    const-string v2, " limit: "

    invoke-static {v1, p1, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLabelAdapter()Lmiuix/navigator/adapter/LabelAdapter;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mLabelAdapter:Lmiuix/navigator/adapter/LabelAdapter;

    return-object v0
.end method

.method public getNavigator()Lmiuix/navigator/Navigator;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    return-object v0
.end method

.method public isEditing()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    return v0
.end method

.method public notifyItemChanged(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->findNavigationItemPosition(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)I

    move-result p1

    if-ltz p1, :cond_c

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_c
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 7

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x1020019

    if-ne p2, v2, :cond_14

    iget-object p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {p2, v0}, Lmiuix/navigator/adapter/CategoryAdapter;->finishEdit(Z)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    :cond_14
    const v2, 0x102001a

    if-ne p2, v2, :cond_3b

    iget-object p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {p2}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->multiChoiceMode()Z

    move-result p2

    if-eqz p2, :cond_32

    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    iget-boolean p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditAllChecked:Z

    if-eqz p2, :cond_2d

    const/4 p2, -0x2

    goto :goto_2e

    :cond_2d
    const/4 p2, -0x1

    :goto_2e
    invoke-virtual {p1, p2}, Lmiuix/navigator/adapter/CategoryAdapter;->dispatchEditAction(I)V

    goto :goto_3a

    :cond_32
    iget-object p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {p2, v1}, Lmiuix/navigator/adapter/CategoryAdapter;->finishEdit(Z)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_3a
    return v1

    :cond_3b
    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->getEditMenu()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_71

    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->getEditMenu()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_55
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;

    invoke-virtual {v2}, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->getEditAction()I

    move-result v3

    if-ne p2, v3, :cond_55

    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v2}, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->getEditAction()I

    move-result p2

    invoke-virtual {p1, p2}, Lmiuix/navigator/adapter/CategoryAdapter;->dispatchEditAction(I)V

    return v1

    :cond_71
    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mAttachedToRecyclerView:Z

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/f;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/f;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragHelper:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-virtual {v0, p1}, Lmiuix/navigator/draganddrop/DragHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 6

    iget-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    return-void

    :cond_a
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    invoke-interface {v1}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    move-result v2

    if-ge p2, v2, :cond_26

    invoke-interface {v1, p1, p2}, Lmiuix/navigator/adapter/NavigationAdapterItem;->handleBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    return-void

    :cond_26
    sub-int/2addr p2, v2

    goto :goto_10

    :cond_28
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "pos: "

    const-string v1, " limit: "

    invoke-static {v0, p2, v1}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCheckStateChanged(ZI)V
    .registers 8

    iget-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditAllChecked:Z

    if-eq p1, v0, :cond_18

    iput-boolean p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditAllChecked:Z

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mActionMode:Landroid/view/ActionMode;

    check-cast v0, Lmiuix/view/EditActionMode;

    const v1, 0x102001a

    const/4 v2, 0x0

    if-eqz p1, :cond_13

    sget p1, Lmiuix/navigator/R$drawable;->miuix_appcompat_action_mode_title_button_deselect_all:I

    goto :goto_15

    :cond_13
    sget p1, Lmiuix/navigator/R$drawable;->miuix_appcompat_action_mode_title_button_select_all:I

    :goto_15
    invoke-interface {v0, v1, v2, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    :cond_18
    iget p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditCheckedCount:I

    if-eq p2, p1, :cond_4e

    iput p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditCheckedCount:I

    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mActionMode:Landroid/view/ActionMode;

    invoke-direct {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/navigator/NavigatorImpl;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/navigator/R$plurals;->miuix_appcompat_items_selected:I

    iget v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditCheckedCount:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    check-cast p1, Lmiuix/navigator/adapter/ListCategoryAdapter;

    iget-object p2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/navigator/adapter/ListCategoryAdapter;->dispatchSelectionChanged(Landroid/view/Menu;)V

    :cond_4e
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->initResources()V

    return-void
.end method

.method public onContextEditAction(I)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mContextMenuHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Lmiuix/navigator/adapter/CategoryAdapter;

    if-eqz v1, :cond_11

    check-cast v0, Lmiuix/navigator/adapter/CategoryAdapter;

    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mContextMenuHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v0, v1, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->dispatchContextAction(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

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

    if-gez p2, :cond_7

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/adapter/NavigationAdapter;->createInternalView(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    instance-of v2, v1, Lmiuix/navigator/adapter/CategoryImpl;

    if-eqz v2, :cond_d

    check-cast v1, Lmiuix/navigator/adapter/CategoryImpl;

    invoke-virtual {v1}, Lmiuix/navigator/adapter/CategoryImpl;->getId()I

    move-result v2

    if-eq p2, v2, :cond_2b

    invoke-virtual {v1}, Lmiuix/navigator/adapter/CategoryImpl;->getFooterId()I

    move-result v2

    if-ne p2, v2, :cond_d

    :cond_2b
    iget-object v0, v1, Lmiuix/navigator/adapter/CategoryImpl;->mAdapter:Lmiuix/navigator/adapter/CategoryAdapterWrapper;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    return-object p1

    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad viewType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mActionMode:Landroid/view/ActionMode;

    iget-boolean p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->multiChoiceMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/navigator/adapter/CategoryAdapter;->finishEdit(Z)V

    :cond_14
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mAttachedToRecyclerView:Z

    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/f;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mDragHelper:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-virtual {p1, v0}, Lmiuix/navigator/draganddrop/DragHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

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

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "miuix.navigation"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/NavigationFragment;

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lmiuix/navigator/NavigationFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-nez v1, :cond_1a

    goto :goto_69

    :cond_1a
    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/navigator/adapter/NavigationAdapterItem;

    instance-of v4, v3, Lmiuix/navigator/adapter/CategoryImpl;

    if-eqz v4, :cond_3d

    move-object v4, v3

    check-cast v4, Lmiuix/navigator/adapter/CategoryImpl;

    invoke-virtual {v4}, Lmiuix/navigator/adapter/CategoryImpl;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v4

    iget-object v5, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    if-ne v4, v5, :cond_3d

    goto :goto_43

    :cond_3d
    invoke-interface {v3}, Lmiuix/navigator/adapter/NavigationAdapterItem;->getItemCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_21

    :cond_43
    :goto_43
    const/4 v1, 0x0

    iput-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0}, Lmiuix/navigator/NavigationFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    invoke-direct {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->onEditingChanged(Z)V

    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_69
    :goto_69
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mActionMode:Landroid/view/ActionMode;

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->multiChoiceMode()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->prepareEditListActionMode(Landroid/view/ActionMode;)V

    goto :goto_15

    :cond_12
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->prepareEditMenuActionMode(Landroid/view/ActionMode;)V

    :goto_15
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->getEditMenu()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->getEditMenu()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;

    invoke-virtual {v0, p2}, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->addTo(Landroid/view/Menu;)V

    goto :goto_32

    :cond_42
    const/4 p1, 0x1

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

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "miuix.navigation"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/NavigationFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lmiuix/navigator/NavigationFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_5c

    :cond_18
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    iget-object v3, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/navigator/adapter/NavigationAdapterItem;

    instance-of v5, v4, Lmiuix/navigator/adapter/CategoryImpl;

    if-eqz v5, :cond_23

    check-cast v4, Lmiuix/navigator/adapter/CategoryImpl;

    invoke-virtual {v4}, Lmiuix/navigator/adapter/CategoryImpl;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v5

    if-ne v5, p1, :cond_23

    invoke-virtual {v4}, Lmiuix/navigator/adapter/CategoryImpl;->getId()I

    move-result p1

    iput p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingType:I

    :cond_41
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {v0}, Lmiuix/navigator/NavigationFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/Fragment;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    invoke-direct {p0}, Lmiuix/navigator/adapter/NavigationAdapter;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lmiuix/navigator/NavigatorImpl;->onEditingChanged(Z)V

    return v2

    :cond_5c
    :goto_5c
    return v1
.end method

.method public removeCategory(Lmiuix/navigator/Navigator$Category;)V
    .registers 4

    instance-of v0, p1, Lmiuix/navigator/adapter/CategoryImpl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditing:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {p1}, Lmiuix/navigator/Navigator$Category;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mEditingAdapter:Lmiuix/navigator/adapter/CategoryAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/navigator/adapter/CategoryAdapter;->finishEdit(Z)V

    :cond_17
    invoke-virtual {p1}, Lmiuix/navigator/Navigator$Category;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/navigator/adapter/CategoryAdapter;->onAttachNavigationAdapter(Lmiuix/navigator/adapter/NavigationAdapter;)V

    check-cast p1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->removeNavigationAdapterItemAndNotify(Lmiuix/navigator/adapter/NavigationAdapterItem;)V

    return-void
.end method

.method public removeLabel(Lmiuix/navigator/Navigator$Label;)V
    .registers 3

    instance-of v0, p1, Lmiuix/navigator/adapter/LabelImpl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    check-cast p1, Lmiuix/navigator/adapter/NavigationAdapterItem;

    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->removeNavigationAdapterItemAndNotify(Lmiuix/navigator/adapter/NavigationAdapterItem;)V

    return-void
.end method

.method public setContextHolder(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_b

    iget v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mContextMenuOpenCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mContextMenuOpenCount:I

    if-lez v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mContextMenuHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz v1, :cond_15

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_15
    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mContextMenuHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz p1, :cond_23

    iget v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mContextMenuOpenCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mContextMenuOpenCount:I

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_23
    return-void
.end method

.method public setLabelAdapter(Lmiuix/navigator/adapter/LabelAdapter;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mLabelAdapter:Lmiuix/navigator/adapter/LabelAdapter;

    invoke-virtual {p1, p0}, Lmiuix/navigator/adapter/LabelAdapter;->onAttachNavigationAdapter(Lmiuix/navigator/adapter/NavigationAdapter;)V

    return-void
.end method

.method public startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/adapter/NavigationAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/f;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/f;->startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method
