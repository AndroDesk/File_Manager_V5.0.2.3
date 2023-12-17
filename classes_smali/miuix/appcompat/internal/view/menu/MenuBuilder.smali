.class public Lmiuix/appcompat/internal/view/menu/MenuBuilder;
.super Lcom/android/internal/view/menu/MenuBuilder;
.source "MenuBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;,
        Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field public static final CATEGORY_MASK:I = -0x10000

.field public static final CATEGORY_SHIFT:I = 0x10

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field public static final USER_MASK:I = 0xffff

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field public mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field public mHeaderTitle:Ljava/lang/CharSequence;

.field public mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/internal/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final menuItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_a

    .line 7
    sput-object v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_a
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 7
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 9
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 11
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 13
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 27
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;

    .line 31
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 34
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->menuItemComparator:Ljava/util/Comparator;

    .line 36
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    .line 46
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    .line 53
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 58
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    .line 70
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 75
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 77
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 80
    return-void
.end method

.method private dispatchPresenterUpdate(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_30

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 31
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 37
    if-nez v2, :cond_2c

    .line 39
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    goto :goto_12

    .line 45
    :cond_2c
    invoke-interface {v2, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->updateMenuView(Z)V

    .line 48
    goto :goto_12

    .line 49
    :cond_30
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 52
    return-void
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    const-string v0, "android:menu:presenters"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_43

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_43

    .line 18
    :cond_11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_43

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 36
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 42
    if-nez v2, :cond_31

    .line 44
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    goto :goto_17

    .line 50
    :cond_31
    invoke-interface {v2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->getId()I

    .line 53
    move-result v1

    .line 54
    if-lez v1, :cond_17

    .line 56
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/os/Parcelable;

    .line 62
    if-eqz v1, :cond_17

    .line 64
    invoke-interface {v2, v1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 67
    goto :goto_17

    .line 68
    :cond_43
    :goto_43
    return-void
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 15
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 21
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_3e

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 33
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 39
    if-nez v3, :cond_2e

    .line 41
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    goto :goto_14

    .line 47
    :cond_2e
    invoke-interface {v3}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->getId()I

    .line 50
    move-result v2

    .line 51
    if-lez v2, :cond_14

    .line 53
    invoke-interface {v3}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_14

    .line 59
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    goto :goto_14

    .line 63
    :cond_3e
    const-string v1, "android:menu:presenters"

    .line 65
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 68
    return-void
.end method

.method private dispatchSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuPresenter;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    if-eqz p2, :cond_10

    .line 13
    invoke-interface {p2, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    .line 16
    move-result v1

    .line 17
    :cond_10
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p2

    .line 23
    :cond_16
    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_38

    .line 29
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 35
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 41
    if-nez v2, :cond_30

    .line 43
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 48
    goto :goto_16

    .line 49
    :cond_30
    if-nez v1, :cond_16

    .line 51
    invoke-interface {v2, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z

    .line 54
    move-result v0

    .line 55
    move v1, v0

    .line 56
    goto :goto_16

    .line 57
    :cond_38
    return v1
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_6
    if-ltz v0, :cond_1a

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 15
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getOrdering()I

    .line 18
    move-result v1

    .line 19
    if-gt v1, p1, :cond_17

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 23
    return v0

    .line 24
    :cond_17
    add-int/lit8 v0, v0, -0x1

    .line 26
    goto :goto_6

    .line 27
    :cond_1a
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method private static getOrdering(I)I
    .registers 4

    .line 1
    const/high16 v0, -0x10000

    .line 3
    and-int/2addr v0, p0

    .line 4
    shr-int/lit8 v0, v0, 0x10

    .line 6
    if-ltz v0, :cond_16

    .line 8
    sget-object v1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    .line 10
    array-length v2, v1

    .line 11
    if-ge v0, v2, :cond_16

    .line 13
    aget v0, v1, v0

    .line 15
    shl-int/lit8 v0, v0, 0x10

    .line 17
    const v1, 0xffff

    .line 20
    and-int/2addr p0, v1

    .line 21
    or-int/2addr p0, v0

    .line 22
    return p0

    .line 23
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string v0, "order does not contain a valid category."

    .line 27
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0
.end method

.method private removeItemAtInt(IZ)V
    .registers 4

    .line 1
    if-ltz p1, :cond_16

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_b

    .line 11
    goto :goto_16

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 17
    if-eqz p2, :cond_16

    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 23
    :cond_16
    :goto_16
    return-void
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p5, :cond_e

    .line 8
    iput-object p5, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 10
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 12
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 14
    goto :goto_2a

    .line 15
    :cond_e
    if-lez p1, :cond_17

    .line 17
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    if-eqz p2, :cond_1b

    .line 26
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 28
    :cond_1b
    :goto_1b
    if-lez p3, :cond_24

    .line 30
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 36
    goto :goto_28

    .line 37
    :cond_24
    if-eqz p4, :cond_28

    .line 39
    iput-object p4, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 41
    :cond_28
    :goto_28
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 43
    :goto_2a
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 47
    return-void
.end method

.method private setShortcutsVisibleInner(Z)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_18

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 6
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 12
    if-eq p1, v0, :cond_18

    .line 14
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 16
    sget v1, Lmiuix/appcompat/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    .line 18
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_18

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    :goto_19
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 28
    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 3

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 5

    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, v0, v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Landroid/view/MenuItem;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result v0

    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_f

    .line 3
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 4
    :cond_f
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v0

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 16

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    .line 11
    move-result-object p4

    .line 12
    if-eqz p4, :cond_12

    .line 14
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v2, v1

    .line 20
    :goto_13
    and-int/lit8 p7, p7, 0x1

    .line 22
    if-nez p7, :cond_1a

    .line 24
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeGroup(I)V

    .line 27
    :cond_1a
    :goto_1a
    if-ge v1, v2, :cond_5e

    .line 29
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p7

    .line 33
    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 35
    new-instance v3, Landroid/content/Intent;

    .line 37
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 39
    if-gez v4, :cond_2a

    .line 41
    move-object v4, p6

    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    aget-object v4, p5, v4

    .line 45
    :goto_2c
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 48
    new-instance v4, Landroid/content/ComponentName;

    .line 50
    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 52
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 54
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 56
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 58
    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {p0, p1, p2, p3, v4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 75
    move-result-object v5

    .line 76
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 79
    move-result-object v4

    .line 80
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 83
    move-result-object v3

    .line 84
    if-eqz p8, :cond_5b

    .line 86
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 88
    if-ltz p7, :cond_5b

    .line 90
    aput-object v3, p8, p7

    .line 92
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    .line 94
    goto :goto_1a

    .line 95
    :cond_5e
    return v2
.end method

.method public addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 15

    .line 1
    invoke-static {p3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getOrdering(I)I

    .line 4
    move-result v8

    .line 5
    new-instance v9, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 7
    iget v7, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 9
    move-object v0, v9

    .line 10
    move-object v1, p0

    .line 11
    move v2, p1

    .line 12
    move v3, p2

    .line 13
    move v4, p3

    .line 14
    move v5, v8

    .line 15
    move-object v6, p4

    .line 16
    invoke-direct/range {v0 .. v7}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 19
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 21
    if-eqz p1, :cond_19

    .line 23
    invoke-virtual {v9, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 26
    :cond_19
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 28
    invoke-static {p1, v8}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    .line 31
    move-result p2

    .line 32
    invoke-virtual {p1, p2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 35
    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 39
    return-object v9
.end method

.method public addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 13
    invoke-interface {p1, v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 19
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 4
    new-instance p2, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    .line 5
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setSubMenu(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)V

    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public changeMenuMode()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 8
    :cond_7
    return-void
.end method

.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 17
    return-void
.end method

.method public clearAll()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clear()V

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clearHeader()V

    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 13
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 15
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 18
    return-void
.end method

.method public clearHeader()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 6
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 12
    return-void
.end method

.method public close()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    .line 5
    return-void
.end method

.method public final closeInternal(Z)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2c

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 27
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 33
    if-nez v2, :cond_28

    .line 35
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 40
    goto :goto_e

    .line 41
    :cond_28
    invoke-interface {v2, p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 44
    goto :goto_e

    .line 45
    :cond_2c
    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 48
    return-void
.end method

.method public collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_3f

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 12
    if-eq v0, p1, :cond_e

    .line 14
    goto :goto_3f

    .line 15
    :cond_e
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_37

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 36
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 42
    if-nez v3, :cond_31

    .line 44
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    goto :goto_17

    .line 50
    :cond_31
    invoke-interface {v3, p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_17

    .line 56
    :cond_37
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 59
    if-eqz v1, :cond_3f

    .line 61
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 64
    :cond_3f
    :goto_3f
    return v1
.end method

.method public dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_33

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 32
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 38
    if-nez v3, :cond_2d

    .line 40
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    goto :goto_13

    .line 46
    :cond_2d
    invoke-interface {v3, p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_13

    .line 52
    :cond_33
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 55
    if-eqz v1, :cond_3a

    .line 57
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 59
    :cond_3a
    return v1
.end method

.method public findGroupIndex(I)I
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result p1

    return p1
.end method

.method public findGroupIndex(II)I
    .registers 5

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    :goto_7
    if-ge p2, v0, :cond_1b

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 4
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_18

    return p2

    :cond_18
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_1b
    const/4 p1, -0x1

    return p1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_2a

    .line 8
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 16
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    .line 19
    move-result v3

    .line 20
    if-ne v3, p1, :cond_16

    .line 22
    return-object v2

    .line 23
    :cond_16
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_27

    .line 29
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_27

    .line 39
    return-object v2

    .line 40
    :cond_27
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_5

    .line 43
    :cond_2a
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method public findItemIndex(I)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_19

    .line 8
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 16
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    .line 19
    move-result v2

    .line 20
    if-ne v2, p1, :cond_16

    .line 22
    return v1

    .line 23
    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_5

    .line 26
    :cond_19
    const/4 p1, -0x1

    .line 27
    return p1
.end method

.method public findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_10

    .line 16
    return-object v2

    .line 17
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    .line 20
    move-result v1

    .line 21
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    .line 23
    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 26
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result p2

    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    if-ne p2, v4, :cond_2b

    .line 37
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 43
    return-object p1

    .line 44
    :cond_2b
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 47
    move-result p2

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v0

    .line 52
    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_68

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 64
    if-eqz p2, :cond_46

    .line 66
    invoke-virtual {v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    .line 69
    move-result v6

    .line 70
    goto :goto_4a

    .line 71
    :cond_46
    invoke-virtual {v4}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    .line 74
    move-result v6

    .line 75
    :goto_4a
    iget-object v7, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 77
    aget-char v8, v7, v5

    .line 79
    if-ne v6, v8, :cond_54

    .line 81
    and-int/lit8 v8, v1, 0x2

    .line 83
    if-eqz v8, :cond_67

    .line 85
    :cond_54
    const/4 v8, 0x2

    .line 86
    aget-char v7, v7, v8

    .line 88
    if-ne v6, v7, :cond_5d

    .line 90
    and-int/lit8 v7, v1, 0x2

    .line 92
    if-nez v7, :cond_67

    .line 94
    :cond_5d
    if-eqz p2, :cond_33

    .line 96
    const/16 v7, 0x8

    .line 98
    if-ne v6, v7, :cond_33

    .line 100
    const/16 v6, 0x43

    .line 102
    if-ne p1, v6, :cond_33

    .line 104
    :cond_67
    return-object v4

    .line 105
    :cond_68
    return-object v2
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    .line 8
    move-result v1

    .line 9
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    .line 11
    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 14
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 17
    move-result v3

    .line 18
    const/16 v4, 0x43

    .line 20
    if-nez v3, :cond_18

    .line 22
    if-eq p2, v4, :cond_18

    .line 24
    return-void

    .line 25
    :cond_18
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v3

    .line 31
    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_68

    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 43
    invoke-virtual {v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_39

    .line 49
    invoke-virtual {v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 55
    invoke-virtual {v6, p1, p2, p3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 58
    :cond_39
    if-eqz v0, :cond_40

    .line 60
    invoke-virtual {v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    .line 63
    move-result v6

    .line 64
    goto :goto_44

    .line 65
    :cond_40
    invoke-virtual {v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    .line 68
    move-result v6

    .line 69
    :goto_44
    and-int/lit8 v7, v1, 0x5

    .line 71
    if-nez v7, :cond_1e

    .line 73
    if-eqz v6, :cond_1e

    .line 75
    iget-object v7, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 77
    const/4 v8, 0x0

    .line 78
    aget-char v8, v7, v8

    .line 80
    if-eq v6, v8, :cond_5e

    .line 82
    const/4 v8, 0x2

    .line 83
    aget-char v7, v7, v8

    .line 85
    if-eq v6, v7, :cond_5e

    .line 87
    if-eqz v0, :cond_1e

    .line 89
    const/16 v7, 0x8

    .line 91
    if-ne v6, v7, :cond_1e

    .line 93
    if-ne p2, v4, :cond_1e

    .line 95
    :cond_5e
    invoke-virtual {v5}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isEnabled()Z

    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_1e

    .line 101
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_1e

    .line 105
    :cond_68
    return-void
.end method

.method public flagActionItems()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_2d

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 32
    if-nez v4, :cond_27

    .line 34
    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    goto :goto_d

    .line 40
    :cond_27
    invoke-interface {v4}, Lmiuix/appcompat/internal/view/menu/MenuPresenter;->flagActionItems()Z

    .line 43
    move-result v3

    .line 44
    or-int/2addr v2, v3

    .line 45
    goto :goto_d

    .line 46
    :cond_2d
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 56
    if-eqz v2, :cond_5f

    .line 58
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v0

    .line 66
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_68

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 78
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isActionButton()Z

    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_59

    .line 84
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    goto :goto_41

    .line 90
    :cond_59
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    goto :goto_41

    .line 96
    :cond_5f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    :cond_68
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 107
    return-void
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 6
    return-object v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .registers 2

    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getCallback()Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public getExpandedItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 3
    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/MenuItem;

    .line 9
    return-object p1
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 6
    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 3
    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 3
    return-object v0
.end method

.method public getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 1

    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 7
    return-object v0

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2a

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 31
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isVisible()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_12

    .line 37
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_12

    .line 43
    :cond_2a
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 45
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->menuItemComparator:Ljava/util/Comparator;

    .line 47
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 50
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 53
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 56
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 58
    return-object v0
.end method

.method public hasVisibleItems()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    if-ge v2, v0, :cond_1b

    .line 9
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 17
    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isVisible()Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_18

    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_6

    .line 28
    :cond_1b
    return v1
.end method

.method isQwertyMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 3
    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    :goto_9
    return p1
.end method

.method public isShortcutsVisible()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 3
    return v0
.end method

.method public onItemActionRequestChanged(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 7
    return-void
.end method

.method public onItemVisibleChanged(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 7
    return-void
.end method

.method public onItemsChanged(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_f

    .line 6
    if-eqz p1, :cond_b

    .line 8
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 10
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 12
    :cond_b
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    iput-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 18
    :goto_11
    return-void
.end method

.method public performIdentifierAction(II)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lmiuix/appcompat/internal/view/menu/MenuPresenter;I)Z

    move-result p1

    return p1
.end method

.method public performItemAction(Landroid/view/MenuItem;Lmiuix/appcompat/internal/view/menu/MenuPresenter;I)Z
    .registers 10

    .line 2
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    const/4 v0, 0x0

    if-eqz p1, :cond_71

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_71

    .line 4
    :cond_c
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->invoke()Z

    move-result v1

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    .line 6
    invoke-virtual {v2}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1f

    move v4, v3

    goto :goto_20

    :cond_1f
    move v4, v0

    .line 7
    :goto_20
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 8
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->expandActionView()Z

    move-result p1

    or-int/2addr v1, p1

    if-eqz v1, :cond_70

    .line 9
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    goto :goto_70

    .line 10
    :cond_31
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_42

    if-eqz v4, :cond_3a

    goto :goto_42

    :cond_3a
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_70

    .line 11
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    goto :goto_70

    :cond_42
    :goto_42
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_49

    .line 12
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    .line 13
    :cond_49
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_5b

    .line 14
    new-instance p3, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p0, p1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    invoke-virtual {p1, p3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setSubMenu(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)V

    .line 15
    :cond_5b
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    if-eqz v4, :cond_66

    .line 16
    invoke-virtual {v2, p1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 17
    :cond_66
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuPresenter;)Z

    move-result p1

    or-int/2addr v1, p1

    if-nez v1, :cond_70

    .line 18
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    :cond_70
    :goto_70
    return v1

    :cond_71
    :goto_71
    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_b

    .line 7
    invoke-virtual {p0, p1, p3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 10
    move-result p1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    and-int/lit8 p2, p3, 0x2

    .line 15
    if-eqz p2, :cond_14

    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    .line 21
    :cond_14
    return p1
.end method

.method public removeGroup(I)V
    .registers 7

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findGroupIndex(I)I

    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_2a

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v1

    .line 13
    sub-int/2addr v1, v0

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_f
    add-int/lit8 v4, v3, 0x1

    .line 18
    if-ge v3, v1, :cond_26

    .line 20
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 28
    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    .line 31
    move-result v3

    .line 32
    if-ne v3, p1, :cond_26

    .line 34
    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 37
    move v3, v4

    .line 38
    goto :goto_f

    .line 39
    :cond_26
    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 43
    :cond_2a
    return-void
.end method

.method public removeItem(I)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 9
    return-void
.end method

.method public removeItemAt(I)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 5
    return-void
.end method

.method public removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_22

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuPresenter;

    .line 25
    if-eqz v2, :cond_1c

    .line 27
    if-ne v2, p1, :cond_6

    .line 29
    :cond_1c
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    goto :goto_6

    .line 35
    :cond_22
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .registers 9

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_10
    if-ge v2, v1, :cond_38

    .line 19
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_26

    .line 29
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 32
    move-result v5

    .line 33
    const/4 v6, -0x1

    .line 34
    if-eq v5, v6, :cond_26

    .line 36
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 39
    :cond_26
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_35

    .line 45
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 51
    invoke-virtual {v3, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 54
    :cond_35
    add-int/lit8 v2, v2, 0x1

    .line 56
    goto :goto_10

    .line 57
    :cond_38
    const-string v0, "android:menu:expandedactionview"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 62
    move-result p1

    .line 63
    if-lez p1, :cond_49

    .line 65
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_49

    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 74
    :cond_49
    return-void
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v0, :cond_44

    .line 9
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 12
    move-result-object v3

    .line 13
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 16
    move-result-object v4

    .line 17
    if-eqz v4, :cond_32

    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 22
    move-result v5

    .line 23
    const/4 v6, -0x1

    .line 24
    if-eq v5, v6, :cond_32

    .line 26
    if-nez v1, :cond_20

    .line 28
    new-instance v1, Landroid/util/SparseArray;

    .line 30
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 33
    :cond_20
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 36
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_32

    .line 42
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    .line 45
    move-result v4

    .line 46
    const-string v5, "android:menu:expandedactionview"

    .line 48
    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 51
    :cond_32
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_41

    .line 57
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 63
    invoke-virtual {v3, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 66
    :cond_41
    add-int/lit8 v2, v2, 0x1

    .line 68
    goto :goto_6

    .line 69
    :cond_44
    if-eqz v1, :cond_4d

    .line 71
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 78
    :cond_4d
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;

    .line 3
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3
    return-void
.end method

.method public setDefaultShowAsAction(I)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 3
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .registers 6

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v1

    .line 11
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_33

    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 23
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    .line 26
    move-result v3

    .line 27
    if-ne v3, v0, :cond_a

    .line 29
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_23

    .line 35
    goto :goto_a

    .line 36
    :cond_23
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->isCheckable()Z

    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2a

    .line 42
    goto :goto_a

    .line 43
    :cond_2a
    if-ne v2, p1, :cond_2e

    .line 45
    const/4 v3, 0x1

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    const/4 v3, 0x0

    .line 48
    :goto_2f
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    .line 51
    goto :goto_a

    .line 52
    :cond_33
    return-void
.end method

.method public setForceShowOptionalIcon(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 3
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1f

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 19
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    .line 22
    move-result v2

    .line 23
    if-ne v2, p1, :cond_6

    .line 25
    invoke-virtual {v1, p3}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 28
    invoke-virtual {v1, p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 31
    goto :goto_6

    .line 32
    :cond_1f
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1c

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 19
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    .line 22
    move-result v2

    .line 23
    if-ne v2, p1, :cond_6

    .line 25
    invoke-virtual {v1, p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 28
    goto :goto_6

    .line 29
    :cond_1c
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v2, :cond_22

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 21
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getGroupId()I

    .line 24
    move-result v4

    .line 25
    if-ne v4, p1, :cond_7

    .line 27
    invoke-virtual {v2, p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_7

    .line 33
    move v1, v3

    .line 34
    goto :goto_7

    .line 35
    :cond_22
    if-eqz v1, :cond_27

    .line 37
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 40
    :cond_27
    return-void
.end method

.method public setHeaderIconInt(I)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public setHeaderTitleInt(I)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public setHeaderTitleInt(Ljava/lang/CharSequence;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public setHeaderViewInt(Landroid/view/View;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 8

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v5, p1

    .line 7
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 10
    return-object p0
.end method

.method setOptionalIconsVisible(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 3
    return-void
.end method

.method public setPreventDispatchingItemsChanged(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 3
    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 7
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 13
    return-void
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public startDispatchingItemsChanged()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 4
    iget-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 6
    if-eqz v1, :cond_d

    .line 8
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 14
    :cond_d
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 3
    if-nez v0, :cond_a

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 11
    :cond_a
    return-void
.end method

.method public updateVisibleItemCountLimit()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 5
    return-void
.end method
