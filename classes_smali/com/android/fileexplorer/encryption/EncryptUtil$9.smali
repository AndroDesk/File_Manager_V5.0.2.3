.class Lcom/android/fileexplorer/encryption/EncryptUtil$9;
.super Ljava/lang/Object;
.source "EncryptUtil.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/encryption/EncryptUtil;->displayPatternDialog(Landroid/app/Activity;I)V
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
    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$9;->val$activity:Landroid/app/Activity;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$9;->val$requestCode:I

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
    if-eqz p1, :cond_2c

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$9;->val$activity:Landroid/app/Activity;

    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_2c

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$9;->val$activity:Landroid/app/Activity;

    .line 25
    iget v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$9;->val$requestCode:I

    .line 27
    invoke-static {p1, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$800(Landroid/app/Activity;I)V
    :try_end_1d
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_1d} :catch_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_23
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 30
    goto :goto_2c

    .line 31
    :catch_1e
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    goto :goto_2c

    .line 36
    :catch_23
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    goto :goto_2c

    .line 41
    :catch_28
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method
