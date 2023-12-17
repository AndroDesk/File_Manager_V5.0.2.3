.class Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;
.super Ljava/lang/Object;
.source "FragmentCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl;->requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl;

.field public final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field public final synthetic val$permissions:[Ljava/lang/String;

.field public final synthetic val$requestCode:I


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl;[Ljava/lang/String;Landroidx/fragment/app/Fragment;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->this$0:Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$fragment:Landroidx/fragment/app/Fragment;

    .line 7
    iput p4, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$requestCode:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    .line 3
    array-length v0, v0

    .line 4
    new-array v0, v0, [I

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$fragment:Landroidx/fragment/app/Fragment;

    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_28

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    iget-object v3, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    .line 24
    array-length v3, v3

    .line 25
    const/4 v4, 0x0

    .line 26
    :goto_19
    if-ge v4, v3, :cond_2c

    .line 28
    iget-object v5, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    .line 30
    aget-object v5, v5, v4

    .line 32
    invoke-virtual {v2, v5, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    move-result v5

    .line 36
    aput v5, v0, v4

    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 40
    goto :goto_19

    .line 41
    :cond_28
    const/4 v1, -0x1

    .line 42
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 45
    :cond_2c
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$fragment:Landroidx/fragment/app/Fragment;

    .line 47
    check-cast v1, Lcom/android/fileexplorer/view/aosp/FragmentCompat$OnRequestPermissionsResultCallback;

    .line 49
    iget v2, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$requestCode:I

    .line 51
    iget-object v3, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    .line 53
    invoke-interface {v1, v2, v3, v0}, Lcom/android/fileexplorer/view/aosp/FragmentCompat$OnRequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 56
    return-void
.end method
