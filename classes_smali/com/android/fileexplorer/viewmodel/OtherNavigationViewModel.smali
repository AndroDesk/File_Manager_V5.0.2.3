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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroidx/lifecycle/a0;-><init>()V

    new-instance v0, Landroidx/lifecycle/q;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/q;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->homeFileNeedRefresh:Landroidx/lifecycle/q;

    new-instance v0, Landroidx/lifecycle/q;

    invoke-direct {v0, v1}, Landroidx/lifecycle/q;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->navigationNeedRefresh:Landroidx/lifecycle/q;

    new-instance v0, Landroidx/lifecycle/q;

    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->entries:Landroidx/lifecycle/q;

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

    iget-object v0, p0, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->homeFileNeedRefresh:Landroidx/lifecycle/q;

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

    iget-object v0, p0, Lcom/android/fileexplorer/viewmodel/OtherNavigationViewModel;->navigationNeedRefresh:Landroidx/lifecycle/q;

    return-object v0
.end method
