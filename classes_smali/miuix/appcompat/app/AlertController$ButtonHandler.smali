.class final Lmiuix/appcompat/app/AlertController$ButtonHandler;
.super Landroid/os/Handler;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ButtonHandler"
.end annotation


# static fields
.field private static final MSG_DISMISS_DIALOG:I = -0x626d435d


# instance fields
.field private final mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/DialogInterface;

    .line 9
    iget v1, p1, Landroid/os/Message;->what:I

    .line 11
    const v2, -0x626d435d

    .line 14
    if-ne v1, v2, :cond_15

    .line 16
    if-eqz v0, :cond_1c

    .line 18
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 21
    goto :goto_1c

    .line 22
    :cond_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    check-cast p1, Landroid/content/DialogInterface$OnClickListener;

    .line 26
    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 29
    :cond_1c
    :goto_1c
    return-void
.end method
