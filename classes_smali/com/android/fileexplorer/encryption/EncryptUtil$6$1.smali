.class Lcom/android/fileexplorer/encryption/EncryptUtil$6$1;
.super Ljava/lang/Object;
.source "EncryptUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/encryption/EncryptUtil$6;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/encryption/EncryptUtil$6;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/encryption/EncryptUtil$6;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6$1;->this$0:Lcom/android/fileexplorer/encryption/EncryptUtil$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$6$1;->this$0:Lcom/android/fileexplorer/encryption/EncryptUtil$6;

    iget-object v0, v0, Lcom/android/fileexplorer/encryption/EncryptUtil$6;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->showSpaceNotEnoughDialog(Landroid/app/Activity;)V

    return-void
.end method
