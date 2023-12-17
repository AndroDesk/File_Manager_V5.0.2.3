.class public Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;
.super Landroidx/lifecycle/a0;
.source "OtherNavigationViewModel.java"


# instance fields
.field public final entries:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileEntryEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private final homeFileNeedRefresh:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final navigationNeedRefresh:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Ljava/lang/Integer;",
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
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroidx/lifecycle/q;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->homeFileNeedRefresh:Landroidx/lifecycle/q;

    .line 16
    new-instance v0, Landroidx/lifecycle/q;

    .line 18
    invoke-direct {v0, v1}, Landroidx/lifecycle/q;-><init>(Ljava/lang/Object;)V

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->navigationNeedRefresh:Landroidx/lifecycle/q;

    .line 23
    new-instance v0, Landroidx/lifecycle/q;

    .line 25
    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->entries:Landroidx/lifecycle/q;

    .line 30
    return-void
.end method


# virtual methods
.method public homeFileIsNeedRefresh()Landroidx/lifecycle/q;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/q<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->homeFileNeedRefresh:Landroidx/lifecycle/q;

    .line 3
    return-object v0
.end method

.method public navigationIsNeedRefresh()Landroidx/lifecycle/q;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/q<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->navigationNeedRefresh:Landroidx/lifecycle/q;

    .line 3
    return-object v0
.end method
