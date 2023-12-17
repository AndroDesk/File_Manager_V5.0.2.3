.class public abstract Lcom/android/fileexplorer/AppLayoutBaseFragment;
.super Lcom/android/fileexplorer/fragment/BaseFragment;
.source "AppLayoutBaseFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AppBaseFragment"


# instance fields
.field public mCurrentFragment:Lmiuix/appcompat/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponsiveState()Lmiuix/responsive/map/ResponsiveState;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method public final onBack()Z
    .registers 5

    const-string v0, "AppBaseFragment"

    :try_start_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  onBack current fragmentList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    instance-of v3, v2, Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v3, :cond_31

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_31

    :cond_48
    check-cast v2, Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    move-result v2
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_52

    if-eqz v2, :cond_31

    const/4 v0, 0x1

    return v0

    :catch_52
    move-exception v1

    const-string v2, "onBack error :"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2, v0}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5c
    invoke-virtual {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;->onCurrentBack()Z

    move-result v0

    return v0
.end method

.method public onCurrentBack()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    return-void
.end method
