.class final Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_13

    .line 6
    if-eq v0, v1, :cond_9

    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    check-cast v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 14
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->hideView(I)V

    .line 19
    return v1

    .line 20
    :cond_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    check-cast p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->showView()V

    .line 27
    return v1
.end method
