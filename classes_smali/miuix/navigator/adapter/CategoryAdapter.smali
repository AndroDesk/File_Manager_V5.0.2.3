.class public abstract Lmiuix/navigator/adapter/CategoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigator/adapter/CategoryAdapter$EditListener;,
        Lmiuix/navigator/adapter/CategoryAdapter$Item;,
        Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;,
        Lmiuix/navigator/adapter/CategoryAdapter$ListEditConfig;,
        Lmiuix/navigator/adapter/CategoryAdapter$MenuEditConfig;,
        Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lmiuix/navigator/adapter/CategoryAdapter$Item;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# static fields
.field public static final VIEW_TYPE_FOOTER:I = 0x1

.field public static final VIEW_TYPE_NORMAL:I


# instance fields
.field private final mEditConfig:Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

.field private mEditListener:Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

.field private mEditing:Z

.field private mFooterAdapter:Lmiuix/navigator/adapter/FooterAdapter;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mNavigationAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

.field private mShowIconOnEdit:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    const-string v0, "list cannot be null"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    const-string v0, "editConfig cannot be null"

    .line 11
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mList:Ljava/util/List;

    .line 16
    iput-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditConfig:Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 22
    new-instance p1, Lmiuix/navigator/adapter/CategoryAdapter$1;

    .line 24
    invoke-direct {p1, p0}, Lmiuix/navigator/adapter/CategoryAdapter$1;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;)V

    .line 27
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 30
    invoke-virtual {p2}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->showIconOnEdit()Z

    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->setShowIconOnEdit(Z)V

    .line 37
    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/adapter/CategoryAdapter;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditing:Z

    .line 3
    return p0
.end method


# virtual methods
.method public final createContextMenu(Landroid/view/ContextMenu;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->getEditMenu()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_26

    .line 11
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->getEditMenu()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_26

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;

    .line 35
    invoke-virtual {v1, p1}, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->addTo(Landroid/view/ContextMenu;)V

    .line 38
    goto :goto_16

    .line 39
    :cond_26
    const/4 v0, 0x0

    .line 40
    const/4 v1, -0x3

    .line 41
    const/high16 v2, 0x20000

    .line 43
    sget v3, Lmiuix/navigator/R$string;->miuix_navigator_multiple_choice:I

    .line 45
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 48
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, p2}, Lmiuix/navigator/adapter/NavigationAdapter;->setContextHolder(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 55
    return-void
.end method

.method public dispatchContextAction(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    invoke-virtual {p0, p2}, Lmiuix/navigator/adapter/CategoryAdapter;->dispatchEditAction(I)V

    .line 4
    return-void
.end method

.method public dispatchEditAction(I)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_13

    .line 7
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter$EditListener;->onEditAction(Lmiuix/navigator/adapter/CategoryAdapter;I)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_13

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 20
    :cond_13
    return-void
.end method

.method public findItemWithInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/adapter/CategoryAdapter$Item;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/navigator/navigatorinfo/NavigatorInfo;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_29

    .line 4
    invoke-virtual {p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->isStable()Z

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_a

    .line 10
    goto :goto_29

    .line 11
    :cond_a
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_29

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lmiuix/navigator/adapter/CategoryAdapter$Item;

    .line 31
    invoke-virtual {v2}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p1, v3}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_12

    .line 41
    return-object v2

    .line 42
    :cond_29
    :goto_29
    return-object v0
.end method

.method public finishEdit(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->onApplyEdit()V

    .line 6
    :cond_5
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Lmiuix/navigator/adapter/NavigationAdapter;->onFinishEditMode(Lmiuix/navigator/adapter/CategoryAdapter;)V

    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditing:Z

    .line 16
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->onFinishEdit()V

    .line 19
    return-void
.end method

.method public final getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditConfig:Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 3
    return-object v0
.end method

.method public getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditListener:Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final getItemId(I)J
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lmiuix/navigator/adapter/CategoryAdapter$Item;

    .line 11
    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->getId()I

    .line 14
    move-result p1

    .line 15
    int-to-long v0, p1

    .line 16
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public final getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mNavigationAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 3
    return-object v0
.end method

.method public getNavigator()Lmiuix/navigator/Navigator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/adapter/NavigationAdapter;->getNavigator()Lmiuix/navigator/Navigator;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getShowIconOnEdit()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mShowIconOnEdit:Z

    .line 3
    return v0
.end method

.method public hasFooterView()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mFooterAdapter:Lmiuix/navigator/adapter/FooterAdapter;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public isEditing()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditing:Z

    .line 3
    return v0
.end method

.method public abstract isVisible(I)Z
.end method

.method public onApplyEdit()V
    .registers 1

    return-void
.end method

.method public onAttachNavigationAdapter(Lmiuix/navigator/adapter/NavigationAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mNavigationAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 3
    return-void
.end method

.method public onBindFooterView(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mFooterAdapter:Lmiuix/navigator/adapter/FooterAdapter;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/FooterAdapter;->onBindFooterView(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 8
    :cond_7
    return-void
.end method

.method public onBindNormalView(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/CategoryAdapter$Item;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->hasFooterView()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    if-ne p2, v0, :cond_14

    .line 17
    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->onBindFooterView(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 20
    goto :goto_21

    .line 21
    :cond_14
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Lmiuix/navigator/adapter/CategoryAdapter$Item;

    .line 31
    invoke-virtual {p0, p1, p2}, Lmiuix/navigator/adapter/CategoryAdapter;->onBindNormalView(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/CategoryAdapter$Item;)V

    .line 34
    :goto_21
    return-void
.end method

.method public onCreateFooterView(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mFooterAdapter:Lmiuix/navigator/adapter/FooterAdapter;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/FooterAdapter;->onCreateFooterView(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 4

    .line 1
    if-eqz p2, :cond_16

    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p2, v0, :cond_a

    .line 6
    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->onCreateFooterView(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 13
    const-string v0, "bad viewType "

    .line 15
    invoke-static {v0, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p1

    .line 23
    :cond_16
    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public onFinishEdit()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditListener:Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p0}, Lmiuix/navigator/adapter/CategoryAdapter$EditListener;->onFinishEdit(Lmiuix/navigator/adapter/CategoryAdapter;)V

    .line 8
    :cond_7
    return-void
.end method

.method public onStartEdit()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditListener:Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p0}, Lmiuix/navigator/adapter/CategoryAdapter$EditListener;->onStartEdit(Lmiuix/navigator/adapter/CategoryAdapter;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setEditListener(Lmiuix/navigator/adapter/CategoryAdapter$EditListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditListener:Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    .line 3
    return-void
.end method

.method public setFooterAdapter(Lmiuix/navigator/adapter/FooterAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mFooterAdapter:Lmiuix/navigator/adapter/FooterAdapter;

    .line 3
    return-void
.end method

.method public final setHasStableIds(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 6
    const-string v0, "you must not set hasStableIds to false"

    .line 8
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1
.end method

.method public setShowIconOnEdit(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mShowIconOnEdit:Z

    .line 3
    return-void
.end method

.method public final startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 8
    return-void
.end method

.method public startEdit()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->isEditable()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1f

    .line 11
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditing:Z

    .line 13
    if-nez v0, :cond_1e

    .line 15
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Lmiuix/navigator/adapter/NavigationAdapter;->onStartEditMode(Lmiuix/navigator/adapter/CategoryAdapter;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1e

    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditing:Z

    .line 28
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->onStartEdit()V

    .line 31
    :cond_1e
    return-void

    .line 32
    :cond_1f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 34
    const-string v1, "not editable"

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 39
    throw v0
.end method
