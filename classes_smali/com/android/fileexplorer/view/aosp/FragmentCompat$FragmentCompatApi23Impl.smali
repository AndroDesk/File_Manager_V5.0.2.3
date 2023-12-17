.class Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatApi23Impl;
.super Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatApi15Impl;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/aosp/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentCompatApi23Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatApi15Impl;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .registers 4

    .line 1
    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method
