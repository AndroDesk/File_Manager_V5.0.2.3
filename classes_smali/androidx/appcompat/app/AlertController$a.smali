.class public final Landroidx/appcompat/app/AlertController$a;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AlertController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AlertController;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$a;->a:Landroidx/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a;->a:Landroidx/appcompat/app/AlertController;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    if-ne p1, v1, :cond_f

    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->q:Landroid/os/Message;

    if-eqz v1, :cond_f

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_2a

    :cond_f
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    if-ne p1, v1, :cond_1c

    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->u:Landroid/os/Message;

    if-eqz v1, :cond_1c

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_2a

    :cond_1c
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    if-ne p1, v1, :cond_29

    iget-object p1, v0, Landroidx/appcompat/app/AlertController;->y:Landroid/os/Message;

    if-eqz p1, :cond_29

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2f
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$a;->a:Landroidx/appcompat/app/AlertController;

    iget-object v0, p1, Landroidx/appcompat/app/AlertController;->Q:Landroidx/appcompat/app/AlertController$c;

    const/4 v1, 0x1

    iget-object p1, p1, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/q;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
