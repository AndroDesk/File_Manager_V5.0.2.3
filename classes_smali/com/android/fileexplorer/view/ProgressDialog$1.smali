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
.method public constructor <init>(Lcom/android/fileexplorer/view/ProgressDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

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
    if-eqz p1, :cond_6f

    .line 8
    const/4 v0, 0x1

    .line 9
    const-string v1, ""

    .line 11
    if-eq p1, v0, :cond_3f

    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p1, v0, :cond_11

    .line 16
    goto/16 :goto_ec

    .line 18
    :cond_11
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 20
    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$000(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_6f

    .line 26
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 28
    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$100(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/CharSequence;

    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2f

    .line 38
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 40
    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$000(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    goto :goto_6f

    .line 48
    :cond_2f
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 50
    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$000(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    .line 53
    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 56
    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$100(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/CharSequence;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    goto :goto_6f

    .line 64
    :cond_3f
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 66
    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$400(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_ec

    .line 72
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 74
    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$500(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_5e

    .line 84
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 86
    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$400(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    goto/16 :goto_ec

    .line 95
    :cond_5e
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 97
    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$400(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    .line 100
    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 103
    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$500(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    goto/16 :goto_ec

    .line 112
    :cond_6f
    :goto_6f
    iget-object p1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 114
    invoke-static {p1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$200(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/ProgressBar;

    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 121
    move-result p1

    .line 122
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 124
    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$200(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/ProgressBar;

    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 131
    move-result v0

    .line 132
    iget-object v1, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 134
    invoke-static {v1}, Lcom/android/fileexplorer/view/ProgressDialog;->access$300(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/text/NumberFormat;

    .line 137
    move-result-object v1

    .line 138
    if-eqz v1, :cond_ec

    .line 140
    int-to-double v1, p1

    .line 141
    int-to-double v3, v0

    .line 142
    div-double/2addr v1, v3

    .line 143
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 145
    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 148
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 150
    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$100(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/CharSequence;

    .line 153
    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_a8

    .line 160
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 162
    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$100(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/lang/CharSequence;

    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 169
    :cond_a8
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 171
    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$300(Lcom/android/fileexplorer/view/ProgressDialog;)Ljava/text/NumberFormat;

    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 178
    move-result-object v0

    .line 179
    const-string v1, " "

    .line 181
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 188
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 190
    iget-object v2, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 192
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 199
    move-result-object v2

    .line 200
    const v3, 0x7f06055c

    .line 203
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 206
    move-result v2

    .line 207
    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 210
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 213
    move-result v2

    .line 214
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 217
    move-result v0

    .line 218
    sub-int/2addr v2, v0

    .line 219
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 222
    move-result v0

    .line 223
    const/16 v3, 0x22

    .line 225
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 228
    iget-object v0, p0, Lcom/android/fileexplorer/view/ProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/ProgressDialog;

    .line 230
    invoke-static {v0}, Lcom/android/fileexplorer/view/ProgressDialog;->access$000(Lcom/android/fileexplorer/view/ProgressDialog;)Landroid/widget/TextView;

    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_ec
    :goto_ec
    return-void
.end method
