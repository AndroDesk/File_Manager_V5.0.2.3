.class Lcom/android/fileexplorer/view/ProgressDialog$2;
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

    iput-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_3a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    goto :goto_6c

    :cond_b
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$000(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$100(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$000(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    :cond_2b
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$000(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$100(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3a
    :goto_3a
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$200(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$200(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {v1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$300(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v1

    if-eqz v1, :cond_6c

    int-to-double v1, p1

    int-to-double v3, v0

    div-double/2addr v1, v3

    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$300(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$400(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6c
    :goto_6c
    return-void
.end method
