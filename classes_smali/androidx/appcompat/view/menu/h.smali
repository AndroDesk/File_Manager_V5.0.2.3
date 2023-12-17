.class public Landroidx/appcompat/view/menu/h;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Lh0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/h$b;,
        Landroidx/appcompat/view/menu/h$a;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/j;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroidx/appcompat/view/menu/h$a;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Landroidx/appcompat/view/menu/j;

.field private mGroupDividerEnabled:Z

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
            "Landroidx/appcompat/view/menu/j;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/j;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mOverrideVisibleItems:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/view/menu/n;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mStructureChangedWhileDispatchPrevented:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/j;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/j;",
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
    sput-object v0, Landroidx/appcompat/view/menu/h;->sCategoryToOrder:[I

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
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/view/menu/h;->mDefaultShowAsAction:I

    .line 7
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mPreventDispatchingItemsChanged:Z

    .line 9
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mItemsChangedWhileDispatchPrevented:Z

    .line 11
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mStructureChangedWhileDispatchPrevented:Z

    .line 13
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mOptionalIconsVisible:Z

    .line 15
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mIsClosing:Z

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iput-object v1, p0, Landroidx/appcompat/view/menu/h;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 24
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 29
    iput-object v1, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mGroupDividerEnabled:Z

    .line 33
    iput-object p1, p0, Landroidx/appcompat/view/menu/h;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Landroidx/appcompat/view/menu/h;->mResources:Landroid/content/res/Resources;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    .line 43
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    .line 50
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/appcompat/view/menu/h;->mVisibleItems:Ljava/util/ArrayList;

    .line 55
    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h;->mIsVisibleItemsStale:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iput-object v0, p0, Landroidx/appcompat/view/menu/h;->mActionItems:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    .line 67
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iput-object v0, p0, Landroidx/appcompat/view/menu/h;->mNonActionItems:Ljava/util/ArrayList;

    .line 72
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h;->mIsActionItemsStale:Z

    .line 74
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/h;->setShortcutsVisibleInner(Z)V

    .line 77
    return-void
.end method

.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroidx/appcompat/view/menu/j;
    .registers 16

    .line 1
    new-instance v8, Landroidx/appcompat/view/menu/j;

    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    move-object v6, p5

    .line 10
    move v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Landroidx/appcompat/view/menu/j;-><init>(Landroidx/appcompat/view/menu/h;IIIILjava/lang/CharSequence;I)V

    .line 14
    return-object v8
.end method

.method private dispatchPresenterUpdate(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    .line 13
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v2, Landroidx/appcompat/view/menu/n;

    .line 37
    if-nez v2, :cond_2c

    .line 39
    iget-object v2, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    goto :goto_12

    .line 45
    :cond_2c
    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/n;->updateMenuView(Z)V

    .line 48
    goto :goto_12

    .line 49
    :cond_30
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

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
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v2, Landroidx/appcompat/view/menu/n;

    .line 42
    if-nez v2, :cond_31

    .line 44
    iget-object v2, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    goto :goto_17

    .line 50
    :cond_31
    invoke-interface {v2}, Landroidx/appcompat/view/menu/n;->getId()I

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
    invoke-interface {v2, v1}, Landroidx/appcompat/view/menu/n;->onRestoreInstanceState(Landroid/os/Parcelable;)V

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
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    iget-object v1, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v3, Landroidx/appcompat/view/menu/n;

    .line 39
    if-nez v3, :cond_2e

    .line 41
    iget-object v3, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    goto :goto_14

    .line 47
    :cond_2e
    invoke-interface {v3}, Landroidx/appcompat/view/menu/n;->getId()I

    .line 50
    move-result v2

    .line 51
    if-lez v2, :cond_14

    .line 53
    invoke-interface {v3}, Landroidx/appcompat/view/menu/n;->onSaveInstanceState()Landroid/os/Parcelable;

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

.method private dispatchSubMenuSelected(Landroidx/appcompat/view/menu/s;Landroidx/appcompat/view/menu/n;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/n;->onSubMenuSelected(Landroidx/appcompat/view/menu/s;)Z

    .line 16
    move-result v1

    .line 17
    :cond_10
    iget-object p2, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v2, Landroidx/appcompat/view/menu/n;

    .line 41
    if-nez v2, :cond_30

    .line 43
    iget-object v2, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 48
    goto :goto_16

    .line 49
    :cond_30
    if-nez v1, :cond_16

    .line 51
    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/n;->onSubMenuSelected(Landroidx/appcompat/view/menu/s;)Z

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
            "Landroidx/appcompat/view/menu/j;",
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
    if-ltz v0, :cond_18

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/appcompat/view/menu/j;

    .line 15
    iget v1, v1, Landroidx/appcompat/view/menu/j;->d:I

    .line 17
    if-gt v1, p1, :cond_15

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_15
    add-int/lit8 v0, v0, -0x1

    .line 24
    goto :goto_6

    .line 25
    :cond_18
    const/4 p0, 0x0

    .line 26
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
    sget-object v1, Landroidx/appcompat/view/menu/h;->sCategoryToOrder:[I

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
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

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
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 17
    if-eqz p2, :cond_16

    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 23
    :cond_16
    :goto_16
    return-void
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p5, :cond_e

    .line 8
    iput-object p5, p0, Landroidx/appcompat/view/menu/h;->mHeaderView:Landroid/view/View;

    .line 10
    iput-object v1, p0, Landroidx/appcompat/view/menu/h;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 12
    iput-object v1, p0, Landroidx/appcompat/view/menu/h;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 14
    goto :goto_2e

    .line 15
    :cond_e
    if-lez p1, :cond_17

    .line 17
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Landroidx/appcompat/view/menu/h;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    if-eqz p2, :cond_1b

    .line 26
    iput-object p2, p0, Landroidx/appcompat/view/menu/h;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 28
    :cond_1b
    :goto_1b
    if-lez p3, :cond_28

    .line 30
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->getContext()Landroid/content/Context;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Landroidx/appcompat/view/menu/h;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 40
    goto :goto_2c

    .line 41
    :cond_28
    if-eqz p4, :cond_2c

    .line 43
    iput-object p4, p0, Landroidx/appcompat/view/menu/h;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 45
    :cond_2c
    :goto_2c
    iput-object v1, p0, Landroidx/appcompat/view/menu/h;->mHeaderView:Landroid/view/View;

    .line 47
    :goto_2e
    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 51
    return-void
.end method

.method private setShortcutsVisibleInner(Z)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1c

    .line 4
    iget-object p1, p0, Landroidx/appcompat/view/menu/h;->mResources:Landroid/content/res/Resources;

    .line 6
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 12
    if-eq p1, v0, :cond_1c

    .line 14
    iget-object p1, p0, Landroidx/appcompat/view/menu/h;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Landroidx/appcompat/view/menu/h;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {p1, v1}, Lm0/j0;->b(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1c

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    :goto_1d
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mShortcutsVisible:Z

    .line 32
    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/h;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6

    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/h;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 5

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/h;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/h;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 16

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mContext:Landroid/content/Context;

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
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/h;->removeGroup(I)V

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
    invoke-virtual {p0, p1, p2, p3, v4}, Landroidx/appcompat/view/menu/h;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

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
    .registers 13

    .line 1
    invoke-static {p3}, Landroidx/appcompat/view/menu/h;->getOrdering(I)I

    .line 4
    move-result v7

    .line 5
    iget v6, p0, Landroidx/appcompat/view/menu/h;->mDefaultShowAsAction:I

    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    move v2, p2

    .line 10
    move v3, p3

    .line 11
    move v4, v7

    .line 12
    move-object v5, p4

    .line 13
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/h;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroidx/appcompat/view/menu/j;

    .line 16
    move-result-object p1

    .line 17
    iget-object p2, p0, Landroidx/appcompat/view/menu/h;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 19
    if-eqz p2, :cond_16

    .line 21
    iput-object p2, p1, Landroidx/appcompat/view/menu/j;->D:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 23
    :cond_16
    iget-object p2, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 25
    invoke-static {p2, v7}, Landroidx/appcompat/view/menu/h;->findInsertIndex(Ljava/util/ArrayList;I)I

    .line 28
    move-result p3

    .line 29
    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 36
    return-object p1
.end method

.method public addMenuPresenter(Landroidx/appcompat/view/menu/n;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/n;Landroid/content/Context;)V

    return-void
.end method

.method public addMenuPresenter(Landroidx/appcompat/view/menu/n;Landroid/content/Context;)V
    .registers 5

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p1, p2, p0}, Landroidx/appcompat/view/menu/n;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/h;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h;->mIsActionItemsStale:Z

    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/h;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6

    .line 8
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/h;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/h;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/j;

    .line 4
    new-instance p2, Landroidx/appcompat/view/menu/s;

    iget-object p3, p0, Landroidx/appcompat/view/menu/h;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Landroidx/appcompat/view/menu/s;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)V

    .line 5
    iput-object p2, p1, Landroidx/appcompat/view/menu/j;->o:Landroidx/appcompat/view/menu/s;

    .line 6
    iget-object p1, p1, Landroidx/appcompat/view/menu/j;->e:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/s;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/h;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public changeMenuMode()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mCallback:Landroidx/appcompat/view/menu/h$a;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p0}, Landroidx/appcompat/view/menu/h$a;->onMenuModeChange(Landroidx/appcompat/view/menu/h;)V

    .line 8
    :cond_7
    return-void
.end method

.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mExpandedItem:Landroidx/appcompat/view/menu/j;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h;->collapseItemActionView(Landroidx/appcompat/view/menu/j;)Z

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 17
    return-void
.end method

.method public clearAll()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mPreventDispatchingItemsChanged:Z

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->clear()V

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->clearHeader()V

    .line 10
    iget-object v1, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/h;->mPreventDispatchingItemsChanged:Z

    .line 18
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/h;->mItemsChangedWhileDispatchPrevented:Z

    .line 20
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/h;->mStructureChangedWhileDispatchPrevented:Z

    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 25
    return-void
.end method

.method public clearHeader()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/appcompat/view/menu/h;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object v0, p0, Landroidx/appcompat/view/menu/h;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 6
    iput-object v0, p0, Landroidx/appcompat/view/menu/h;->mHeaderView:Landroid/view/View;

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 12
    return-void
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h;->close(Z)V

    return-void
.end method

.method public final close(Z)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mIsClosing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mIsClosing:Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/n;

    if-nez v2, :cond_28

    .line 5
    iget-object v2, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 6
    :cond_28
    invoke-interface {v2, p0, p1}, Landroidx/appcompat/view/menu/n;->onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V

    goto :goto_e

    :cond_2c
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h;->mIsClosing:Z

    return-void
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/j;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_3f

    .line 10
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mExpandedItem:Landroidx/appcompat/view/menu/j;

    .line 12
    if-eq v0, p1, :cond_e

    .line 14
    goto :goto_3f

    .line 15
    :cond_e
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    .line 18
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v3, Landroidx/appcompat/view/menu/n;

    .line 42
    if-nez v3, :cond_31

    .line 44
    iget-object v3, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    goto :goto_17

    .line 50
    :cond_31
    invoke-interface {v3, p0, p1}, Landroidx/appcompat/view/menu/n;->collapseItemActionView(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_17

    .line 56
    :cond_37
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    .line 59
    if-eqz v1, :cond_3f

    .line 61
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Landroidx/appcompat/view/menu/h;->mExpandedItem:Landroidx/appcompat/view/menu/j;

    .line 64
    :cond_3f
    :goto_3f
    return v1
.end method

.method public dispatchMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mCallback:Landroidx/appcompat/view/menu/h$a;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/h$a;->onMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z

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

.method public expandItemActionView(Landroidx/appcompat/view/menu/j;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    .line 14
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v3, Landroidx/appcompat/view/menu/n;

    .line 38
    if-nez v3, :cond_2d

    .line 40
    iget-object v3, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    goto :goto_13

    .line 46
    :cond_2d
    invoke-interface {v3, p0, p1}, Landroidx/appcompat/view/menu/n;->expandItemActionView(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_13

    .line 52
    :cond_33
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    .line 55
    if-eqz v1, :cond_3a

    .line 57
    iput-object p1, p0, Landroidx/appcompat/view/menu/h;->mExpandedItem:Landroidx/appcompat/view/menu/j;

    .line 59
    :cond_3a
    return v1
.end method

.method public findGroupIndex(I)I
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/h;->findGroupIndex(II)I

    move-result p1

    return p1
.end method

.method public findGroupIndex(II)I
    .registers 5

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->size()I

    move-result v0

    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    :goto_7
    if-ge p2, v0, :cond_19

    .line 3
    iget-object v1, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/j;

    .line 4
    iget v1, v1, Landroidx/appcompat/view/menu/j;->b:I

    if-ne v1, p1, :cond_16

    return p2

    :cond_16
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_26

    .line 8
    iget-object v2, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroidx/appcompat/view/menu/j;

    .line 16
    iget v3, v2, Landroidx/appcompat/view/menu/j;->a:I

    .line 18
    if-ne v3, p1, :cond_14

    .line 20
    return-object v2

    .line 21
    :cond_14
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/j;->hasSubMenu()Z

    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_23

    .line 27
    iget-object v2, v2, Landroidx/appcompat/view/menu/j;->o:Landroidx/appcompat/view/menu/s;

    .line 29
    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_23

    .line 35
    return-object v2

    .line 36
    :cond_23
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_5

    .line 39
    :cond_26
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method public findItemIndex(I)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_17

    .line 8
    iget-object v2, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroidx/appcompat/view/menu/j;

    .line 16
    iget v2, v2, Landroidx/appcompat/view/menu/j;->a:I

    .line 18
    if-ne v2, p1, :cond_14

    .line 20
    return v1

    .line 21
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_5

    .line 24
    :cond_17
    const/4 p1, -0x1

    .line 25
    return p1
.end method

.method public findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/j;
    .registers 14

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/h;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

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
    check-cast p1, Landroidx/appcompat/view/menu/j;

    .line 43
    return-object p1

    .line 44
    :cond_2b
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->isQwertyMode()Z

    .line 47
    move-result v4

    .line 48
    move v6, v5

    .line 49
    :goto_30
    if-ge v6, p2, :cond_60

    .line 51
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Landroidx/appcompat/view/menu/j;

    .line 57
    if-eqz v4, :cond_3d

    .line 59
    iget-char v8, v7, Landroidx/appcompat/view/menu/j;->j:C

    .line 61
    goto :goto_3f

    .line 62
    :cond_3d
    iget-char v8, v7, Landroidx/appcompat/view/menu/j;->h:C

    .line 64
    :goto_3f
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 66
    aget-char v10, v9, v5

    .line 68
    if-ne v8, v10, :cond_49

    .line 70
    and-int/lit8 v10, v1, 0x2

    .line 72
    if-eqz v10, :cond_5c

    .line 74
    :cond_49
    const/4 v10, 0x2

    .line 75
    aget-char v9, v9, v10

    .line 77
    if-ne v8, v9, :cond_52

    .line 79
    and-int/lit8 v9, v1, 0x2

    .line 81
    if-nez v9, :cond_5c

    .line 83
    :cond_52
    if-eqz v4, :cond_5d

    .line 85
    const/16 v9, 0x8

    .line 87
    if-ne v8, v9, :cond_5d

    .line 89
    const/16 v8, 0x43

    .line 91
    if-ne p1, v8, :cond_5d

    .line 93
    :cond_5c
    return-object v7

    .line 94
    :cond_5d
    add-int/lit8 v6, v6, 0x1

    .line 96
    goto :goto_30

    .line 97
    :cond_60
    return-object v2
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/j;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->isQwertyMode()Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getModifiers()I

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
    iget-object v3, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v3

    .line 31
    const/4 v5, 0x0

    .line 32
    move v6, v5

    .line 33
    :goto_20
    if-ge v6, v3, :cond_71

    .line 35
    iget-object v7, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Landroidx/appcompat/view/menu/j;

    .line 43
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/j;->hasSubMenu()Z

    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_35

    .line 49
    iget-object v8, v7, Landroidx/appcompat/view/menu/j;->o:Landroidx/appcompat/view/menu/s;

    .line 51
    invoke-virtual {v8, p1, p2, p3}, Landroidx/appcompat/view/menu/h;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 54
    :cond_35
    if-eqz v0, :cond_3a

    .line 56
    iget-char v8, v7, Landroidx/appcompat/view/menu/j;->j:C

    .line 58
    goto :goto_3c

    .line 59
    :cond_3a
    iget-char v8, v7, Landroidx/appcompat/view/menu/j;->h:C

    .line 61
    :goto_3c
    if-eqz v0, :cond_41

    .line 63
    iget v9, v7, Landroidx/appcompat/view/menu/j;->k:I

    .line 65
    goto :goto_43

    .line 66
    :cond_41
    iget v9, v7, Landroidx/appcompat/view/menu/j;->i:I

    .line 68
    :goto_43
    const v10, 0x1100f

    .line 71
    and-int v11, v1, v10

    .line 73
    and-int/2addr v9, v10

    .line 74
    if-ne v11, v9, :cond_4d

    .line 76
    const/4 v9, 0x1

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move v9, v5

    .line 79
    :goto_4e
    if-eqz v9, :cond_6e

    .line 81
    if-eqz v8, :cond_6e

    .line 83
    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 85
    aget-char v10, v9, v5

    .line 87
    if-eq v8, v10, :cond_65

    .line 89
    const/4 v10, 0x2

    .line 90
    aget-char v9, v9, v10

    .line 92
    if-eq v8, v9, :cond_65

    .line 94
    if-eqz v0, :cond_6e

    .line 96
    const/16 v9, 0x8

    .line 98
    if-ne v8, v9, :cond_6e

    .line 100
    if-ne p2, v4, :cond_6e

    .line 102
    :cond_65
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/j;->isEnabled()Z

    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_6e

    .line 108
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_6e
    add-int/lit8 v6, v6, 0x1

    .line 113
    goto :goto_20

    .line 114
    :cond_71
    return-void
.end method

.method public flagActionItems()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/h;->mIsActionItemsStale:Z

    .line 7
    if-nez v1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v1, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_31

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 30
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Landroidx/appcompat/view/menu/n;

    .line 36
    if-nez v5, :cond_2b

    .line 38
    iget-object v5, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 43
    goto :goto_11

    .line 44
    :cond_2b
    invoke-interface {v5}, Landroidx/appcompat/view/menu/n;->flagActionItems()Z

    .line 47
    move-result v4

    .line 48
    or-int/2addr v3, v4

    .line 49
    goto :goto_11

    .line 50
    :cond_31
    if-eqz v3, :cond_64

    .line 52
    iget-object v1, p0, Landroidx/appcompat/view/menu/h;->mActionItems:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 57
    iget-object v1, p0, Landroidx/appcompat/view/menu/h;->mNonActionItems:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    move-result v1

    .line 66
    move v3, v2

    .line 67
    :goto_42
    if-ge v3, v1, :cond_77

    .line 69
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Landroidx/appcompat/view/menu/j;

    .line 75
    iget v5, v4, Landroidx/appcompat/view/menu/j;->x:I

    .line 77
    const/16 v6, 0x20

    .line 79
    and-int/2addr v5, v6

    .line 80
    if-ne v5, v6, :cond_53

    .line 82
    const/4 v5, 0x1

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    move v5, v2

    .line 85
    :goto_54
    if-eqz v5, :cond_5c

    .line 87
    iget-object v5, p0, Landroidx/appcompat/view/menu/h;->mActionItems:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_61

    .line 93
    :cond_5c
    iget-object v5, p0, Landroidx/appcompat/view/menu/h;->mNonActionItems:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :goto_61
    add-int/lit8 v3, v3, 0x1

    .line 100
    goto :goto_42

    .line 101
    :cond_64
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mActionItems:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mNonActionItems:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mNonActionItems:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    :cond_77
    iput-boolean v2, p0, Landroidx/appcompat/view/menu/h;->mIsActionItemsStale:Z

    .line 122
    return-void
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/j;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->flagActionItems()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mActionItems:Ljava/util/ArrayList;

    .line 6
    return-object v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .registers 2

    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mContext:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public getExpandedItem()Landroidx/appcompat/view/menu/j;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mExpandedItem:Landroidx/appcompat/view/menu/j;

    .line 3
    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mHeaderView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

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
            "Landroidx/appcompat/view/menu/j;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->flagActionItems()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mNonActionItems:Ljava/util/ArrayList;

    .line 6
    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mOptionalIconsVisible:Z

    .line 3
    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mResources:Landroid/content/res/Resources;

    .line 3
    return-object v0
.end method

.method public getRootMenu()Landroidx/appcompat/view/menu/h;
    .registers 1

    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mIsVisibleItemsStale:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mVisibleItems:Ljava/util/ArrayList;

    .line 7
    return-object v0

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mVisibleItems:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, v1

    .line 21
    :goto_14
    if-ge v2, v0, :cond_2c

    .line 23
    iget-object v3, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/appcompat/view/menu/j;

    .line 31
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/j;->isVisible()Z

    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_29

    .line 37
    iget-object v4, p0, Landroidx/appcompat/view/menu/h;->mVisibleItems:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_29
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_14

    .line 45
    :cond_2c
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/h;->mIsVisibleItemsStale:Z

    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mIsActionItemsStale:Z

    .line 50
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mVisibleItems:Ljava/util/ArrayList;

    .line 52
    return-object v0
.end method

.method public hasVisibleItems()Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mOverrideVisibleItems:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->size()I

    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_c
    if-ge v3, v0, :cond_20

    .line 15
    iget-object v4, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Landroidx/appcompat/view/menu/j;

    .line 23
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/j;->isVisible()Z

    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1d

    .line 29
    return v1

    .line 30
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_c

    .line 33
    :cond_20
    return v2
.end method

.method public isGroupDividerEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mGroupDividerEnabled:Z

    .line 3
    return v0
.end method

.method isQwertyMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mQwertyMode:Z

    .line 3
    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/h;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/j;

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
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mShortcutsVisible:Z

    .line 3
    return v0
.end method

.method public onItemActionRequestChanged(Landroidx/appcompat/view/menu/j;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h;->mIsActionItemsStale:Z

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 7
    return-void
.end method

.method public onItemVisibleChanged(Landroidx/appcompat/view/menu/j;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h;->mIsVisibleItemsStale:Z

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 7
    return-void
.end method

.method public onItemsChanged(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mPreventDispatchingItemsChanged:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_f

    .line 6
    if-eqz p1, :cond_b

    .line 8
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/h;->mIsVisibleItemsStale:Z

    .line 10
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/h;->mIsActionItemsStale:Z

    .line 12
    :cond_b
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/h;->dispatchPresenterUpdate(Z)V

    .line 15
    goto :goto_15

    .line 16
    :cond_f
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/h;->mItemsChangedWhileDispatchPrevented:Z

    .line 18
    if-eqz p1, :cond_15

    .line 20
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/h;->mStructureChangedWhileDispatchPrevented:Z

    .line 22
    :cond_15
    :goto_15
    return-void
.end method

.method public performIdentifierAction(II)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/h;->findItem(I)Landroid/view/MenuItem;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/h;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/h;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/n;I)Z

    move-result p1

    return p1
.end method

.method public performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/n;I)Z
    .registers 10

    .line 2
    check-cast p1, Landroidx/appcompat/view/menu/j;

    const/4 v0, 0x0

    if-eqz p1, :cond_a5

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_a5

    .line 4
    :cond_d
    iget-object v1, p1, Landroidx/appcompat/view/menu/j;->p:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    invoke-interface {v1, p1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_44

    .line 5
    :cond_19
    iget-object v1, p1, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v1, v1, p1}, Landroidx/appcompat/view/menu/h;->dispatchMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_44

    .line 6
    :cond_22
    iget-object v1, p1, Landroidx/appcompat/view/menu/j;->g:Landroid/content/Intent;

    if-eqz v1, :cond_3a

    .line 7
    :try_start_26
    iget-object v1, p1, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroidx/appcompat/view/menu/j;->g:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_31
    .catch Landroid/content/ActivityNotFoundException; {:try_start_26 .. :try_end_31} :catch_32

    goto :goto_44

    :catch_32
    move-exception v1

    const-string v3, "MenuItemImpl"

    const-string v4, "Can\'t find activity to handle intent; ignoring"

    .line 8
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :cond_3a
    iget-object v1, p1, Landroidx/appcompat/view/menu/j;->A:Lm0/b;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Lm0/b;->e()Z

    move-result v1

    if-eqz v1, :cond_46

    :goto_44
    move v1, v2

    goto :goto_47

    :cond_46
    move v1, v0

    .line 10
    :goto_47
    iget-object v3, p1, Landroidx/appcompat/view/menu/j;->A:Lm0/b;

    if-eqz v3, :cond_53

    .line 11
    invoke-virtual {v3}, Lm0/b;->a()Z

    move-result v4

    if-eqz v4, :cond_53

    move v4, v2

    goto :goto_54

    :cond_53
    move v4, v0

    .line 12
    :goto_54
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->c()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 13
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->expandActionView()Z

    move-result p1

    or-int/2addr v1, p1

    if-eqz v1, :cond_a4

    .line 14
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/h;->close(Z)V

    goto :goto_a4

    .line 15
    :cond_65
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_76

    if-eqz v4, :cond_6e

    goto :goto_76

    :cond_6e
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_a4

    .line 16
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/h;->close(Z)V

    goto :goto_a4

    :cond_76
    :goto_76
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_7d

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h;->close(Z)V

    .line 18
    :cond_7d
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_93

    .line 19
    new-instance p3, Landroidx/appcompat/view/menu/s;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p0, p1}, Landroidx/appcompat/view/menu/s;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)V

    .line 20
    iput-object p3, p1, Landroidx/appcompat/view/menu/j;->o:Landroidx/appcompat/view/menu/s;

    .line 21
    iget-object v0, p1, Landroidx/appcompat/view/menu/j;->e:Ljava/lang/CharSequence;

    .line 22
    invoke-virtual {p3, v0}, Landroidx/appcompat/view/menu/s;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 23
    :cond_93
    iget-object p1, p1, Landroidx/appcompat/view/menu/j;->o:Landroidx/appcompat/view/menu/s;

    if-eqz v4, :cond_9a

    .line 24
    invoke-virtual {v3, p1}, Lm0/b;->f(Landroid/view/SubMenu;)V

    .line 25
    :cond_9a
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/h;->dispatchSubMenuSelected(Landroidx/appcompat/view/menu/s;Landroidx/appcompat/view/menu/n;)Z

    move-result p1

    or-int/2addr v1, p1

    if-nez v1, :cond_a4

    .line 26
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/h;->close(Z)V

    :cond_a4
    :goto_a4
    return v1

    :cond_a5
    :goto_a5
    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/h;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/j;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_b

    .line 7
    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/view/menu/h;->performItemAction(Landroid/view/MenuItem;I)Z

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
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/h;->close(Z)V

    .line 21
    :cond_14
    return p1
.end method

.method public removeGroup(I)V
    .registers 7

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/h;->findGroupIndex(I)I

    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_28

    .line 7
    iget-object v1, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

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
    if-ge v3, v1, :cond_24

    .line 20
    iget-object v3, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroidx/appcompat/view/menu/j;

    .line 28
    iget v3, v3, Landroidx/appcompat/view/menu/j;->b:I

    .line 30
    if-ne v3, p1, :cond_24

    .line 32
    invoke-direct {p0, v0, v2}, Landroidx/appcompat/view/menu/h;->removeItemAtInt(IZ)V

    .line 35
    move v3, v4

    .line 36
    goto :goto_f

    .line 37
    :cond_24
    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 41
    :cond_28
    return-void
.end method

.method public removeItem(I)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/h;->findItemIndex(I)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/h;->removeItemAtInt(IZ)V

    .line 9
    return-void
.end method

.method public removeItemAt(I)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/h;->removeItemAtInt(IZ)V

    .line 5
    return-void
.end method

.method public removeMenuPresenter(Landroidx/appcompat/view/menu/n;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v2, Landroidx/appcompat/view/menu/n;

    .line 25
    if-eqz v2, :cond_1c

    .line 27
    if-ne v2, p1, :cond_6

    .line 29
    :cond_1c
    iget-object v2, p0, Landroidx/appcompat/view/menu/h;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->getActionViewStatesKey()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->size()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_10
    if-ge v2, v1, :cond_38

    .line 19
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

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
    check-cast v3, Landroidx/appcompat/view/menu/s;

    .line 51
    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/h;->restoreActionViewStates(Landroid/os/Bundle;)V

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
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/h;->findItem(I)Landroid/view/MenuItem;

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
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/h;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->size()I

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
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

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
    check-cast v3, Landroidx/appcompat/view/menu/s;

    .line 63
    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/h;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 66
    :cond_41
    add-int/lit8 v2, v2, 0x1

    .line 68
    goto :goto_6

    .line 69
    :cond_44
    if-eqz v1, :cond_4d

    .line 71
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->getActionViewStatesKey()Ljava/lang/String;

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
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/h;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/h$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/h;->mCallback:Landroidx/appcompat/view/menu/h$a;

    .line 3
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/h;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3
    return-void
.end method

.method public setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/h;
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/view/menu/h;->mDefaultShowAsAction:I

    .line 3
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .registers 10

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_f
    if-ge v3, v1, :cond_4b

    .line 18
    iget-object v4, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Landroidx/appcompat/view/menu/j;

    .line 26
    iget v5, v4, Landroidx/appcompat/view/menu/j;->b:I

    .line 28
    if-ne v5, v0, :cond_48

    .line 30
    iget v5, v4, Landroidx/appcompat/view/menu/j;->x:I

    .line 32
    and-int/lit8 v5, v5, 0x4

    .line 34
    const/4 v6, 0x1

    .line 35
    if-eqz v5, :cond_26

    .line 37
    move v5, v6

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v5, v2

    .line 40
    :goto_27
    if-nez v5, :cond_2a

    .line 42
    goto :goto_48

    .line 43
    :cond_2a
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/j;->isCheckable()Z

    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_31

    .line 49
    goto :goto_48

    .line 50
    :cond_31
    if-ne v4, p1, :cond_34

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v6, v2

    .line 54
    :goto_35
    iget v5, v4, Landroidx/appcompat/view/menu/j;->x:I

    .line 56
    and-int/lit8 v7, v5, -0x3

    .line 58
    if-eqz v6, :cond_3d

    .line 60
    const/4 v6, 0x2

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move v6, v2

    .line 63
    :goto_3e
    or-int/2addr v6, v7

    .line 64
    iput v6, v4, Landroidx/appcompat/view/menu/j;->x:I

    .line 66
    if-eq v5, v6, :cond_48

    .line 68
    iget-object v4, v4, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 70
    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 73
    :cond_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    .line 75
    goto :goto_f

    .line 76
    :cond_4b
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    .line 79
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 10
    iget-object v2, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/appcompat/view/menu/j;

    .line 18
    iget v3, v2, Landroidx/appcompat/view/menu/j;->b:I

    .line 20
    if-ne v3, p1, :cond_1b

    .line 22
    invoke-virtual {v2, p3}, Landroidx/appcompat/view/menu/j;->d(Z)V

    .line 25
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/j;->setCheckable(Z)Landroid/view/MenuItem;

    .line 28
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_7

    .line 31
    :cond_1e
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h;->mGroupDividerEnabled:Z

    .line 3
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 10
    iget-object v2, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/appcompat/view/menu/j;

    .line 18
    iget v3, v2, Landroidx/appcompat/view/menu/j;->b:I

    .line 20
    if-ne v3, p1, :cond_18

    .line 22
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/j;->setEnabled(Z)Landroid/view/MenuItem;

    .line 25
    :cond_18
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_7

    .line 28
    :cond_1b
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 12

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    move v3, v2

    .line 10
    :goto_9
    const/4 v4, 0x1

    .line 11
    if-ge v2, v0, :cond_30

    .line 13
    iget-object v5, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Landroidx/appcompat/view/menu/j;

    .line 21
    iget v6, v5, Landroidx/appcompat/view/menu/j;->b:I

    .line 23
    if-ne v6, p1, :cond_2d

    .line 25
    iget v6, v5, Landroidx/appcompat/view/menu/j;->x:I

    .line 27
    and-int/lit8 v7, v6, -0x9

    .line 29
    if-eqz p2, :cond_20

    .line 31
    move v8, v1

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    const/16 v8, 0x8

    .line 35
    :goto_22
    or-int/2addr v7, v8

    .line 36
    iput v7, v5, Landroidx/appcompat/view/menu/j;->x:I

    .line 38
    if-eq v6, v7, :cond_29

    .line 40
    move v5, v4

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v5, v1

    .line 43
    :goto_2a
    if-eqz v5, :cond_2d

    .line 45
    move v3, v4

    .line 46
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_9

    .line 49
    :cond_30
    if-eqz v3, :cond_35

    .line 51
    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 54
    :cond_35
    return-void
.end method

.method public setHeaderIconInt(I)Landroidx/appcompat/view/menu/h;
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/h;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/h;
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/h;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public setHeaderTitleInt(I)Landroidx/appcompat/view/menu/h;
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/h;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public setHeaderTitleInt(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/h;
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/h;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public setHeaderViewInt(Landroid/view/View;)Landroidx/appcompat/view/menu/h;
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
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/h;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 10
    return-object p0
.end method

.method public setOptionalIconsVisible(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h;->mOptionalIconsVisible:Z

    .line 3
    return-void
.end method

.method public setOverrideVisibleItems(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h;->mOverrideVisibleItems:Z

    .line 3
    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h;->mQwertyMode:Z

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 7
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mShortcutsVisible:Z

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/h;->setShortcutsVisibleInner(Z)V

    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 13
    return-void
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->mItems:Ljava/util/ArrayList;

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
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mPreventDispatchingItemsChanged:Z

    .line 4
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/h;->mItemsChangedWhileDispatchPrevented:Z

    .line 6
    if-eqz v1, :cond_e

    .line 8
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mItemsChangedWhileDispatchPrevented:Z

    .line 10
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mStructureChangedWhileDispatchPrevented:Z

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 15
    :cond_e
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mPreventDispatchingItemsChanged:Z

    .line 3
    if-nez v0, :cond_c

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mPreventDispatchingItemsChanged:Z

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mItemsChangedWhileDispatchPrevented:Z

    .line 11
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h;->mStructureChangedWhileDispatchPrevented:Z

    .line 13
    :cond_c
    return-void
.end method
