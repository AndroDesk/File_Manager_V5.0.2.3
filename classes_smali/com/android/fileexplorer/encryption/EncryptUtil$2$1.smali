.class Lcom/android/fileexplorer/encryption/EncryptUtil$2$1;
.super Ljava/lang/Object;
.source "EncryptUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/encryption/EncryptUtil$2;->onPostExecute(Lcom/android/fileexplorer/encryption/PrivateFileOpenUtil$OpenDecryptionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/encryption/EncryptUtil$2;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/encryption/EncryptUtil$2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2$1;->this$0:Lcom/android/fileexplorer/encryption/EncryptUtil$2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$2$1;->this$0:Lcom/android/fileexplorer/encryption/EncryptUtil$2;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/encryption/EncryptUtil$2;->val$activity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->showSpaceNotEnoughDialog(Landroid/app/Activity;)V

    .line 8
    return-void
.end method
