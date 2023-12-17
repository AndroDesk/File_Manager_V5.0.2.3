.class Lcom/android/fileexplorer/view/ProgressDialog$1;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/ProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_6f

    const/4 v0, 0x1

    const-string v1, ""

    if-eq p1, v0, :cond_3f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    goto/16 :goto_f0

    :cond_11
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$000(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_6f

    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$100(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$000(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6f

    :cond_2f
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$000(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$100(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6f

    :cond_3f
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$400(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_f0

    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$500(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5e

    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$400(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f0

    :cond_5e
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$400(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$500(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f0

    :cond_6f
    :goto_6f
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$200(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$200(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {v1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$300(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v1

    if-eqz v1, :cond_f0

    int-to-double v1, p1

    int-to-double v3, v0

    div-double/2addr v1, v3

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$100(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a8

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$100(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_a8
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$300(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f28ca

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v3, 0x22

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$000(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f0
    :goto_f0
    return-void
.end method
