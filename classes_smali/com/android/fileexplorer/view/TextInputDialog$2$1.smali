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
.method public constructor <init>(Lcom/android/fileexplorer/view/TextInputDialog$2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 5
    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$200(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/widget/EditText;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 19
    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 21
    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$300(Lcom/android/fileexplorer/view/TextInputDialog;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 35
    iget-object v2, v2, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 37
    invoke-static {v2}, Lcom/android/fileexplorer/view/TextInputDialog;->access$400(Lcom/android/fileexplorer/view/TextInputDialog;)Z

    .line 40
    move-result v2

    .line 41
    const-string v3, "."

    .line 43
    const/4 v4, 0x1

    .line 44
    if-eqz v2, :cond_44

    .line 46
    invoke-static {p1, v4}, Lcom/android/fileexplorer/util/StringUtils;->isNameIllegal(Ljava/lang/String;Z)Z

    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_39

    .line 52
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_44

    .line 58
    :cond_39
    const p1, 0x7f1101b9

    .line 61
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    .line 68
    return-void

    .line 69
    :cond_44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    move-result v2

    .line 73
    const v5, 0x7f110050

    .line 76
    const v6, 0x7f1100eb

    .line 79
    if-nez v2, :cond_124

    .line 81
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_124

    .line 87
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 89
    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 91
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->isCheckFileName()Z

    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_bf

    .line 97
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 99
    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 101
    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$300(Lcom/android/fileexplorer/view/TextInputDialog;)Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$500(Lcom/android/fileexplorer/view/TextInputDialog;Ljava/lang/String;)I

    .line 108
    move-result v0

    .line 109
    iget-object v1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 111
    iget-object v1, v1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 113
    invoke-static {v1, p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$500(Lcom/android/fileexplorer/view/TextInputDialog;Ljava/lang/String;)I

    .line 116
    move-result v1

    .line 117
    const v2, 0x7f110391

    .line 120
    if-ne v4, v0, :cond_a3

    .line 122
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 124
    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 126
    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$300(Lcom/android/fileexplorer/view/TextInputDialog;)Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    const/16 v3, 0x2e

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 135
    move-result v0

    .line 136
    if-lez v0, :cond_bf

    .line 138
    if-ne v1, v4, :cond_bf

    .line 140
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 142
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 144
    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$200(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/widget/EditText;

    .line 147
    move-result-object p1

    .line 148
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 150
    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 152
    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$100(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/content/Context;

    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 163
    return-void

    .line 164
    :cond_a3
    if-le v0, v4, :cond_bf

    .line 166
    if-ne v1, v4, :cond_bf

    .line 168
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 170
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 172
    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$200(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/widget/EditText;

    .line 175
    move-result-object p1

    .line 176
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 178
    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 180
    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$100(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/content/Context;

    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 191
    return-void

    .line 192
    :cond_bf
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 194
    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 196
    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$600(Lcom/android/fileexplorer/view/TextInputDialog;)Z

    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_104

    .line 202
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 204
    iget-object v1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 206
    iget-object v1, v1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 208
    invoke-static {v1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$100(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/content/Context;

    .line 211
    move-result-object v1

    .line 212
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    iget-object v1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 217
    iget-object v1, v1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 219
    invoke-static {v1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$100(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/content/Context;

    .line 222
    move-result-object v1

    .line 223
    const v2, 0x7f11038f

    .line 226
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 233
    move-result-object v0

    .line 234
    new-instance v1, Lcom/android/fileexplorer/view/TextInputDialog$2$1$2;

    .line 236
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/view/TextInputDialog$2$1$2;-><init>(Lcom/android/fileexplorer/view/TextInputDialog$2$1;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, v6, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 242
    move-result-object p1

    .line 243
    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog$2$1$1;

    .line 245
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/TextInputDialog$2$1$1;-><init>(Lcom/android/fileexplorer/view/TextInputDialog$2$1;)V

    .line 248
    invoke-virtual {p1, v5, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 259
    goto/16 :goto_19f

    .line 261
    :cond_104
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 263
    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 265
    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$800(Lcom/android/fileexplorer/view/TextInputDialog;)Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;

    .line 268
    move-result-object v0

    .line 269
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;->onFinish(Ljava/lang/String;)Z

    .line 272
    move-result p1

    .line 273
    if-eqz p1, :cond_11b

    .line 275
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 277
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 279
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 282
    goto/16 :goto_19f

    .line 284
    :cond_11b
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 286
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 288
    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$700(Lcom/android/fileexplorer/view/TextInputDialog;)V

    .line 291
    goto/16 :goto_19f

    .line 293
    :cond_124
    iget-object v2, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 295
    iget-object v2, v2, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 297
    invoke-static {v2}, Lcom/android/fileexplorer/view/TextInputDialog;->access$900(Lcom/android/fileexplorer/view/TextInputDialog;)Z

    .line 300
    move-result v2

    .line 301
    if-eqz v2, :cond_17b

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 306
    move-result v0

    .line 307
    if-nez v0, :cond_17b

    .line 309
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 311
    iget-object v1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 313
    iget-object v1, v1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 315
    invoke-static {v1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$100(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/content/Context;

    .line 318
    move-result-object v1

    .line 319
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 322
    iget-object v1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 324
    iget-object v1, v1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 326
    invoke-static {v1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$100(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/content/Context;

    .line 329
    move-result-object v1

    .line 330
    const v2, 0x7f11038e

    .line 333
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 340
    move-result-object v0

    .line 341
    new-instance v1, Lcom/android/fileexplorer/view/TextInputDialog$2$1$4;

    .line 343
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/view/TextInputDialog$2$1$4;-><init>(Lcom/android/fileexplorer/view/TextInputDialog$2$1;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0, v6, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 349
    move-result-object p1

    .line 350
    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog$2$1$3;

    .line 352
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/TextInputDialog$2$1$3;-><init>(Lcom/android/fileexplorer/view/TextInputDialog$2$1;)V

    .line 355
    invoke-virtual {p1, v5, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 358
    move-result-object p1

    .line 359
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 362
    move-result-object p1

    .line 363
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 365
    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 367
    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$600(Lcom/android/fileexplorer/view/TextInputDialog;)Z

    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_177

    .line 373
    invoke-static {p1}, Lcom/android/cloud/util/DialogUtil;->dismissIfAccountInvalid(Landroid/app/Dialog;)V

    .line 376
    :cond_177
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 379
    goto :goto_19f

    .line 380
    :cond_17b
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 382
    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 384
    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$1000(Lcom/android/fileexplorer/view/TextInputDialog;)V

    .line 387
    iget-object v0, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 389
    iget-object v0, v0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 391
    invoke-static {v0}, Lcom/android/fileexplorer/view/TextInputDialog;->access$800(Lcom/android/fileexplorer/view/TextInputDialog;)Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;

    .line 394
    move-result-object v0

    .line 395
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;->onFinish(Ljava/lang/String;)Z

    .line 398
    move-result p1

    .line 399
    if-eqz p1, :cond_198

    .line 401
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 403
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 405
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 408
    goto :goto_19f

    .line 409
    :cond_198
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 411
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 413
    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$700(Lcom/android/fileexplorer/view/TextInputDialog;)V

    .line 416
    :goto_19f
    return-void
.end method
