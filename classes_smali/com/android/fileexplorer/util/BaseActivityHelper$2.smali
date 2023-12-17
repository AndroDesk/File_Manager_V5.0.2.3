.class Lcom/android/fileexplorer/util/BaseActivityHelper$2;
.super Ljava/lang/Object;
.source "BaseActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/BaseActivityHelper;->showOverwriteDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final synthetic val$fileName:Ljava/lang/String;

.field public final synthetic val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$2;->val$fileName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$2;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$2;->val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$2;->val$fileName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$2;->val$fileName:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$2;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 47
    if-eqz v2, :cond_a2

    .line 49
    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isActivityFinish()Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_37

    .line 55
    goto :goto_a2

    .line 56
    :cond_37
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 58
    iget-object v4, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$2;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 60
    invoke-interface {v4}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 63
    move-result-object v4

    .line 64
    invoke-direct {v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    const v4, 0x7f110444

    .line 70
    invoke-virtual {v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 73
    move-result-object v2

    .line 74
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 77
    move-result-object v4

    .line 78
    const v5, 0x7f110336

    .line 81
    const/4 v6, 0x1

    .line 82
    new-array v6, v6, [Ljava/lang/Object;

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_5a

    .line 90
    goto :goto_60

    .line 91
    :cond_5a
    const-string v7, "."

    .line 93
    invoke-static {v0, v7, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    :goto_60
    aput-object v0, v6, v3

    .line 99
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 106
    move-result-object v0

    .line 107
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 110
    move-result-object v1

    .line 111
    const v2, 0x7f1103d4

    .line 114
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 125
    move-result-object v0

    .line 126
    new-instance v1, Lcom/android/fileexplorer/util/BaseActivityHelper$2$3;

    .line 128
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/util/BaseActivityHelper$2$3;-><init>(Lcom/android/fileexplorer/util/BaseActivityHelper$2;)V

    .line 131
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 134
    move-result-object v0

    .line 135
    const v1, 0x7f1100eb

    .line 138
    new-instance v2, Lcom/android/fileexplorer/util/BaseActivityHelper$2$2;

    .line 140
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/util/BaseActivityHelper$2$2;-><init>(Lcom/android/fileexplorer/util/BaseActivityHelper$2;)V

    .line 143
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 146
    move-result-object v0

    .line 147
    const v1, 0x7f110050

    .line 150
    new-instance v2, Lcom/android/fileexplorer/util/BaseActivityHelper$2$1;

    .line 152
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/util/BaseActivityHelper$2$1;-><init>(Lcom/android/fileexplorer/util/BaseActivityHelper$2;)V

    .line 155
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    .line 162
    return-void

    .line 163
    :cond_a2
    :goto_a2
    const-string v0, "BaseActivityHelper"

    .line 165
    const-string v1, "run: activity is finished."

    .line 167
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method
