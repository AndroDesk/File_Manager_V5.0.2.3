.class public Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;
.super Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;
.source "MirrorBaseFragment.java"


# instance fields
.field public mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    new-instance p1, Landroidx/lifecycle/c0;

    .line 6
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 13
    const-class v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 15
    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 21
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 23
    return-void
.end method
