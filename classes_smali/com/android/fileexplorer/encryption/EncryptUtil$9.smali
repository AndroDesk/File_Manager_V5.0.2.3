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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$9;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$9;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "booleanResult"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$9;->val$activity:Landroid/app/Activity;

    iget v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$9;->val$requestCode:I

    invoke-static {p1, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$800(Landroid/app/Activity;I)V
    :try_end_1d
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_1d} :catch_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_23
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_2c

    :catch_1e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2c

    :catch_23
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2c

    :catch_28
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2c
    :goto_2c
    return-void
.end method
