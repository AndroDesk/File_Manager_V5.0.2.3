.class public abstract Lmiuix/navigator/app/NavigatorActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "NavigatorActivity.java"

# interfaces
.implements Lmiuix/navigator/app/NavigatorBuilder;


# instance fields
.field private mNavHostFragment:Lmiuix/navigator/NavHostFragment;

.field private mNaviViewModel:Lmiuix/navigator/app/NavigatorViewModel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public checkThemeLegality()V
    .registers 3

    sget v0, Lmiuix/navigator/R$attr;->isNavigatorTheme:I

    invoke-static {p0, v0}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v0

    if-ltz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a  Theme.Light/Dark.Navigator theme (or descendant) with this fragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNavHostFragment()Lmiuix/navigator/NavHostFragment;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/app/NavigatorActivity;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    return-object v0
.end method

.method public getNavigator()Lmiuix/navigator/Navigator;
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/app/NavigatorActivity;->getNavHostFragment()Lmiuix/navigator/NavHostFragment;

    move-result-object v0

    invoke-static {v0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object v0

    return-object v0
.end method

.method public newLabel(Ljava/lang/String;ILmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/Navigator$Label;
    .registers 6

    invoke-virtual {p0}, Lmiuix/navigator/app/NavigatorActivity;->getNavigator()Lmiuix/navigator/Navigator;

    move-result-object v0

    invoke-virtual {p3}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/navigator/Navigator;->newLabel(I)Lmiuix/navigator/Navigator$Label;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiuix/navigator/Navigator$Label;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Lmiuix/navigator/Navigator$Label;->setIcon(I)V

    invoke-virtual {v1, p3}, Lmiuix/navigator/Navigator$Label;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    invoke-virtual {v0, v1}, Lmiuix/navigator/Navigator;->addLabel(Lmiuix/navigator/Navigator$Label;)V

    return-object v1
.end method

.method public newLabel(Ljava/lang/String;Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/Navigator$Label;
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lmiuix/navigator/app/NavigatorActivity;->newLabel(Ljava/lang/String;ILmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/Navigator$Label;

    move-result-object p1

    return-object p1
.end method

.method public newListItem(Ljava/util/List;Ljava/lang/String;I)Lmiuix/navigator/adapter/ListCategoryAdapter$Item;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/navigator/adapter/ListCategoryAdapter$Item;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lmiuix/navigator/adapter/ListCategoryAdapter$Item;"
        }
    .end annotation

    new-instance v0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;

    invoke-direct {v0, p2, p3}, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;-><init>(Ljava/lang/CharSequence;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public newMenuItem(Ljava/util/List;Ljava/lang/String;I)Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;"
        }
    .end annotation

    new-instance v0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    invoke-direct {v0, p2, p3}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;)V

    const v0, 0x1020002

    if-nez p1, :cond_25

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v1

    const-class v2, Lmiuix/navigator/app/MiuixNavHostFragment;

    invoke-interface {p0}, Lmiuix/navigator/app/NavigatorBuilder;->getNavigatorInitArgs()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/b0;->e(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    const-string v3, "miuix.navHostFragment"

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/a;->r()V

    :cond_25
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->C(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/NavHostFragment;

    iput-object v0, p0, Lmiuix/navigator/app/NavigatorActivity;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class v1, Lmiuix/navigator/app/NavigatorViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/app/NavigatorViewModel;

    iput-object v0, p0, Lmiuix/navigator/app/NavigatorActivity;->mNaviViewModel:Lmiuix/navigator/app/NavigatorViewModel;

    invoke-virtual {v0, p0, p1}, Lmiuix/navigator/app/NavigatorViewModel;->init(Lmiuix/navigator/app/NavigatorBuilder;Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {p0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;)V

    return-void
.end method
