.class Lmiuix/appcompat/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_23

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 11
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 14
    move-result-object p1

    .line 15
    sget v0, Lmiuix/appcompat/R$id;->buttonPanel:I

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_23

    .line 23
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 25
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 36
    :cond_23
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
