.class Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$MyHandler;
.super Landroid/os/Handler;
.source "MirrorCancelableProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyHandler"
.end annotation


# instance fields
.field public mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$MyHandler;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$MyHandler;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    if-eqz v0, :cond_147

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_147

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_18

    goto/16 :goto_147

    :cond_18
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x7f11023d

    const v3, 0x7f110317

    if-eqz v1, :cond_dc

    const/4 v4, 0x1

    const-string v5, ""

    if-eq v1, v4, :cond_b7

    const/4 v4, 0x2

    if-eq v1, v4, :cond_7d

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2f

    goto/16 :goto_147

    :cond_2f
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$700(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_147

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$700(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "totalCount"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "currentCount"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$700(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_147

    :cond_7d
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_dc

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$200(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_95

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_dc

    :cond_95
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$200(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ab

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_dc

    :cond_ab
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$200(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_dc

    :cond_b7
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$500(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_147

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$600(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d0

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$500(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_147

    :cond_d0
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$500(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$600(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_147

    :cond_dc
    :goto_dc
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v4

    if-eqz v4, :cond_147

    int-to-double v4, p1

    int-to-double v6, v1

    div-double/2addr v4, v6

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$200(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10b

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$200(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_10b
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_129

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_130

    :cond_129
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_130
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_147

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_147

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_147
    :goto_147
    return-void
.end method
