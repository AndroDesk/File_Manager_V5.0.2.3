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
.field public static final VIEW_TYPE_FOOTER:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/adapter/CategoryAdapter;->VIEW_TYPE_FOOTER:I

    return-void
.end method

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

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "list cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "editConfig cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mList:Ljava/util/List;

    iput-object p2, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditConfig:Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    const/4 p1, 0x1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    new-instance p1, Lmiuix/navigator/adapter/CategoryAdapter$1;

    invoke-direct {p1, p0}, Lmiuix/navigator/adapter/CategoryAdapter$1;-><init>(Lmiuix/navigator/adapter/CategoryAdapter;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    invoke-virtual {p2}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->showIconOnEdit()Z

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->setShowIconOnEdit(Z)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/adapter/CategoryAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditing:Z

    return p0
.end method


# virtual methods
.method public final createContextMenu(Landroid/view/ContextMenu;Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 7

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->getEditMenu()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->getEditMenu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;

    invoke-virtual {v1, p1}, Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;->addTo(Landroid/view/ContextMenu;)V

    goto :goto_16

    :cond_26
    const/4 v0, 0x0

    const/4 v1, -0x3

    const/high16 v2, 0x20000

    sget v3, Lmiuix/navigator/R$string;->miuix_navigator_multiple_choice:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/navigator/adapter/NavigationAdapter;->setContextHolder(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method

.method public dispatchContextAction(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    invoke-virtual {p0, p2}, Lmiuix/navigator/adapter/CategoryAdapter;->dispatchEditAction(I)V

    return-void
.end method

.method public dispatchEditAction(I)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter$EditListener;->onEditAction(Lmiuix/navigator/adapter/CategoryAdapter;I)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

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

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->isStable()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_29

    :cond_a
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/navigator/adapter/CategoryAdapter$Item;

    invoke-virtual {v2}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    return-object v2

    :cond_29
    :goto_29
    return-object v0
.end method

.method public finishEdit(Z)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->onApplyEdit()V

    :cond_5
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lmiuix/navigator/adapter/NavigationAdapter;->onFinishEditMode(Lmiuix/navigator/adapter/CategoryAdapter;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditing:Z

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->onFinishEdit()V

    return-void
.end method

.method public final getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditConfig:Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    return-object v0
.end method

.method public getEditListener()Lmiuix/navigator/adapter/CategoryAdapter$EditListener;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditListener:Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .registers 4

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/navigator/adapter/CategoryAdapter$Item;

    invoke-virtual {p1}, Lmiuix/navigator/adapter/CategoryAdapter$Item;->getId()I

    move-result p1

    int-to-long v0, p1

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

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public final getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mNavigationAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    return-object v0
.end method

.method public getNavigator()Lmiuix/navigator/Navigator;
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/NavigationAdapter;->getNavigator()Lmiuix/navigator/Navigator;

    move-result-object v0

    return-object v0
.end method

.method public getShowIconOnEdit()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mShowIconOnEdit:Z

    return v0
.end method

.method public hasFooterView()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mFooterAdapter:Lmiuix/navigator/adapter/FooterAdapter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isEditing()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditing:Z

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

    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mNavigationAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    return-void
.end method

.method public onBindFooterView(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mFooterAdapter:Lmiuix/navigator/adapter/FooterAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/FooterAdapter;->onBindFooterView(Landroidx/recyclerview/widget/RecyclerView$b0;)V

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

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->hasFooterView()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_14

    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->onBindFooterView(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    goto :goto_21

    :cond_14
    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/navigator/adapter/CategoryAdapter$Item;

    invoke-virtual {p0, p1, p2}, Lmiuix/navigator/adapter/CategoryAdapter;->onBindNormalView(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/adapter/CategoryAdapter$Item;)V

    :goto_21
    return-void
.end method

.method public onCreateFooterView(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mFooterAdapter:Lmiuix/navigator/adapter/FooterAdapter;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/FooterAdapter;->onCreateFooterView(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 4

    if-eqz p2, :cond_16

    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->onCreateFooterView(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    return-object p1

    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "bad viewType "

    invoke-static {v0, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    return-object p1
.end method

.method public onFinishEdit()V
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditListener:Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lmiuix/navigator/adapter/CategoryAdapter$EditListener;->onFinishEdit(Lmiuix/navigator/adapter/CategoryAdapter;)V

    :cond_7
    return-void
.end method

.method public onStartEdit()V
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditListener:Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lmiuix/navigator/adapter/CategoryAdapter$EditListener;->onStartEdit(Lmiuix/navigator/adapter/CategoryAdapter;)V

    :cond_7
    return-void
.end method

.method public setEditListener(Lmiuix/navigator/adapter/CategoryAdapter$EditListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditListener:Lmiuix/navigator/adapter/CategoryAdapter$EditListener;

    return-void
.end method

.method public setFooterAdapter(Lmiuix/navigator/adapter/FooterAdapter;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mFooterAdapter:Lmiuix/navigator/adapter/FooterAdapter;

    return-void
.end method

.method public final setHasStableIds(Z)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "you must not set hasStableIds to false"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowIconOnEdit(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mShowIconOnEdit:Z

    return-void
.end method

.method public final startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method

.method public startEdit()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getEditConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditing:Z

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->getNavigationAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiuix/navigator/adapter/NavigationAdapter;->onStartEditMode(Lmiuix/navigator/adapter/CategoryAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapter;->mEditing:Z

    invoke-virtual {p0}, Lmiuix/navigator/adapter/CategoryAdapter;->onStartEdit()V

    :cond_1e
    return-void

    :cond_1f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not editable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
