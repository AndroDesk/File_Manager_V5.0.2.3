.class Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment$1;
.super Ljava/lang/Object;
.source "AbsFileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/file/base/AbsFileFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/PermissionUtils;->startNewAppPermsManager(Landroid/content/Context;)V

    return-void
.end method