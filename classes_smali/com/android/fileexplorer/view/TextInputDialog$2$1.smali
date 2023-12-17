.class Lcom/android/fileexplorer/view/TextInputDialog$2$1;
.super Ljava/lang/Object;
.source "TextInputDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/TextInputDialog$2;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/TextInputDialog$2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$200(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$300(Lcom/android/fileexplorer/view/TextInputDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v2, v2, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v2}, Lcom/android/fileexplorer/view/TextInputDialog;->access$400(Lcom/android/fileexplorer/view/TextInputDialog;)Z

    move-result v2

    const-string v3, "."

    const/4 v4, 0x1

    if-eqz v2, :cond_44

    invoke-static {p1, v4}, Lcom/android/fileexplorer/util/StringUtils;->isNameIllegal(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_39
    const p1, 0x7f1101b9

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    return-void

    :cond_44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v5, 0x7f110050

    const v6, 0x7f1100eb

    if-nez v2, :cond_128

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_128

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->isCheckFileName()Z

    move-result v0

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$300(Lcom/android/fileexplorer/view/TextInputDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$500(Lcom/android/fileexplorer/view/TextInputDialog;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v1, v1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v1, p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$500(Lcom/android/fileexplorer/view/TextInputDialog;Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f110391

    if-ne v4, v0, :cond_a3

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$300(Lcom/android/fileexplorer/view/TextInputDialog;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_bf

    if-ne v1, v4, :cond_bf

    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$200(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$100(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_a3
    if-le v0, v4, :cond_bf

    if-ne v1, v4, :cond_bf

    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$200(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$100(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_bf
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$600(Lcom/android/fileexplorer/view/TextInputDialog;)Z

    move-result v0

    if-nez v0, :cond_108

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v1, v1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$100(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v1, v1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$100(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f182e19

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/view/TextInputDialog$2$1$2;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/view/TextInputDialog$2$1$2;-><init>(Lcom/android/fileexplorer/view/TextInputDialog$2$1;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog$2$1$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/TextInputDialog$2$1$1;-><init>(Lcom/android/fileexplorer/view/TextInputDialog$2$1;)V

    invoke-virtual {p1, v5, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1a7

    :cond_108
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$800(Lcom/android/fileexplorer/view/TextInputDialog;)Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;->onFinish(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11f

    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    goto/16 :goto_1a7

    :cond_11f
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$700(Lcom/android/fileexplorer/view/TextInputDialog;)V

    goto/16 :goto_1a7

    :cond_128
    iget-object v2, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v2, v2, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v2}, Lcom/android/fileexplorer/view/TextInputDialog;->access$900(Lcom/android/fileexplorer/view/TextInputDialog;)Z

    move-result v2

    if-eqz v2, :cond_183

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_183

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v1, v1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$100(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v1, v1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$100(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f182e18

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/view/TextInputDialog$2$1$4;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/view/TextInputDialog$2$1$4;-><init>(Lcom/android/fileexplorer/view/TextInputDialog$2$1;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog$2$1$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/TextInputDialog$2$1$3;-><init>(Lcom/android/fileexplorer/view/TextInputDialog$2$1;)V

    invoke-virtual {p1, v5, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$600(Lcom/android/fileexplorer/view/TextInputDialog;)Z

    move-result v0

    if-eqz v0, :cond_17f

    invoke-static {p1}, Lcom/android/cloud/util/DialogUtil;->dismissIfAccountInvalid(Landroid/app/Dialog;)V

    :cond_17f
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1a7

    :cond_183
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$1000(Lcom/android/fileexplorer/view/TextInputDialog;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$800(Lcom/android/fileexplorer/view/TextInputDialog;)Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;->onFinish(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a0

    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    goto :goto_1a7

    :cond_1a0
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$700(Lcom/android/fileexplorer/view/TextInputDialog;)V

    :goto_1a7
    return-void
.end method
