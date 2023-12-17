.class public Lcom/android/fileexplorer/pad/fragment/FloatWidgetContentFragment;
.super Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;
.source "FloatWidgetContentFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f12052c

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    return-void
.end method
