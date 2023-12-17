.class Lcom/android/fileexplorer/util/BaseActivityHelper$3;
.super Ljava/lang/Object;
.source "BaseActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/BaseActivityHelper;->showOverwriteDialog2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final synthetic val$fileName:Ljava/lang/String;

.field public final synthetic val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$fileName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->lambda$run$0(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->lambda$run$1(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->lambda$run$2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V

    return-void
.end method

.method private static synthetic lambda$run$0(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_e

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setToAll(Z)V

    .line 15
    :cond_e
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;->rename()V

    .line 18
    return-void
.end method

.method private static synthetic lambda$run$1(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_e

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setToAll(Z)V

    .line 15
    :cond_e
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;->replace()V

    .line 18
    return-void
.end method

.method private static synthetic lambda$run$2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_e

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setToAll(Z)V

    .line 15
    :cond_e
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;->skip()V

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$fileName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$fileName:Ljava/lang/String;

    .line 9
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/16 v4, 0x14

    .line 20
    if-le v2, v4, :cond_2c

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const/16 v4, 0x11

    .line 29
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v0, "..."

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    :cond_2c
    iget-object v2, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 47
    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isActivityFinish()Z

    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3c

    .line 53
    const-string v0, "BaseActivityHelper"

    .line 55
    const-string v1, "run: activity is finished."

    .line 57
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void

    .line 61
    :cond_3c
    iget-object v2, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 63
    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 70
    move-result v2

    .line 71
    const-string v4, "."

    .line 73
    const v5, 0x7f110392

    .line 76
    const v6, 0x7f110181

    .line 79
    const/4 v7, 0x1

    .line 80
    if-eqz v2, :cond_89

    .line 82
    iget-object v2, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 84
    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 87
    move-result-object v8

    .line 88
    invoke-static {v6}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object v9

    .line 92
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 95
    move-result-object v2

    .line 96
    new-array v6, v7, [Ljava/lang/Object;

    .line 98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    move-result v10

    .line 102
    if-eqz v10, :cond_68

    .line 104
    goto :goto_6c

    .line 105
    :cond_68
    invoke-static {v0, v4, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    :goto_6c
    aput-object v0, v6, v3

    .line 111
    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    move-result-object v10

    .line 115
    iget-object v0, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;

    .line 117
    new-instance v11, Lcom/android/fileexplorer/util/b;

    .line 119
    invoke-direct {v11, v0, v3}, Lcom/android/fileexplorer/util/b;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;I)V

    .line 122
    new-instance v12, Lcom/android/fileexplorer/util/b;

    .line 124
    invoke-direct {v12, v0, v7}, Lcom/android/fileexplorer/util/b;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;I)V

    .line 127
    new-instance v13, Lcom/android/fileexplorer/util/b;

    .line 129
    const/4 v1, 0x2

    .line 130
    invoke-direct {v13, v0, v1}, Lcom/android/fileexplorer/util/b;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;I)V

    .line 133
    invoke-static/range {v8 .. v13}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createOverrideAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;)Lmiuix/appcompat/app/AlertDialog;

    .line 136
    goto/16 :goto_11f

    .line 138
    :cond_89
    iget-object v2, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 140
    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 143
    move-result-object v2

    .line 144
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 147
    move-result-object v2

    .line 148
    const v8, 0x7f0d0042

    .line 151
    const/4 v9, 0x0

    .line 152
    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 155
    move-result-object v2

    .line 156
    const v8, 0x7f0a033f

    .line 159
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object v8

    .line 163
    check-cast v8, Landroid/widget/Button;

    .line 165
    const v9, 0x7f0a0342

    .line 168
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    move-result-object v9

    .line 172
    check-cast v9, Landroid/widget/Button;

    .line 174
    const v10, 0x7f0a03a1

    .line 177
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 180
    move-result-object v10

    .line 181
    check-cast v10, Landroid/widget/Button;

    .line 183
    new-instance v11, Lcom/android/fileexplorer/util/BaseActivityHelper$3$1;

    .line 185
    invoke-direct {v11, p0}, Lcom/android/fileexplorer/util/BaseActivityHelper$3$1;-><init>(Lcom/android/fileexplorer/util/BaseActivityHelper$3;)V

    .line 188
    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    new-instance v8, Lcom/android/fileexplorer/util/BaseActivityHelper$3$2;

    .line 193
    invoke-direct {v8, p0}, Lcom/android/fileexplorer/util/BaseActivityHelper$3$2;-><init>(Lcom/android/fileexplorer/util/BaseActivityHelper$3;)V

    .line 196
    invoke-virtual {v9, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    new-instance v8, Lcom/android/fileexplorer/util/BaseActivityHelper$3$3;

    .line 201
    invoke-direct {v8, p0}, Lcom/android/fileexplorer/util/BaseActivityHelper$3$3;-><init>(Lcom/android/fileexplorer/util/BaseActivityHelper$3;)V

    .line 204
    invoke-virtual {v10, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    new-instance v8, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 209
    iget-object v9, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 211
    invoke-interface {v9}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 214
    move-result-object v9

    .line 215
    invoke-direct {v8, v9}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-virtual {v8, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 221
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 224
    move-result-object v6

    .line 225
    new-array v7, v7, [Ljava/lang/Object;

    .line 227
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 230
    move-result v9

    .line 231
    if-eqz v9, :cond_e9

    .line 233
    goto :goto_ed

    .line 234
    :cond_e9
    invoke-static {v0, v4, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    move-result-object v0

    .line 238
    :goto_ed
    aput-object v0, v7, v3

    .line 240
    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v8, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 247
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 250
    move-result-object v0

    .line 251
    const v1, 0x7f110467

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v8, v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v8, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 264
    new-instance v0, Lcom/android/fileexplorer/util/BaseActivityHelper$3$4;

    .line 266
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/util/BaseActivityHelper$3$4;-><init>(Lcom/android/fileexplorer/util/BaseActivityHelper$3;)V

    .line 269
    invoke-virtual {v8, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 276
    invoke-virtual {v8, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 279
    iget-object v0, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 281
    invoke-virtual {v8}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    .line 284
    move-result-object v1

    .line 285
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setOverWriteDialog(Lmiuix/appcompat/app/AlertDialog;)V

    .line 288
    :goto_11f
    return-void
.end method
