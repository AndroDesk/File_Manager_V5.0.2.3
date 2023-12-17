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
.method public constructor <init>(Lcom/android/fileexplorer/view/ProgressDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    if-eqz p1, :cond_3a

    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_b

    .line 11
    goto :goto_6c

    .line 12
    :cond_b
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 14
    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$000(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_3a

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 22
    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$100(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/CharSequence;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2b

    .line 32
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 34
    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$000(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    .line 37
    move-result-object p1

    .line 38
    const-string v0, ""

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    goto :goto_3a

    .line 44
    :cond_2b
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 46
    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$000(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    .line 49
    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 52
    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$100(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/CharSequence;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_3a
    :goto_3a
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 61
    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$200(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/ProgressBar;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 68
    move-result p1

    .line 69
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 71
    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$200(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/ProgressBar;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 78
    move-result v0

    .line 79
    iget-object v1, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 81
    invoke-static {v1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$300(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/text/NumberFormat;

    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_6c

    .line 87
    int-to-double v1, p1

    .line 88
    int-to-double v3, v0

    .line 89
    div-double/2addr v1, v3

    .line 90
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 92
    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$300(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/text/NumberFormat;

    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$2;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 102
    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$400(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_6c
    :goto_6c
    return-void
.end method
