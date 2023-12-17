.class Lmiuix/navigator/NavHostFragment$1;
.super Lmiuix/responsive/page/manager/BaseResponseStateManager;
.source "NavHostFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/NavHostFragment;->onAttach(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/NavHostFragment;


# direct methods
.method public constructor <init>(Lmiuix/navigator/NavHostFragment;Lmiuix/responsive/interfaces/IResponsive;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavHostFragment$1;->this$0:Lmiuix/navigator/NavHostFragment;

    .line 3
    invoke-direct {p0, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;-><init>(Lmiuix/responsive/interfaces/IResponsive;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment$1;->this$0:Lmiuix/navigator/NavHostFragment;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
