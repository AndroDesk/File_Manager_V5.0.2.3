.class public Lcom/android/fileexplorer/viewmodel/EventViewModel;
.super Landroidx/lifecycle/a0;
.source "EventViewModel.java"


# instance fields
.field private event:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Landroid/view/KeyEvent;",
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
    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/EventViewModel;->event:Landroidx/lifecycle/q;

    .line 11
    return-void
.end method


# virtual methods
.method public getEvent()Landroidx/lifecycle/q;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/q<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/viewmodel/EventViewModel;->event:Landroidx/lifecycle/q;

    .line 3
    return-object v0
.end method
