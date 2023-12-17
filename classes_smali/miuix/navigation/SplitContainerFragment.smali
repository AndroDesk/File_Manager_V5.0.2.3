.class public Lmiuix/navigation/SplitContainerFragment;
.super Landroidx/fragment/app/Fragment;
.source "SplitContainerFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 4
    return-void
.end method

.method public static newInstance()Lmiuix/navigation/SplitContainerFragment;
    .registers 1

    .line 1
    new-instance v0, Lmiuix/navigation/SplitContainerFragment;

    .line 3
    invoke-direct {v0}, Lmiuix/navigation/SplitContainerFragment;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public addChildFragment(Landroidx/fragment/app/Fragment;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    .line 4
    sget v1, Lmiuix/navigation/R$id;->miuix_fragment_container:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, p1, v3, v2}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v3}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    :cond_21
    return-void
.end method

.method public addChildFragment(Landroidx/fragment/app/Fragment;IIII)V
    .registers 7

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 13
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p2, p3, p4, p5}, Landroidx/fragment/app/b0;->l(IIII)V

    sget p2, Lmiuix/navigation/R$id;->miuix_fragment_container:I

    const/4 p3, 0x1

    const/4 p4, 0x0

    .line 15
    invoke-virtual {v0, p2, p1, p4, p3}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 16
    invoke-virtual {v0, p4}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    :cond_24
    return-void
.end method

.method public clearBackStack()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_20

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_20

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->F()I

    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_20

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 26
    move-result-object v0

    .line 27
    const/4 v1, -0x1

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->V(II)Z

    .line 32
    return v2

    .line 33
    :cond_20
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method public hideChildFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1e

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1e

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance v1, Landroidx/fragment/app/a;

    .line 22
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 25
    invoke-virtual {v1, p1}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 28
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 31
    :cond_1e
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    sget p3, Lmiuix/navigation/R$layout;->miuix_fragment_container:I

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public popBackStack()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_29

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_29

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->F()I

    .line 21
    move-result v0

    .line 22
    if-lez v0, :cond_29

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    new-instance v2, Landroidx/fragment/app/FragmentManager$o;

    .line 33
    const/4 v3, -0x1

    .line 34
    invoke-direct {v2, v0, v3, v1}, Landroidx/fragment/app/FragmentManager$o;-><init>(Landroidx/fragment/app/FragmentManager;II)V

    .line 37
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentManager;->v(Landroidx/fragment/app/FragmentManager$n;Z)V

    .line 40
    const/4 v0, 0x1

    .line 41
    return v0

    .line 42
    :cond_29
    return v1
.end method

.method public removeChildFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1e

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1e

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance v1, Landroidx/fragment/app/a;

    .line 22
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 25
    invoke-virtual {v1, p1}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 28
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 31
    :cond_1e
    return-void
.end method

.method public replaceChildFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    .line 4
    sget v1, Lmiuix/navigation/R$id;->miuix_fragment_container:I

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v2}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    :cond_20
    return-void
.end method

.method public replaceChildFragment(Landroidx/fragment/app/Fragment;IIII)V
    .registers 7

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 13
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p2, p3, p4, p5}, Landroidx/fragment/app/b0;->l(IIII)V

    sget p2, Lmiuix/navigation/R$id;->miuix_fragment_container:I

    const/4 p3, 0x0

    .line 15
    invoke-virtual {v0, p2, p1, p3}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p3}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    :cond_23
    return-void
.end method

.method public replaceRootFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_27

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_27

    .line 13
    invoke-virtual {p0}, Lmiuix/navigation/SplitContainerFragment;->clearBackStack()Z

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance v1, Landroidx/fragment/app/a;

    .line 25
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 28
    sget v0, Lmiuix/navigation/R$id;->miuix_fragment_container:I

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v0, p1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, v2}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 40
    :cond_27
    return-void
.end method

.method public showChildFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1e

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1e

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance v1, Landroidx/fragment/app/a;

    .line 22
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 25
    invoke-virtual {v1, p1}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 28
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 31
    :cond_1e
    return-void
.end method
