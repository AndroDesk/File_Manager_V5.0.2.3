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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p3, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setToAll(Z)V

    :cond_e
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;->rename()V

    return-void
.end method

.method private static synthetic lambda$run$1(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V
    .registers 4

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setToAll(Z)V

    :cond_e
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;->replace()V

    return-void
.end method

.method private static synthetic lambda$run$2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;Landroid/widget/CheckBox;)V
    .registers 4

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setToAll(Z)V

    :cond_e
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;->skip()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    iget-object v0, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$fileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x14

    if-le v2, v4, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x11

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2c
    iget-object v2, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isActivityFinish()Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v0, "BaseActivityHelper"

    const-string v1, "run: activity is finished."

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3c
    iget-object v2, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v2

    const-string v4, "."

    const v5, 0x7f110392

    const v6, 0x7f110181

    const/4 v7, 0x1

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v8

    invoke-static {v6}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_68

    goto :goto_6c

    :cond_68
    invoke-static {v0, v4, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6c
    aput-object v0, v6, v3

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;

    new-instance v11, Lcom/android/fileexplorer/util/b;

    invoke-direct {v11, v0, v3}, Lcom/android/fileexplorer/util/b;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;I)V

    new-instance v12, Lcom/android/fileexplorer/util/b;

    invoke-direct {v12, v0, v7}, Lcom/android/fileexplorer/util/b;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;I)V

    new-instance v13, Lcom/android/fileexplorer/util/b;

    const/4 v1, 0x2

    invoke-direct {v13, v0, v1}, Lcom/android/fileexplorer/util/b;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;I)V

    invoke-static/range {v8 .. v13}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->createOverrideAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;)Lmiuix/appcompat/app/AlertDialog;

    goto/16 :goto_133

    :cond_89
    iget-object v2, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v8, 0x7f042dd4

    invoke-static {v8}, Lnp/NPFog;->d(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v8, 0x7f032ea9

    invoke-static {v8}, Lnp/NPFog;->d(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const v9, 0x7f032ed4

    invoke-static {v9}, Lnp/NPFog;->d(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    const v10, 0x7f032e37

    invoke-static/range {v10 .. v10}, Lnp/NPFog;->d(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    new-instance v11, Lcom/android/fileexplorer/util/BaseActivityHelper$3$1;

    invoke-direct {v11, p0}, Lcom/android/fileexplorer/util/BaseActivityHelper$3$1;-><init>(Lcom/android/fileexplorer/util/BaseActivityHelper$3;)V

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/android/fileexplorer/util/BaseActivityHelper$3$2;

    invoke-direct {v8, p0}, Lcom/android/fileexplorer/util/BaseActivityHelper$3$2;-><init>(Lcom/android/fileexplorer/util/BaseActivityHelper$3;)V

    invoke-virtual {v9, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/android/fileexplorer/util/BaseActivityHelper$3$3;

    invoke-direct {v8, p0}, Lcom/android/fileexplorer/util/BaseActivityHelper$3$3;-><init>(Lcom/android/fileexplorer/util/BaseActivityHelper$3;)V

    invoke-virtual {v10, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v9}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v9

    invoke-direct {v8, v9}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f9

    goto :goto_fd

    :cond_f9
    invoke-static {v0, v4, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_fd
    aput-object v0, v7, v3

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1829f1

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v8, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/fileexplorer/util/BaseActivityHelper$3$4;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/util/BaseActivityHelper$3$4;-><init>(Lcom/android/fileexplorer/util/BaseActivityHelper$3;)V

    invoke-virtual {v8, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v8, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-virtual {v8}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setOverWriteDialog(Lmiuix/appcompat/app/AlertDialog;)V

    :goto_133
    return-void
.end method
