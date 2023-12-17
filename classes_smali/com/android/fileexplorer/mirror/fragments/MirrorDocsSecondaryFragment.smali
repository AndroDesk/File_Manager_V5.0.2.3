.class public Lcom/android/fileexplorer/mirror/fragments/MirrorDocsSecondaryFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;
.source "MirrorDocsSecondaryFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static newInstance(I)Lcom/android/fileexplorer/mirror/fragments/MirrorDocsSecondaryFragment;
    .registers 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string v1, "file_category"

    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorDocsSecondaryFragment;

    .line 13
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorDocsSecondaryFragment;-><init>()V

    .line 16
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 19
    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    .line 4
    return-void
.end method
