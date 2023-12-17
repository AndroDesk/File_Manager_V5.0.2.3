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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/lifecycle/a0;-><init>()V

    new-instance v0, Landroidx/lifecycle/q;

    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/viewmodel/EventViewModel;->event:Landroidx/lifecycle/q;

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

    iget-object v0, p0, Lcom/android/fileexplorer/viewmodel/EventViewModel;->event:Landroidx/lifecycle/q;

    return-object v0
.end method
