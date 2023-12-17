.class public Lmiuix/navigator/NavigationFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "NavigationFragment.java"


# instance fields
.field private mRV:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigationFragment;->mRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigationFragment;->mRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/navigator/adapter/NavigationAdapter;

    .line 9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 12
    move-result p1

    .line 13
    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->onContextEditAction(I)V

    .line 16
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 1
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getNavigationMenu()I

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_15

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getMenuInflater()Landroid/view/MenuInflater;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getNavigationMenu()I

    .line 18
    move-result v0

    .line 19
    invoke-virtual {v1, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 22
    :cond_15
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroyView()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/navigator/NavigationFragment;->mRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    sget p3, Lmiuix/navigator/R$layout;->miuix_navigator_navigation_fragment:I

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getBaseNavigator()Lmiuix/navigator/Navigator;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lmiuix/navigator/NavigatorImpl;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->notifyNavigationMenuSelected(Landroid/view/MenuItem;)V

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3

    .line 1
    const/4 p2, 0x6

    .line 2
    if-ne p1, p2, :cond_f

    .line 4
    iget-object p1, p0, Lmiuix/navigator/NavigationFragment;->mRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lmiuix/navigator/adapter/NavigationAdapter;

    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Lmiuix/navigator/adapter/NavigationAdapter;->setContextHolder(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 16
    :cond_f
    return-void
.end method

.method public onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lmiuix/navigator/Navigator;->getBaseNavigator()Lmiuix/navigator/Navigator;

    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lmiuix/navigator/NavigatorImpl;

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 19
    const/4 v0, 0x2

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 24
    sget v0, Lmiuix/navigator/R$id;->navigation_rv:I

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    iput-object p1, p0, Lmiuix/navigator/NavigationFragment;->mRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    invoke-virtual {p2}, Lmiuix/navigator/NavigatorImpl;->getAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 41
    iget-object p1, p0, Lmiuix/navigator/NavigationFragment;->mRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    new-instance p2, Lmiuix/navigator/NavigatorLayoutManager;

    .line 45
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getThemedContext()Landroid/content/Context;

    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p2, v0}, Lmiuix/navigator/NavigatorLayoutManager;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    iget-object p1, p0, Lmiuix/navigator/NavigationFragment;->mRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    new-instance p2, Lmiuix/navigator/NavigationDividerItemDecoration;

    .line 59
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getThemedContext()Landroid/content/Context;

    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p2, v0}, Lmiuix/navigator/NavigationDividerItemDecoration;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 69
    iget-object p1, p0, Lmiuix/navigator/NavigationFragment;->mRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    new-instance p2, Lmiuix/navigator/NavigationFragment$1;

    .line 73
    invoke-direct {p2, p0}, Lmiuix/navigator/NavigationFragment$1;-><init>(Lmiuix/navigator/NavigationFragment;)V

    .line 76
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 79
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_59

    .line 85
    const-string p2, ""

    .line 87
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    :cond_59
    return-void
.end method
