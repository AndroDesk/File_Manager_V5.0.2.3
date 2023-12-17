.class public abstract Lcom/android/fileexplorer/AppLayoutBaseFragment;
.super Lcom/android/fileexplorer/fragment/BaseFragment;
.source "AppLayoutBaseFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AppBaseFragment"


# instance fields
.field public mCurrentFragment:Lmiuix/appcompat/app/Fragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    .line 4
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

    .line 1
    const-string v0, "AppBaseFragment"

    .line 3
    :try_start_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v3, "  onBack current fragmentList size = "

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 35
    move-result v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v1

    .line 50
    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_5c

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 62
    instance-of v3, v2, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 64
    if-eqz v3, :cond_31

    .line 66
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_48

    .line 72
    goto :goto_31

    .line 73
    :cond_48
    check-cast v2, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 75
    invoke-virtual {v2}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    .line 78
    move-result v2
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_52

    .line 79
    if-eqz v2, :cond_31

    .line 81
    const/4 v0, 0x1

    .line 82
    return v0

    .line 83
    :catch_52
    move-exception v1

    .line 84
    const-string v2, "onBack error :"

    .line 86
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    move-result-object v2

    .line 90
    invoke-static {v1, v2, v0}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 93
    :cond_5c
    invoke-virtual {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;->onCurrentBack()Z

    .line 96
    move-result v0

    .line 97
    return v0
.end method

.method public onCurrentBack()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroyView()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    .line 4
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResume()V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    .line 7
    return-void
.end method
