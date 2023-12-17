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
.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$MyHandler;->mView:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$MyHandler;->mView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 9
    if-eqz v0, :cond_147

    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_147

    .line 17
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_18

    .line 23
    goto/16 :goto_147

    .line 25
    :cond_18
    iget v1, p1, Landroid/os/Message;->what:I

    .line 27
    const v2, 0x7f11023d

    .line 30
    const v3, 0x7f110317

    .line 33
    if-eqz v1, :cond_dc

    .line 35
    const/4 v4, 0x1

    .line 36
    const-string v5, ""

    .line 38
    if-eq v1, v4, :cond_b7

    .line 40
    const/4 v4, 0x2

    .line 41
    if-eq v1, v4, :cond_7d

    .line 43
    const/4 v2, 0x3

    .line 44
    if-eq v1, v2, :cond_2f

    .line 46
    goto/16 :goto_147

    .line 48
    :cond_2f
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$700(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_147

    .line 54
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 57
    move-result-object v1

    .line 58
    const/16 v2, 0x8

    .line 60
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$700(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 74
    move-result-object p1

    .line 75
    const-string v1, "totalCount"

    .line 77
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 80
    move-result v1

    .line 81
    const-string v2, "currentCount"

    .line 83
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 86
    move-result p1

    .line 87
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$700(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 90
    move-result-object v0

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    const-string v3, "("

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string p1, "/"

    .line 106
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string p1, ")"

    .line 114
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    goto/16 :goto_147

    .line 126
    :cond_7d
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_dc

    .line 132
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$200(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/CharSequence;

    .line 135
    move-result-object p1

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_95

    .line 142
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    goto :goto_dc

    .line 150
    :cond_95
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$200(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/CharSequence;

    .line 153
    move-result-object p1

    .line 154
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 158
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_ab

    .line 164
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 171
    goto :goto_dc

    .line 172
    :cond_ab
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 175
    move-result-object p1

    .line 176
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$200(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/CharSequence;

    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    goto :goto_dc

    .line 184
    :cond_b7
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$500(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 187
    move-result-object p1

    .line 188
    if-eqz p1, :cond_147

    .line 190
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$600(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/String;

    .line 193
    move-result-object p1

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    move-result p1

    .line 198
    if-eqz p1, :cond_d0

    .line 200
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$500(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    goto/16 :goto_147

    .line 209
    :cond_d0
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$500(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 212
    move-result-object p1

    .line 213
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$600(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/String;

    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    goto :goto_147

    .line 221
    :cond_dc
    :goto_dc
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/ProgressBar;

    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 228
    move-result p1

    .line 229
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/ProgressBar;

    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    .line 236
    move-result v1

    .line 237
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/text/NumberFormat;

    .line 240
    move-result-object v4

    .line 241
    if-eqz v4, :cond_147

    .line 243
    int-to-double v4, p1

    .line 244
    int-to-double v6, v1

    .line 245
    div-double/2addr v4, v6

    .line 246
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 248
    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 251
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$200(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/CharSequence;

    .line 254
    move-result-object v1

    .line 255
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 258
    move-result v1

    .line 259
    if-nez v1, :cond_10b

    .line 261
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$200(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/lang/CharSequence;

    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 268
    :cond_10b
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Ljava/text/NumberFormat;

    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object v4

    .line 280
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 283
    move-result-object v3

    .line 284
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 287
    move-result v3

    .line 288
    if-eqz v3, :cond_129

    .line 290
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 297
    goto :goto_130

    .line 298
    :cond_129
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 301
    move-result-object v2

    .line 302
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :goto_130
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 308
    move-result-object p1

    .line 309
    if-eqz p1, :cond_147

    .line 311
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 318
    move-result p1

    .line 319
    if-nez p1, :cond_147

    .line 321
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)Landroid/widget/TextView;

    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :cond_147
    :goto_147
    return-void
.end method
