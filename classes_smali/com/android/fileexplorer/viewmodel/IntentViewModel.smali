.class public final Lcom/android/fileexplorer/viewmodel/IntentViewModel;
.super Ljava/lang/Object;
.source "IntentViewModel.kt"


# instance fields
.field private final newIntent:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/lifecycle/q;

    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/IntentViewModel;->newIntent:Landroidx/lifecycle/q;

    .line 11
    return-void
.end method


# virtual methods
.method public final getNewIntent()Landroidx/lifecycle/q;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/q<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/viewmodel/IntentViewModel;->newIntent:Landroidx/lifecycle/q;

    .line 3
    return-object v0
.end method
