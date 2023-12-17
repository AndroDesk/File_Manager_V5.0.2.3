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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroidx/lifecycle/a0;-><init>()V

    new-instance v0, Landroidx/lifecycle/q;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/q;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->isActionMode:Landroidx/lifecycle/q;

    new-instance v0, Landroidx/lifecycle/q;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/q;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->selectedTabPosition:Landroidx/lifecycle/q;

    new-instance v0, Landroidx/lifecycle/q;

    invoke-direct {v0, v1}, Landroidx/lifecycle/q;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/DocFragmentViewModel;->tabHeight:Landroidx/lifecycle/q;

    return-void
.end method
