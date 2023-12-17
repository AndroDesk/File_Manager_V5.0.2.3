.class public final Lcom/google/android/gms/dynamic/FragmentWrapper;
.super Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private zzia:Landroid/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/app/Fragment;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 6
    return-void
.end method

.method public static wrap(Landroid/app/Fragment;)Lcom/google/android/gms/dynamic/FragmentWrapper;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    if-eqz p0, :cond_8

    .line 3
    new-instance v0, Lcom/google/android/gms/dynamic/FragmentWrapper;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    .line 8
    return-object v0

    .line 9
    :cond_8
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final getArguments()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getId()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->getId()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getRetainInstance()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->getRetainInstance()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getTargetRequestCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->getTargetRequestCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getUserVisibleHint()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->getUserVisibleHint()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isAdded()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isDetached()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->isDetached()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isHidden()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->isHidden()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isInLayout()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->isInLayout()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isRemoving()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->isRemoving()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isResumed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isVisible()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setHasOptionsMenu(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 6
    return-void
.end method

.method public final setMenuVisibility(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 6
    return-void
.end method

.method public final setRetainInstance(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 6
    return-void
.end method

.method public final setUserVisibleHint(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 6
    return-void
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 6
    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6
    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 9
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 12
    return-void
.end method

.method public final zzae()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final zzaf()Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/dynamic/FragmentWrapper;->wrap(Landroid/app/Fragment;)Lcom/google/android/gms/dynamic/FragmentWrapper;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final zzag()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final zzah()Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/dynamic/FragmentWrapper;->wrap(Landroid/app/Fragment;)Lcom/google/android/gms/dynamic/FragmentWrapper;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final zzai()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/dynamic/FragmentWrapper;->zzia:Landroid/app/Fragment;

    .line 9
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 12
    return-void
.end method
