.class Lcom/android/fileexplorer/encryption/EncryptUtil$8$1;
.super Ljava/lang/Object;
.source "EncryptUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/encryption/EncryptUtil$8;->onPostExecute(Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/encryption/EncryptUtil$8;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/encryption/EncryptUtil$8;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$8$1;->this$0:Lcom/android/fileexplorer/encryption/EncryptUtil$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$8$1;->this$0:Lcom/android/fileexplorer/encryption/EncryptUtil$8;

    iget-object v0, v0, Lcom/android/fileexplorer/encryption/EncryptUtil$8;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->showSpaceNotEnoughDialog(Landroid/app/Activity;)V

    return-void
.end method