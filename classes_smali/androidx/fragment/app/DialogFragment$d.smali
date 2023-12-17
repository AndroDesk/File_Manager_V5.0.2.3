.class public final Landroidx/fragment/app/DialogFragment$d;
.super Ljava/lang/Object;
.source "DialogFragment.java"

# interfaces
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/DialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/r<",
        "Landroidx/lifecycle/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/DialogFragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/DialogFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/DialogFragment$d;->a:Landroidx/fragment/app/DialogFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    check-cast p1, Landroidx/lifecycle/m;

    .line 3
    if-eqz p1, :cond_5d

    .line 5
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment$d;->a:Landroidx/fragment/app/DialogFragment;

    .line 7
    invoke-static {p1}, Landroidx/fragment/app/DialogFragment;->access$200(Landroidx/fragment/app/DialogFragment;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_5d

    .line 13
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment$d;->a:Landroidx/fragment/app/DialogFragment;

    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_55

    .line 25
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment$d;->a:Landroidx/fragment/app/DialogFragment;

    .line 27
    invoke-static {v0}, Landroidx/fragment/app/DialogFragment;->access$000(Landroidx/fragment/app/DialogFragment;)Landroid/app/Dialog;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_5d

    .line 33
    const/4 v0, 0x3

    .line 34
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_4b

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string v1, "DialogFragment "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, " setting the content view on "

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment$d;->a:Landroidx/fragment/app/DialogFragment;

    .line 60
    invoke-static {v1}, Landroidx/fragment/app/DialogFragment;->access$000(Landroidx/fragment/app/DialogFragment;)Landroid/app/Dialog;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    const-string v1, "FragmentManager"

    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_4b
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment$d;->a:Landroidx/fragment/app/DialogFragment;

    .line 78
    invoke-static {v0}, Landroidx/fragment/app/DialogFragment;->access$000(Landroidx/fragment/app/DialogFragment;)Landroid/app/Dialog;

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 85
    goto :goto_5d

    .line 86
    :cond_55
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 88
    const-string v0, "DialogFragment can not be attached to a container view"

    .line 90
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p1

    .line 94
    :cond_5d
    :goto_5d
    return-void
.end method
