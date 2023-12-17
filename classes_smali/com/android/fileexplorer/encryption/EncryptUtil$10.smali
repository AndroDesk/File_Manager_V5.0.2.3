.class Lcom/android/fileexplorer/encryption/EncryptUtil$10;
.super Ljava/lang/Object;
.source "EncryptUtil.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/encryption/EncryptUtil;->requestSetPwd(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$requestCode:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$10;->val$activity:Landroid/app/Activity;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$10;->val$requestCode:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 7
    const-string v0, "booleanResult"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_23

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$10;->val$activity:Landroid/app/Activity;

    .line 17
    iget v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$10;->val$requestCode:I

    .line 19
    invoke-static {p1, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$900(Landroid/app/Activity;I)V
    :try_end_15
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_15} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_18
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_15} :catch_16

    .line 22
    goto :goto_23

    .line 23
    :catch_16
    move-exception p1

    .line 24
    goto :goto_1b

    .line 25
    :catch_18
    move-exception p1

    .line 26
    goto :goto_1b

    .line 27
    :catch_1a
    move-exception p1

    .line 28
    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$10;->val$activity:Landroid/app/Activity;

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 36
    :cond_23
    :goto_23
    return-void
.end method
