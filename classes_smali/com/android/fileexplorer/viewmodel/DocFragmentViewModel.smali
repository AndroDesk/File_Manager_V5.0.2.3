.class public Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;
.super Landroidx/lifecycle/a0;
.source "DocFragmentViewModel.java"


# instance fields
.field public final isActionMode:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final selectedTabPosition:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final tabHeight:Landroidx/lifecycle/q;
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
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    invoke-direct {v0, v1}, Landroidx/lifecycle/q;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->isActionMode:Landroidx/lifecycle/q;

    .line 13
    new-instance v0, Landroidx/lifecycle/q;

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Landroidx/lifecycle/q;-><init>(Ljava/lang/Object;)V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->selectedTabPosition:Landroidx/lifecycle/q;

    .line 25
    new-instance v0, Landroidx/lifecycle/q;

    .line 27
    invoke-direct {v0, v1}, Landroidx/lifecycle/q;-><init>(Ljava/lang/Object;)V

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->tabHeight:Landroidx/lifecycle/q;

    .line 32
    return-void
.end method
