.class Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl;
.super Ljava/lang/Object;
.source "FragmentCompat.java"

# interfaces
.implements Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/aosp/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentCompatBaseImpl"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;-><init>(Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl;[Ljava/lang/String;Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUserVisibleHint(Landroidx/fragment/app/Fragment;Z)V
    .registers 3

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
