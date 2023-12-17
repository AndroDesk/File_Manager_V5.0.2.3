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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$10;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$10;->val$requestCode:I

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

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$10;->val$activity:Landroid/app/Activity;

    iget v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$10;->val$requestCode:I

    invoke-static {p1, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$900(Landroid/app/Activity;I)V
    :try_end_15
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_15} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_18
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_23

    :catch_16
    move-exception p1

    goto :goto_1b

    :catch_18
    move-exception p1

    goto :goto_1b

    :catch_1a
    move-exception p1

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$10;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_23
    :goto_23
    return-void
.end method
