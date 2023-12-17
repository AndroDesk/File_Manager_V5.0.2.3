.class public Lmiuix/navigator/NavigationFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "NavigationFragment.java"


# instance fields
.field private mRV:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigationFragment;->mRV:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigationFragment;->mRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->onContextEditAction(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getNavigationMenu()I

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getNavigationMenu()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_15
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/NavigationFragment;->mRV:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    sget p3, Lmiuix/navigator/R$layout;->miuix_navigator_navigation_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getBaseNavigator()Lmiuix/navigator/Navigator;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->notifyNavigationMenuSelected(Landroid/view/MenuItem;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3

    const/4 p2, 0x6

    if-ne p1, p2, :cond_f

    iget-object p1, p0, Lmiuix/navigator/NavigationFragment;->mRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lmiuix/navigator/adapter/NavigationAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/navigator/adapter/NavigationAdapter;->setContextHolder(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    :cond_f
    return-void
.end method

.method public onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/navigator/Navigator;->getBaseNavigator()Lmiuix/navigator/Navigator;

    move-result-object p2

    check-cast p2, Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    sget v0, Lmiuix/navigator/R$id;->navigation_rv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lmiuix/navigator/NavigationFragment;->mRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Lmiuix/navigator/NavigatorImpl;->getAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lmiuix/navigator/NavigationFragment;->mRV:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lmiuix/navigator/NavigatorLayoutManager;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lmiuix/navigator/NavigatorLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lmiuix/navigator/NavigationFragment;->mRV:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lmiuix/navigator/NavigationDividerItemDecoration;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lmiuix/navigator/NavigationDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object p1, p0, Lmiuix/navigator/NavigationFragment;->mRV:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lmiuix/navigator/NavigationFragment$1;

    invoke-direct {p2, p0}, Lmiuix/navigator/NavigationFragment$1;-><init>(Lmiuix/navigator/NavigationFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_59

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    :cond_59
    return-void
.end method
