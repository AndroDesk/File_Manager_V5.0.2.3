.class public Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;
.super Ljava/lang/Object;
.source "NavigatorInfoManager.java"


# static fields
.field private static final TAG_SELECTED_ID:Ljava/lang/String; = "selectedPosition"


# instance fields
.field private final mAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

.field private final mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/navigator/Navigator$Category;",
            ">;"
        }
    .end annotation
.end field

.field private final mLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/navigator/Navigator$Label;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/navigator/BottomTab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/NavigatorImpl;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mLabels:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mCategories:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mTabs:Ljava/util/ArrayList;

    new-instance v0, Lmiuix/navigator/adapter/NavigationAdapter;

    const-string v1, "miuix.navigation"

    invoke-virtual {p1, v1}, Lmiuix/navigator/NavigatorImpl;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    move-result-object p1

    invoke-direct {v0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;-><init>(Lmiuix/navigator/Navigator;)V

    iput-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    return-void
.end method


# virtual methods
.method public addCategory(Lmiuix/navigator/Navigator$Category;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->addCategory(Lmiuix/navigator/Navigator$Category;I)V

    return-void
.end method

.method public addCategory(Lmiuix/navigator/Navigator$Category;I)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/adapter/NavigationAdapter;->addCategory(Lmiuix/navigator/Navigator$Category;I)V

    return-void
.end method

.method public addLabel(Lmiuix/navigator/Navigator$Label;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->addLabel(Lmiuix/navigator/Navigator$Label;I)V

    return-void
.end method

.method public addLabel(Lmiuix/navigator/Navigator$Label;I)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/adapter/NavigationAdapter;->addLabel(Lmiuix/navigator/Navigator$Label;I)V

    return-void
.end method

.method public addTab(Lmiuix/navigator/BottomTab;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->addTab(Lmiuix/navigator/BottomTab;I)V

    return-void
.end method

.method public addTab(Lmiuix/navigator/BottomTab;I)V
    .registers 3

    iget-object p2, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public findCategory(I)Lmiuix/navigator/Navigator$Category;
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/Navigator$Category;

    invoke-virtual {v1}, Lmiuix/navigator/Navigator$Category;->getId()I

    move-result v2

    if-ne v2, p1, :cond_6

    return-object v1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public findCategoryItem(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/NavigationItem;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->isStable()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_27

    :cond_a
    iget-object v1, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/navigator/Navigator$Category;

    invoke-virtual {v2}, Lmiuix/navigator/Navigator$Category;->getAdapter()Lmiuix/navigator/adapter/CategoryAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmiuix/navigator/adapter/CategoryAdapter;->findItemWithInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/adapter/CategoryAdapter$Item;

    move-result-object v2

    if-eqz v2, :cond_10

    return-object v2

    :cond_27
    :goto_27
    return-object v0
.end method

.method public findLabel(I)Lmiuix/navigator/Navigator$Label;
    .registers 6

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/Navigator$Label;

    invoke-virtual {v1}, Lmiuix/navigator/Navigator$Label;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->isStable()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    move-result v2

    if-ne v2, p1, :cond_6

    return-object v1

    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method public findLabel(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/Navigator$Label;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->isStable()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_27

    :cond_a
    iget-object v1, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/navigator/Navigator$Label;

    invoke-virtual {v2}, Lmiuix/navigator/Navigator$Label;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    return-object v2

    :cond_27
    :goto_27
    return-object v0
.end method

.method public findTab(I)Lmiuix/navigator/BottomTab;
    .registers 6

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/BottomTab;

    invoke-virtual {v1}, Lmiuix/navigator/BottomTab;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->isStable()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    move-result v2

    if-ne v2, p1, :cond_6

    return-object v1

    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method public findTab(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/BottomTab;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->isStable()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_27

    :cond_a
    iget-object v1, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/navigator/BottomTab;

    invoke-virtual {v2}, Lmiuix/navigator/BottomTab;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    return-object v2

    :cond_27
    :goto_27
    return-object v0
.end method

.method public getAdapter()Lmiuix/navigator/adapter/NavigationAdapter;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    return-object v0
.end method

.method public getLabelAdapter()Lmiuix/navigator/adapter/LabelAdapter;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/NavigationAdapter;->getLabelAdapter()Lmiuix/navigator/adapter/LabelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mSelectedInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    return-object v0
.end method

.method public navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;Lmiuix/navigator/Navigator;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p2}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->onNavigate(Lmiuix/navigator/Navigator;)Z

    move-result p2

    if-eqz p2, :cond_23

    iget-object p2, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mSelectedInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    invoke-virtual {p1, p2}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1a

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    iget-object v1, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mSelectedInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    invoke-virtual {v0, v1}, Lmiuix/navigator/adapter/NavigationAdapter;->notifyItemChanged(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    :cond_1a
    iput-object p1, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mSelectedInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    if-eqz p2, :cond_23

    iget-object p2, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-virtual {p2, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->notifyItemChanged(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    :cond_23
    return-void
.end method

.method public newCategory(I)Lmiuix/navigator/Navigator$Category;
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->newCategory(II)Lmiuix/navigator/Navigator$Category;

    move-result-object p1

    return-object p1
.end method

.method public newCategory(II)Lmiuix/navigator/Navigator$Category;
    .registers 4

    new-instance v0, Lmiuix/navigator/adapter/CategoryImpl;

    invoke-direct {v0, p1, p2}, Lmiuix/navigator/adapter/CategoryImpl;-><init>(II)V

    return-object v0
.end method

.method public newLabel(I)Lmiuix/navigator/Navigator$Label;
    .registers 3

    new-instance v0, Lmiuix/navigator/adapter/LabelImpl;

    invoke-direct {v0, p1}, Lmiuix/navigator/adapter/LabelImpl;-><init>(I)V

    return-object v0
.end method

.method public newTab()Lmiuix/navigator/BottomTab;
    .registers 2

    new-instance v0, Lmiuix/navigator/BottomTab;

    invoke-direct {v0}, Lmiuix/navigator/BottomTab;-><init>()V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onRestoreState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "selectedPosition"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager$1;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, p0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager$1;-><init>(Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;I)V

    iput-object v1, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mSelectedInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    :cond_13
    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mSelectedInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    move-result v0

    const-string v1, "selectedPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_d
    return-void
.end method

.method public removeCategory(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->findCategory(I)Lmiuix/navigator/Navigator$Category;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->removeCategory(Lmiuix/navigator/Navigator$Category;)V

    return-void
.end method

.method public removeCategory(Lmiuix/navigator/Navigator$Category;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->removeCategory(Lmiuix/navigator/Navigator$Category;)V

    return-void
.end method

.method public removeLabel(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->findLabel(I)Lmiuix/navigator/Navigator$Label;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->removeLabel(Lmiuix/navigator/Navigator$Label;)V

    return-void
.end method

.method public removeLabel(Lmiuix/navigator/Navigator$Label;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->removeLabel(Lmiuix/navigator/Navigator$Label;)V

    return-void
.end method

.method public setLabelAdapter(Lmiuix/navigator/adapter/LabelAdapter;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->mAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-virtual {v0, p1}, Lmiuix/navigator/adapter/NavigationAdapter;->setLabelAdapter(Lmiuix/navigator/adapter/LabelAdapter;)V

    return-void
.end method
