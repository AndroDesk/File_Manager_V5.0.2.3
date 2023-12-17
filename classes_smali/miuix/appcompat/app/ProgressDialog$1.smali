.class Lmiuix/appcompat/app/ProgressDialog$1;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/ProgressDialog;

.field public final synthetic val$realProgressPercentColor:I


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/ProgressDialog;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    .line 3
    iput p2, p0, Lmiuix/appcompat/app/ProgressDialog$1;->val$realProgressPercentColor:I

    .line 5
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    .line 6
    invoke-static {p1}, Lmiuix/appcompat/app/ProgressDialog;->access$100(Lmiuix/appcompat/app/ProgressDialog;)Landroid/widget/TextView;

    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    .line 12
    invoke-static {v0}, Lmiuix/appcompat/app/ProgressDialog;->access$000(Lmiuix/appcompat/app/ProgressDialog;)Ljava/lang/CharSequence;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    .line 21
    invoke-static {p1}, Lmiuix/appcompat/app/ProgressDialog;->access$200(Lmiuix/appcompat/app/ProgressDialog;)Ljava/text/NumberFormat;

    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_70

    .line 27
    iget-object p1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    .line 29
    invoke-static {p1}, Lmiuix/appcompat/app/ProgressDialog;->access$300(Lmiuix/appcompat/app/ProgressDialog;)Landroid/widget/TextView;

    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_70

    .line 35
    iget-object p1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    .line 37
    invoke-static {p1}, Lmiuix/appcompat/app/ProgressDialog;->access$400(Lmiuix/appcompat/app/ProgressDialog;)I

    .line 40
    move-result p1

    .line 41
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    .line 43
    invoke-static {v0}, Lmiuix/appcompat/app/ProgressDialog;->access$500(Lmiuix/appcompat/app/ProgressDialog;)Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 50
    move-result v0

    .line 51
    int-to-double v1, p1

    .line 52
    int-to-double v3, v0

    .line 53
    div-double/2addr v1, v3

    .line 54
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 56
    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 59
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    .line 61
    invoke-static {v0}, Lmiuix/appcompat/app/ProgressDialog;->access$200(Lmiuix/appcompat/app/ProgressDialog;)Ljava/text/NumberFormat;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 72
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 74
    iget v2, p0, Lmiuix/appcompat/app/ProgressDialog$1;->val$realProgressPercentColor:I

    .line 76
    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 83
    move-result v0

    .line 84
    const/16 v3, 0x22

    .line 86
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 89
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    .line 91
    invoke-static {v0}, Lmiuix/appcompat/app/ProgressDialog;->access$500(Lmiuix/appcompat/app/ProgressDialog;)Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    .line 97
    invoke-static {v1}, Lmiuix/appcompat/app/ProgressDialog;->access$400(Lmiuix/appcompat/app/ProgressDialog;)I

    .line 100
    move-result v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 104
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog$1;->this$0:Lmiuix/appcompat/app/ProgressDialog;

    .line 106
    invoke-static {v0}, Lmiuix/appcompat/app/ProgressDialog;->access$300(Lmiuix/appcompat/app/ProgressDialog;)Landroid/widget/TextView;

    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_70
    return-void
.end method
