.class public final Lp0/b;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "InputConnectionCompat.java"


# instance fields
.field public final synthetic a:Lp0/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Lcom/android/cloud/fragment/presenter/b;)V
    .registers 3

    iput-object p2, p0, Lp0/b;->a:Lp0/d;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public final commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .registers 7

    iget-object v0, p0, Lp0/b;->a:Lp0/d;

    if-nez p1, :cond_5

    goto :goto_b

    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-ge v1, v2, :cond_d

    :goto_b
    const/4 v1, 0x0

    goto :goto_17

    :cond_d
    new-instance v1, Lp0/e;

    new-instance v2, Lp0/e$a;

    invoke-direct {v2, p1}, Lp0/e$a;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lp0/e;-><init>(Lp0/e$a;)V

    :goto_17
    check-cast v0, Lcom/android/cloud/fragment/presenter/b;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/cloud/fragment/presenter/b;->a(Lp0/e;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
