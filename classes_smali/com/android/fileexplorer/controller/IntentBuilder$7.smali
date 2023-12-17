.class Lcom/android/fileexplorer/controller/IntentBuilder$7;
.super Ljava/lang/Object;
.source "IntentBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/controller/IntentBuilder;->viewArchive(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$7;->val$filePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$7;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$7;->val$filePath:Ljava/lang/String;

    const-string v0, "/FileExplorer/.safebox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$7;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$7;->val$filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateLockPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->operationReEncryptFile(Landroid/app/Activity;Ljava/io/File;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_31

    iget-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$7;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/controller/IntentBuilder$7$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/controller/IntentBuilder$7$1;-><init>(Lcom/android/fileexplorer/controller/IntentBuilder$7;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_31
    return-void
.end method
