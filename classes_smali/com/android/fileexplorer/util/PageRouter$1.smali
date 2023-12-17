.class Lcom/android/fileexplorer/util/PageRouter$1;
.super Ljava/lang/Object;
.source "PageRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/PageRouter;->routeStorageSkipRequest(Landroidx/fragment/app/Fragment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$bundle:Landroid/os/Bundle;

.field public final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field public final synthetic val$id:I

.field public final synthetic val$jumpFragment:Lcom/android/fileexplorer/fragment/BaseFragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;ILcom/android/fileexplorer/fragment/BaseFragment;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/PageRouter$1;->val$fragment:Landroidx/fragment/app/Fragment;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/util/PageRouter$1;->val$id:I

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/util/PageRouter$1;->val$jumpFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/util/PageRouter$1;->val$bundle:Landroid/os/Bundle;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/PageRouter$1;->val$fragment:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-static {v0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 9
    iget v2, p0, Lcom/android/fileexplorer/util/PageRouter$1;->val$id:I

    .line 11
    iget-object v3, p0, Lcom/android/fileexplorer/util/PageRouter$1;->val$jumpFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/android/fileexplorer/util/PageRouter$1;->val$bundle:Landroid/os/Bundle;

    .line 19
    invoke-direct {v1, v2, v3, v4}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {v0, v1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 25
    return-void
.end method
