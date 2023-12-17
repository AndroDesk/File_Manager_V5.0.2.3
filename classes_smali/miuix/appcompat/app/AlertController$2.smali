.class Lmiuix/appcompat/app/AlertController$2;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onShowAnimComplete()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiuix/appcompat/app/AlertController;->access$102(Lmiuix/appcompat/app/AlertController;Z)Z

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 9
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$200(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_17

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 17
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$200(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimComplete()V

    .line 24
    :cond_17
    return-void
.end method

.method public onShowAnimStart()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lmiuix/appcompat/app/AlertController;->access$102(Lmiuix/appcompat/app/AlertController;Z)Z

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 9
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$200(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_17

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 17
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$200(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimStart()V

    .line 24
    :cond_17
    return-void
.end method
