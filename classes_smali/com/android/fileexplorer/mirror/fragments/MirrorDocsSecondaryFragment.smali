.class public Lcom/android/fileexplorer/mirror/fragments/MirrorDocsSecondaryFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;
.source "MirrorDocsSecondaryFragment.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/android/fileexplorer/mirror/fragments/MirrorDocsSecondaryFragment;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "file_category"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Lcom/android/fileexplorer/mirror/fragments/MirrorDocsSecondaryFragment;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorDocsSecondaryFragment;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    return-void
.end method
