.class public Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;
.super Landroidx/lifecycle/a0;
.source "MirrorFileExplorerHomeViewModel.java"


# instance fields
.field public final add_stack_model:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final forward_model:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final get_stack_model:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final go_back_forward_model:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final hoverMaskState:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final init_tab_model:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Ljava/util/List<",
            "+",
            "Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final keyData:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final menuId:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final refreshState:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final start_drop_model:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final tab_adapter_model:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final tab_model:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/a0;-><init>()V

    .line 4
    new-instance v0, Landroidx/lifecycle/q;

    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->init_tab_model:Landroidx/lifecycle/q;

    .line 11
    new-instance v0, Landroidx/lifecycle/q;

    .line 13
    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 18
    new-instance v0, Landroidx/lifecycle/q;

    .line 20
    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->add_stack_model:Landroidx/lifecycle/q;

    .line 25
    new-instance v0, Landroidx/lifecycle/q;

    .line 27
    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->forward_model:Landroidx/lifecycle/q;

    .line 32
    new-instance v0, Landroidx/lifecycle/q;

    .line 34
    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->go_back_forward_model:Landroidx/lifecycle/q;

    .line 39
    new-instance v0, Landroidx/lifecycle/q;

    .line 41
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getDocListColumnTypeMirror()I

    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Landroidx/lifecycle/q;-><init>(Ljava/lang/Object;)V

    .line 52
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    .line 54
    new-instance v0, Landroidx/lifecycle/q;

    .line 56
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 58
    invoke-direct {v0, v1}, Landroidx/lifecycle/q;-><init>(Ljava/lang/Object;)V

    .line 61
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    .line 63
    new-instance v0, Landroidx/lifecycle/q;

    .line 65
    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->hoverMaskState:Landroidx/lifecycle/q;

    .line 70
    new-instance v0, Landroidx/lifecycle/q;

    .line 72
    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 77
    new-instance v0, Landroidx/lifecycle/q;

    .line 79
    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_adapter_model:Landroidx/lifecycle/q;

    .line 84
    new-instance v0, Landroidx/lifecycle/q;

    .line 86
    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->get_stack_model:Landroidx/lifecycle/q;

    .line 91
    new-instance v0, Landroidx/lifecycle/q;

    .line 93
    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->start_drop_model:Landroidx/lifecycle/q;

    .line 98
    return-void
.end method
