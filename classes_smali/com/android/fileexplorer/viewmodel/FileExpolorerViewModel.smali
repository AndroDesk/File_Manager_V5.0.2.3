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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/a0;-><init>()V

    .line 4
    new-instance v0, Landroidx/lifecycle/q;

    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->oneHopShareLiveData:Landroidx/lifecycle/q;

    .line 11
    new-instance v0, Landroidx/lifecycle/q;

    .line 13
    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->newIntent:Landroidx/lifecycle/q;

    .line 18
    new-instance v0, Landroidx/lifecycle/q;

    .line 20
    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->initPhonMainFragment:Landroidx/lifecycle/q;

    .line 25
    return-void
.end method
