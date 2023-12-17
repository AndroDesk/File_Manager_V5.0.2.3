.class public Lcom/android/fileexplorer/pad/fragment/FloatWidgetContentFragment;
.super Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;
.source "FloatWidgetContentFragment.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12052c

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method
