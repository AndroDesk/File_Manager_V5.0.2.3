.class Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatApi24Impl;
.super Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatApi23Impl;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/aosp/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentCompatApi24Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatApi23Impl;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public setUserVisibleHint(Landroidx/fragment/app/Fragment;Z)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 4
    return-void
.end method
