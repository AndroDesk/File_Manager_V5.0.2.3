.class public Lcom/android/fileexplorer/view/aosp/FragmentCompat;
.super Ljava/lang/Object;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/aosp/FragmentCompat$OnRequestPermissionsResultCallback;,
        Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatApi24Impl;,
        Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatApi23Impl;,
        Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatApi15Impl;,
        Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl;,
        Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatImpl;
    }
.end annotation


# static fields
.field public static final IMPL:Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatApi24Impl;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatApi24Impl;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/view/aosp/FragmentCompat;->IMPL:Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatImpl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/view/aosp/FragmentCompat;->IMPL:Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatImpl;->requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method public static setMenuVisibility(Landroidx/fragment/app/Fragment;Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    return-void
.end method

.method public static setUserVisibleHint(Landroidx/fragment/app/Fragment;Z)V
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/view/aosp/FragmentCompat;->IMPL:Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatImpl;->setUserVisibleHint(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/view/aosp/FragmentCompat;->IMPL:Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatImpl;->shouldShowRequestPermissionRationale(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
