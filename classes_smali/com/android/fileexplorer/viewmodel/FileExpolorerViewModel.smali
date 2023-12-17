.class public Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;
.super Landroidx/lifecycle/a0;
.source "FileExpolorerViewModel.java"


# instance fields
.field public final initPhonMainFragment:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final newIntent:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public final oneHopShareLiveData:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Lcom/android/fileexplorer/event/OneHopShareEvent;",
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
    .registers 2

    invoke-direct {p0}, Landroidx/lifecycle/a0;-><init>()V

    new-instance v0, Landroidx/lifecycle/q;

    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->oneHopShareLiveData:Landroidx/lifecycle/q;

    new-instance v0, Landroidx/lifecycle/q;

    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->newIntent:Landroidx/lifecycle/q;

    new-instance v0, Landroidx/lifecycle/q;

    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->initPhonMainFragment:Landroidx/lifecycle/q;

    return-void
.end method
