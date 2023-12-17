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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl;[Ljava/lang/String;Landroidx/fragment/app/Fragment;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->this$0:Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl;

    iput-object p2, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$fragment:Landroidx/fragment/app/Fragment;

    iput p4, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_2c

    iget-object v5, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v2, v5, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_28
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_2c
    iget-object v1, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$fragment:Landroidx/fragment/app/Fragment;

    check-cast v1, Lcom/android/fileexplorer/view/aosp/FragmentCompat$OnRequestPermissionsResultCallback;

    iget v2, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$requestCode:I

    iget-object v3, p0, Lcom/android/fileexplorer/view/aosp/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/fileexplorer/view/aosp/FragmentCompat$OnRequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
