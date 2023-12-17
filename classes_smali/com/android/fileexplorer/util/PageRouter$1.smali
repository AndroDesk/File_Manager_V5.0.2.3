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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;ILcom/android/fileexplorer/fragment/BaseFragment;Landroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/util/PageRouter$1;->val$fragment:Landroidx/fragment/app/Fragment;

    iput p2, p0, Lcom/android/fileexplorer/util/PageRouter$1;->val$id:I

    iput-object p3, p0, Lcom/android/fileexplorer/util/PageRouter$1;->val$jumpFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    iput-object p4, p0, Lcom/android/fileexplorer/util/PageRouter$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/util/PageRouter$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    iget v2, p0, Lcom/android/fileexplorer/util/PageRouter$1;->val$id:I

    iget-object v3, p0, Lcom/android/fileexplorer/util/PageRouter$1;->val$jumpFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fileexplorer/util/PageRouter$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    return-void
.end method
