.class public final Lp0/b;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "InputConnectionCompat.java"


# instance fields
.field public final synthetic a:Lp0/d;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Lcom/android/cloud/fragment/presenter/b;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lp0/b;->a:Lp0/d;

    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 7
    return-void
.end method


# virtual methods
.method public final commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lp0/b;->a:Lp0/d;

    .line 3
    if-nez p1, :cond_5

    .line 5
    goto :goto_b

    .line 6
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    const/16 v2, 0x19

    .line 10
    if-ge v1, v2, :cond_d

    .line 12
    :goto_b
    const/4 v1, 0x0

    .line 13
    goto :goto_17

    .line 14
    :cond_d
    new-instance v1, Lp0/e;

    .line 16
    new-instance v2, Lp0/e$a;

    .line 18
    invoke-direct {v2, p1}, Lp0/e$a;-><init>(Ljava/lang/Object;)V

    .line 21
    invoke-direct {v1, v2}, Lp0/e;-><init>(Lp0/e$a;)V

    .line 24
    :goto_17
    check-cast v0, Lcom/android/cloud/fragment/presenter/b;

    .line 26
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/cloud/fragment/presenter/b;->a(Lp0/e;ILandroid/os/Bundle;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_21

    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_21
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    .line 37
    move-result p1

    .line 38
    return p1
.end method
